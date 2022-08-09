class HealthDeclarationFormsController < ApplicationController

    def index 
        @health_declaration_form = HealthDeclarationForm.all
    end

    def new
        @health_declaration_form = HealthDeclarationForm.new
    end
    
    def create
        @health_declaration_form = HealthDeclarationForm.new(health_declaration_form_params)
    
        if @health_declaration_form.save
            flash[:notice]="You have successfully submitted the form"
          redirect_to @health_declaration_form
        else
          render :new, status: :unprocessable_entity
        end
    end

      private
        def health_declaration_form_params
        params.require(:health_declaration_form).permit(:name, :symptom, :suspect_contact, :temperature)
        end

end
