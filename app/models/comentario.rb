class Comentario
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial, :unique => true
  property :contenido, String, required: true

  belongs_to :account
end
