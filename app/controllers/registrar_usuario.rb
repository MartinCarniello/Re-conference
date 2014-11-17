LaReConference::App.controllers :registrar_usuario do
  
  get :registrar_usuario, :map => '/registrar_usuario' do
    @usuario = Usuario.new
    render 'registrar_usuario/index'
  end

  post :create do
    
      nombre = params[:usuario][:nombre]
      email = params[:usuario][:email]
      password = params[:usuario][:password]
      confirme_password = params[:usuario][:confirme_password]
      tipo_de_usuario = params[:usuario][:tipo_de_usuario]

      if !Usuario.first(nombre: nombre)

        if (password == confirme_password)

          if Usuario.validate_password(password)

            # if tipo_de_usuario == "Organizador"
            #   @usuario = Organizador.new(nombre: nombre, password: password, email: email)
            # else
            #   @usuario = Evaluador.new(nombre: nombre, password: password, email: email)
            # end

            @usuario = Usuario.new(nombre: nombre, password: password, email: email)

            (tipo_flash, mensaje) = (@usuario.save ? [:success, 'Usuario creado'] : [:error, 'Todos los campos son obligatorios, asegurese de que su password incluya al menos 1 mayuscula, 1 minuscula y sea de al menos 8 caracteres'])

          else
            (tipo_flash, mensaje) = [:error, 'La clave no cumple los requisitos']
          end

        else
          (tipo_flash, mensaje) = [:error, 'Las claves ingresadas no coinciden']
        end
      else
        (tipo_flash, mensaje) = [:error, 'El nombre de usuario ya existe, elije otro']
      end

      flash[tipo_flash] = mensaje
      redirect '/'
  end
  
end