class CreateEventGuests < ActiveRecord::Migration
  def self.up
    create_table :event_guests do |t|
      t.references :user
      t.references :event
      t.string :rsvp

      t.timestamps
    end
  end

  def self.down
    drop_table :event_guests
  end
end
