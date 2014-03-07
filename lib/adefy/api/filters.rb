require 'adefy/api/base_api'

module Adefy
  module Api
    class Filters < BaseApi

      # GET /api/v1/filters/countries
      def countries(**options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/filters/countries",
          query: opts(options).to_json
        )
      end

      # GET /api/v1/filters/categories
      def catergories(**options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/filters/categories",
          query: opts(options).to_json
        )
      end

      # GET /api/v1/filters/devices
      def devices(**options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/filters/devices",
          query: opts(options).to_json
        )
      end

      # GET /api/v1/filters/manufacturers
      def manufacturers(**options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/filters/manufacturers",
          query: opts(options).to_json
        )
      end

    end
  end
end