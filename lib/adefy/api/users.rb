require 'adefy/api/base_api'

module Adefy
  module Api
    class Users < BaseApi

      ###
      # GET /login
      # GET /register
      # GET /signup
      # GET /logout
      ###

      # POST /api/v1/login
      def login(username: nil, password: nil)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/login",
          query: opts(),
          body: { username: username, password: password }.to_json
        )
      end

      # POST /api/v1/register
      def register(options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/register",
          query: opts(),
          body: options.to_json
        )
      end

      # DELETE /api/v1/user/:id
      def delete(id: nil)
        request(
          expects: 200,
          method: :delete,
          path: "/api/v1/user/#{id}",
          body: opts(options).to_json
        )
      end

      # GET /api/v1/user/get
      def get(options={})
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/user/get",
          query: opts(options)
        )
      end

      # GET /api/v1/user/all
      def all(options={})
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/users",
          query: opts(options)
        )
      end

      # GET /api/v1/user
      def me(options={})
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/user",
          query: opts(options)
        )
      end

      # PUT /api/v1/user
      def update(options={})
        request(
          expects: 200,
          method: :put,
          path: "/api/v1/user",
          query: opts(options)
        )
      end

      # GET /api/v1/user/transactions
      def transactions(options={})
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/user/transactions",
          query: opts(options)
        )
      end

      # POST /api/v1/user/deposit/:amount
      # PUT /api/v1/user/deposit/:token/:action

    end
  end
end