require 'adefy/api/base_api'

module Adefy
  module Api
    class Editor < BaseApi

      # GET /api/v1/editor/:ad
      def ad(ad: nil, **options)
      end

      # GET /api/v1/editor/exports/:folder/:file
      def exports(**options)
      end

      # GET /api/v1/editor
      def get(**options)
      end

      # POST /api/v1/editor
      def update(**options)
      end

      # POST /api/v1/editor/export
      def export(**options)
      end

    end
  end
end