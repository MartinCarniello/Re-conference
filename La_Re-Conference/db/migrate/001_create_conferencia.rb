migration 1, :create_conferencia do
  up do
    create_table :conferencia do
      column :id, Integer, :serial => true
      column :titulo, DataMapper::Property::String, :length => 255
      column :descripcion, DataMapper::Property::String, :length => 255
      column :fecha, DataMapper::Property::Date
    end
  end

  down do
    drop_table :conferencia
  end
end
