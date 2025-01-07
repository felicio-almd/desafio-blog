class UploadsController < ApplicationController
    before_action :authenticate_user!
  
    def new
    end
  
    def create
      if params[:file].present?
        file_path = store_temp_file(params[:file])
        FileProcessorWorker.perform_async(file_path)
        redirect_to root_path, notice: 'Arquivo enviado. Os posts serão processados em breve.'
      else
        redirect_to new_upload_path, alert: 'Por favor, selecione um arquivo.'
      end
    end
  
    private
  
    def store_temp_file(file)
      temp_file = File.join(Rails.root, 'tmp', "upload_#{Time.now.to_i}_#{file.original_filename}")
      FileUtils.cp(file.path, temp_file)
      temp_file
    end
  end