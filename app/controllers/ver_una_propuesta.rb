LaReConference::App.controllers :ver_una_propuesta do
  
  get :ver_propuesta, :map => '/ver_una_propuesta/:id_propuesta' do
  	@ver_una_conferencia_active = "active"
  	@propuesta = Propuesta.first(id: params[:id_propuesta])
    @evaluador = Account.new
    @comentario = Comentario.new
    @evaluadores_asignados = @propuesta.conferencia.accounts

    render 'ver_una_propuesta/index'
  end

  post :comentar, with: :id_conferencia do
    nombre_evaluador = params[:account][:evaluador]
    evaluador = Account.first(nombre: nombre_evaluador)
    contenido = params[:comentario][:contenido]

    comentario = Comentario.create(contenido: contenido, evaluador: evaluador)

    @propuesta.comentarios.push(comentario)

    if comentario.save
      flash[:success] = "El comentario ha sido ingresado exitosamente"
      redirect "ver_una_conferencia/#{conferencia.id}"
    else
      flash[:error] = "Error al intentar agregar un comentario"
      redirect "ver_una_conferencia/#{conferencia.id}"
    end

  end
end