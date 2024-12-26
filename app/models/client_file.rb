class ClientFile < ApplicationRecord
  has_many :clients, dependent: :destroy

  accepts_nested_attributes_for :clients, allow_destroy: true
  validates :month, :year, presence: true

  mount_uploader :file, CsvUploader

  def build_from_csv
    require 'csv'

    self.month = 13
    url = file.path
    csv = Roo::CSV.new(url, csv_options: {encoding: Encoding::ISO_8859_1})
    csv.default_sheet = csv.sheets[0]
    csv.each do |row|
      clients.build(
        name: row[0],
        address: row[1],
        city: row[2],
        state: row[3],
        zip_code: row[4],
        phone: row[5],
        cpf: row[6]
      )
    end
  end

  def self.ransackable_attributes(auth_object = nil)
    ["month", "year"]
  end
end
