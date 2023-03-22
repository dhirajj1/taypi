module Types
  class QueryType < Types::BaseObject

    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField
    include Queries::ItemModule
    include Queries::ArtistModule

  end
end
