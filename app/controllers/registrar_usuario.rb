LaReConference::App.controllers :registrar_usuario do
  
  get :registrar_usuario, :map => '/registrar_usuario' do
    @usuario = Account.new
    render 'registrar_usuario/index'
  end

  post :create do
    
      nombre = params[:account][:nombre]
      email = params[:account][:email]
      password = params[:account][:password]
      confirme_password = params[:account][:confirme_password]
      rol = params[:account][:rol_de_usuario]

      if !Account.first(nombre: nombre)

        if (password == confirme_password)

          if Account.validate_password(password)

            @usuario = Account.new(nombre: nombre, password: password, email: email, role: rol)

            (tipo_flash, mensaje) = (@usuario.save ? [:success, 'Usuario creado'] : [:danger, 'Todos los campos son obligatorios, asegurese de que su password incluya al menos 1 mayuscula, 1 minuscula y sea de al menos 8 caracteres'])

          else
            (tipo_flash, mensaje) = [:danger, 'La clave no cumple los requisitos']
          end

        else
          (tipo_flash, mensaje) = [:danger, 'Las claves ingresadas no coinciden']
        end
      else
        (tipo_flash, mensaje) = [:danger, 'El nombre de usuario ya existe, elije otro']
      end

      flash[tipo_flash] = mensaje
      redirect '/'
  end
  
end