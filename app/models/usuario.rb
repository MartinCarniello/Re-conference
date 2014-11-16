class Usuario

	include DataMapper::Resource

	  property :id, Serial
  	property :nombre, String, required: true
 	  property :password, String, required: true
  	property :email, String, required: true
  	has n, :conferencias

  	#validates_format_of   :email,    :with => :email_address
  	#validates_with_method :pass_segura?

  	def pass_segura?
    	true
  	end

  	def password= (password)
    	if password[/[[:lower:]]/] and password[/[[:upper:]]/] and
       		password[/\d/] and (password.length >= 8)
      		self.password = ::BCrypt::Password.create(password)
    	end
  	end
  	

end

#class Organizador < Usuario
#end

#class Evaluador < Usuario
#end