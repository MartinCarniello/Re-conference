class Conferencia
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :titulo, String
  property :descripcion, String
  property :fecha, Date

  validates_presence_of :titulo
  validates_presence_of :descripcion
  validates_presence_of :fecha
end
