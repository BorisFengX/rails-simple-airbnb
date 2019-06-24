class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :short_name
      t.string :location_supplier
      t.string :location_dgcfs
      t.string :location_xmcfs
      t.string :location_yantian
      t.string :location_xiamen
      t.string :distance_dgcfs
      t.string :duration_dgcfs
      t.string :distance_yantian
      t.string :duration_yantian
      t.string :distance_xmcfs
      t.string :duration_xmcfs
      t.string :distance_xiamen
      t.string :duration_xiamen

      t.timestamps
    end
  end
end
