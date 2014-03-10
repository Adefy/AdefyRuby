require 'adefy/api/base_api'

module Adefy
  module Api
    class Editor < BaseApi

      # GET /api/v1/editor/:ad
      def ad(ad: nil, **options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/editor/#{ad}",
          query: opts(options).to_json
        )
      end

      # GET /api/v1/editor/exports/:folder/:file
      def exports(folder: nil, file: nil, **options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/editor/export/#{folder}/#{file}",
          query: opts(options).to_json
        )
      end

      # GET /api/v1/editor
      def get(**options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/editor",
          query: opts(options).to_json
        )
      end

      # POST /api/v1/editor
      def update(**options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/editor",
          query: opts().to_json,
          body: options
        )
      end

      # POST /api/v1/editor/export
      def export(**options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/editor/export",
          query: opts().to_json,
          body: options
        )
      end

    end
  end
end