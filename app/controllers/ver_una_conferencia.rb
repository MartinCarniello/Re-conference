LaReConference::App.controllers :ver_una_conferencia do
  
  get :ver_conferencia, :map => '/ver_una_conferencia/:id_conferencia' do
  	@ver_una_conferencia_active = "active"
  	@conferencia = Conferencia.first(id: params[:id_conferencia])
    @evaluador = Account.new
    @evaluadores_asignados = @conferencia.accounts
    @propuestas = @conferencia.propuestas

    @evaluadores_select = Account.find_by_roles("evaluador").inject([]) do |array, evaluador|
      array.push(evaluador.nombre) if !@evaluadores_asignados.include?(evaluador)
      array
    end

    render 'ver_una_conferencia/index'
  end

  post :asignar_evaluador, with: :id_conferencia do
    nombre_evaluador = params[:account][:evaluador]
    id_conferencia = params[:id_conferencia]
    conferencia = Conferencia.first(id: id_conferencia)
    evaluador = Account.first(nombre: nombre_evaluador)
    
    conferencia.accounts.push(evaluador)
    evaluador.conferencias.push(conferencia)

    if conferencia.save
      flash[:success] = "El evaluador ha sido asignado a la conferencia"
      redirect "ver_una_conferencia/#{conferencia.id}"
    else
      flash[:danger] = "Ha habido un error para guardar la conferencia o el evaluador"
      redirect "ver_una_conferencia/#{conferencia.id}"
    end
  end
  
end