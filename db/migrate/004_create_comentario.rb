migration 3, :create_comentario do
  up do
    create_table :comentario do
      column :id, Integer, :serial => true
      column :contenido, DataMapper::Property::String, :length => 255
     end
  end

  down do
    drop_table :comentario
  end
end
