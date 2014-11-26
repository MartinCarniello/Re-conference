LaReConference::App.controllers :crear_propuesta do
  
  get :crear_propuesta, :map => '/crear_propuesta' do
    @crear_propuesta_active = "active"
    @propuesta = Propuesta.new

    render 'crear_propuesta/index'
  end

  	post :create do

    	titulo = params[:propuesta][:titulo]
    	descripcion = params[:propuesta][:descripcion]

    	propuesta = Propuesta.create(titulo: titulo, descripcion: descripcion)

    	if propuesta.save
      		flash[:success] = 'Propuesta creada'
      		redirect 'ver_conferencias/'
    	else
      		flash.now[:error] = 'Error al intentar crear la propuesta'
      		redirect 'ver_conferencias/'
    	end
  	end
  
end