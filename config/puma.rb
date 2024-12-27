# Define o número de threads mínimas e máximas que o Puma usará.
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count

# Porta usada pelo Puma. O Heroku define isso automaticamente através da variável PORT.
port ENV.fetch("PORT") { 3000 }

# Define o ambiente de execução. O padrão é "development", mas será configurado como "production" no Heroku.
environment ENV.fetch("RAILS_ENV") { "development" }

# Define o número de workers (processos do Puma). Use um valor adequado ao seu plano do Heroku.
workers ENV.fetch("WEB_CONCURRENCY") { 2 }

# Preload da aplicação antes de forkar os workers para usar menos memória (Copy On Write).
preload_app!

# Código para executar quando um worker é iniciado.
on_worker_boot do
  # Estabelece a conexão com o banco de dados.
  ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
end

# Permite reiniciar o Puma com o comando `rails restart`.
plugin :tmp_restart
