class Usuario
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :nombre, String
  property :password, String
  property :email, String
  property :rol, String

  def pass_segura?
    true
  end

  def self.validate_password(password)
    password[/[[:lower:]]/] and password[/[[:upper:]]/] and password[/\d/] and (password.length >= 8)
  end

  def password=(password)
    super ::BCrypt::Password.create(password)
  end

  def password_igual_a(password)
    ::BCrypt::Password.new(self.password) == password
  end

  def self.autenticar(nombre, password)
    usuario = Usuario.first(nombre: nombre)
    return nil if !usuario
    usuario.password_igual_a(password) ? usuario : nil
  end
  
end
