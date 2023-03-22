module Queries
  module ArtistModule
    extend ActiveSupport::Concern

    included do
      field :artists, [Types::ArtistType], null: true, description: "Return a list of artist"
      field :artist, Types::ArtistType, null: true do
        argument :id, Integer, required: true
        
      end

      def artists
        Artist.all
      end

      def artist(id:)
        Artist.find_by(id: id)
      end
      
    end
  end
end