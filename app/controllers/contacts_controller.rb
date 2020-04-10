class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(params[:contact])
        @contact.request = request
        if @contact.deliver
            flash.now[:error] = nil
            redirect_to root_path, notice: "Hey! Thank you for contacting me. We'll talk soon!"
        else
            redirect_to root_path, notice: "Oops! Please try again."
        end
    end
end
