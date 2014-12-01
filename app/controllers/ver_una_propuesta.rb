LaReConference::App.controllers :ver_una_propuesta do
  
  get :ver_propuesta, :map => '/ver_una_propuesta/:id_propuesta' do
  	@ver_una_conferencia_active = "active"
  	@propuesta = Propuesta.first(id: params[:id_propuesta])
    @evaluador = Account.new
    @comentario = Comentario.new
    @evaluadores_asignados = @propuesta.conferencia.accounts

    @comentarios = @propuesta.comentarios

    render 'ver_una_propuesta/index'
  end

  post :comentar, with: :id_propuesta do
    evaluador = usuario_actual
    contenido = params[:comentario][:contenido]
    propuesta = Propuesta.first(id: params[:id_propuesta])
    comentario = Comentario.create(contenido: contenido, account: evaluador)

    propuesta.comentarios.push(comentario)

    if comentario.save
      flash[:success] = "El comentario ha sido ingresado exitosamente"
      redirect "ver_una_propuesta/#{propuesta.id}"
    else
      flash[:danger] = "Error al intentar agregar un comentario"
      redirect "ver_una_propuesta/#{propuesta.id}"
    end

  end
end