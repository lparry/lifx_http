require_relative '../api'

module LifxHttp
  module Api

    class WithDefaultSelector

      attr_reader :selector

      def initialize(selector)
        @selector = selector
      end

      private

      def method_missing(method_name, *args)
        if ::LifxHttp::Api.respond_to? method_name
          ::LifxHttp::Api.public_send(method_name, selector, *args)
        else
          raise
        end
      end

      def make_request(method_name, *args)
        Api.public_send(method_name, selector, *args)
      end
    end

  end
end
