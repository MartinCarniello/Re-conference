migration 3, :create_propuesta do
  up do
    create_table :propuesta do
      column :id, Integer, :serial => true
      column :titulo, DataMapper::Property::String, :length => 255
      column :descripcion, DataMapper::Property::String, :length => 255
    end
  end

  down do
    drop_table :propuesta
  end
end
