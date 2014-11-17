# Helper methods defined here can be accessed in any controller or view in the application

module LaReConference
  class App
    module HomeHelper
    	def usuario_actual=(usuario)
			@usuario_actual = usuario
		end

		def usuario_actual
			@usuario_actual ||= Usuario.first(id: session[:usuario_actual])
		end
		
		def login(usuario)
			session[:usuario_actual] = usuario.id
			self.usuario_actual = usuario
		end

		def logout
			session.delete(:usuario_actual)
		end

		def logueado?
			!usuario_actual.nil?
		end
    end

    helpers HomeHelper
  end
end
