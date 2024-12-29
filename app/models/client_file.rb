class ClientFile < ApplicationRecord
  has_one_attached :file
  has_many :clients, dependent: :destroy

  accepts_nested_attributes_for :clients, allow_destroy: true

  validates :month, :year, presence: true

  def build_from_csv
    require 'csv'
    
    raise "File not attached" unless file.attached?
    csv_content = file.download
    # Use o conteúdo CSV
    csv = Roo::CSV.new(StringIO.new(csv_content), csv_options: {encoding: Encoding::ISO_8859_1})
    csv.default_sheet = csv.sheets[0]

    # Processa cada linha do CSV e cria um cliente
    csv.each do |row|
      # Adiciona um novo cliente com os dados extraídos do CSV
      self.clients.build(
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
