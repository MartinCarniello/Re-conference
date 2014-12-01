class Account
  include DataMapper::Resource

  # Available roles
  ORGANIZADOR = 'organizador'
  EVALUADOR = 'evaluador'
  ORADOR = 'orador'

  # property <name>, <type>
  property :id, Serial, unique: true
  property :nombre, String
  property :password, String
  property :email, String
  property :role, String

  has n, :conferencias, :through => Resource

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
    usuario = Account.first(nombre: nombre)
    return nil if !usuario
    usuario.password_igual_a(password) ? usuario : nil
  end

  def self.find_by_id(id)
    get(id) rescue nil
  end

  def self.find_by_roles(role)
    self.all(role: role)
  end
  
end
