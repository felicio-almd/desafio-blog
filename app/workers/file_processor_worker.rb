class FileProcessorWorker
    include Sidekiq::Worker
    sidekiq_options retry: false  # Adicione esta linha para debug
  
    def perform(file_path)
      Rails.logger.info "Iniciando processamento do arquivo: #{file_path}"
      
      File.readlines(file_path).each do |line|
        Rails.logger.info "Processando linha: #{line}"
        title, body = line.strip.split('|')
        BlogPost.create!(title: title, body: body)
      rescue StandardError => e
        Rails.logger.error "Erro ao processar linha: #{line}. Erro: #{e.message}"
      end
    end
  end