class AddTitleToCalendar < ActiveRecord::Migration[5.0]
  def change
    add_column :calendars, :title, :string
    add_column :calendars, :date_range, :string
    add_column :calendars, :start, :string
    add_column :calendars, :end, :string
  end
end
