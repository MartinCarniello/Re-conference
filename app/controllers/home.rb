LaReConference::App.controllers :home do

  get :index, :map => '/' do
    @home_active = "active"
    @crear_usuario_active = "active"
    @usuario = Account.new
    render 'home/index'
  end

  post :login do
    nombre = params[:account][:nombre]
    password = params[:account][:password]

    @usuario = Account.autenticar(nombre, password)
    
    if(!@usuario)
      flash[:error] = 'Nombre de usuario y/o contrasenia invalida'
      redirect '/'
    else
      login @usuario
      flash[:success] = "El usuario #{usuario_actual.nombre} ha sido logueado correctamente"
      redirect '/'
    end
  end

  get :logout, :map => '/logout' do 
    logout
    redirect '/'          
  end

end
