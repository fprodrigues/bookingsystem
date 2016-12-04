class CreateCalendars < ActiveRecord::Migration[5.0]
  def change
    create_table :calendars do |t|
      t.datetime :inicio
      t.datetime :fim
      t.datetime :dia
      t.integer :numero
      t.string :nome
      t.string :funcao

      t.timestamps
    end
  end
end
