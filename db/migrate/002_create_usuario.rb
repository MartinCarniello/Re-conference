migration 1, :create_usuario do
  up do
    create_table :usuario do
      column :id, Integer, :serial => true
      column :nombre, DataMapper::Property::String, :length => 255
      column :email, DataMapper::Property::String, :length => 255
      column :password, DataMapper::Property::String, :length => 255
    end
  end

  down do
    drop_table :usuario
  end
end
