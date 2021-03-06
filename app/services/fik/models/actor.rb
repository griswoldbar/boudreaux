module Fik
  module Models
    class Actor
      attr_reader :name, :id, :starting_room, :inventory
    
      def initialize(attrs)
        @name = attrs["name"]
        @id = attrs["id"]
        @starting_room = attrs["starting_room"]
        @inventory = []
      end

      def remove_item(item_id)
        @inventory -= [item_id]
      end
      
      def add_item(item_id)
        @inventory << item_id
      end
    end
  end
end