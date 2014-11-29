class Conferencia
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial, :unique => true
  property :titulo, String, required: true
  property :descripcion, String, required: true
  property :fecha, Date, required: true

  has n, :accounts, :through => Resource
  has n, :propuestas, :through => Resource

end
