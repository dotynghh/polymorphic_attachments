module PolymorphicAttachments
  class PolymorphicAttachmentsController < PolymorphicAttachments::ApplicationController

    def create
      attachment = PolymorphicAttachment.new(polymorphic_attachment_params)

      respond_to do |format|
        if attachment.save
          format.json { render json: attachment.to_jq_upload.to_json }
        else
          p attachment.errors
          p '----=-=-=-='
          format.json { render json: {result: 'error'} }
        end
      end

    end

    def download_file
      @attachment = PolymorphicAttachment.find(params[:id])

      send_file(@attachment.attachment_file.file.path)

    end

    private

    def polymorphic_attachment_params
      params.require(:polymorphic_attachment).permit(:attachment_file)
    end

  end
end
