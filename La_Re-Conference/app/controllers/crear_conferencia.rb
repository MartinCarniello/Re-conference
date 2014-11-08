LaReConference::App.controllers :crear_conferencia do
  
  get :crear_conferencia, :map => '/crear_conferencia' do
    render 'crear_conferencia/index'
  end
  
end