class Conferencia
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :titulo, String, required: true
  property :descripcion, String, required: true
  property :fecha, Date, required: true

end
