class CreateTodotasks < ActiveRecord::Migration[7.0]
  def change
    create_table :todotasks do |t|
      t.text :task
      t.text :status

      t.timestamps
    end
  end
end
