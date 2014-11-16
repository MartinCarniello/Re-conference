LaReConference::App.controllers :home do
  
  #get :index, :map => '/' do
  	
   # render 'home/index'
  #end

  get :index, :map => '/' do
    @home_active = "active"
    @crear_usuario_active = "active"
    @usuario = Usuario.new
    render 'home/index'
  end

  post :create do
  	
      #nombre = params[:usuario][:nombre]
      #email = params[:usuario][:email]
      #password = params[:usuario][:password]

      confirme_password = params[:usuario][:confirme_password]
      params[:usuario].reject!{|k,v| k == 'confirme_password'}

      if (params[:usuario][:password] == confirme_password)

        @usuario = Usuario.new(params[:usuario])
        #usuario = Usuario.create(nombre: nombre, email: email, password: password)


        if @usuario.save

          
          flash[:success] = 'Usuario creado'
          redirect 'home/index'

        else

          flash.now[:error] = 'Todos los campos son obligatorios, asegurese de que su password incluya al menos 1 mayuscula, 1 minuscula y sea de al menos 8 caracteres.'
          render 'home/index'

        end

      else
        @usuario = Usuario.new (params[:usuario])
        flash.now[:error] = 'Las claves no coinciden!'
        render 'home/index'          
      end
  end


end
