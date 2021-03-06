require 'virtus'

require_relative 'header'
require_relative 'body'

module Archivist
  module Model
    class QueryResponse
      include Virtus.model

      attribute :header, Header
      attribute :body, Body

      def each(&block)
        body.docs.each(&block)
      end
    end
  end
end