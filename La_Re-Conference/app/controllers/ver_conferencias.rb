LaReConference::App.controllers :ver_conferencias do
  
  get :ver_conferencias, :map => '/ver_conferencias' do
    @conferencias = Conferencia.all.reverse
    render 'ver_conferencias/index'
  end
  

end