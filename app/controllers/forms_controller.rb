class FormsController < ApplicationController
  def index
    @forms = Form.all
  end

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      redirect_to @form
    else
      render 'new'
  end
end

def show
  @form = Form.find(params[:id])
end

def update
  @form = Form.find(params[:id])
  if @form.update(form_params)
    redirect_to @form
  else
    render 'edit'
  end
end

def destroy
  @form = Form.find(params[:id])
  @form.destroy
  redirect_to forms_path
  end

  def edit
    @form = Form.find(params[:id])
  end

  private

  def form_params
    params.require(:form).permit(:email, :text)
  end
end
