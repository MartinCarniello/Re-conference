class Propuesta
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial, :unique => true
  property :titulo, String, required: true
  property :descripcion, String, required: true

  has n, :comentarios
  belongs_to :conferencia
end
