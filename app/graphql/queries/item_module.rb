module Queries
  module ItemModule
    extend ActiveSupport::Concern

    included do
      field :items, [Types::ItemType], null: true, description: "Return a list of items"
      field :item, Types::ItemType, null: true do
        argument :id, Integer, required: true
        
      end

      def items
        Item.all
      end

      def item(id:)
        Item.find_by(id: id)
      end
      
    end
  end
end