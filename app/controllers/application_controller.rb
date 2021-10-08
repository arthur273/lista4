class ApplicationController < ActionController::API
    def authentication_failure
        render json: {message: 'Nao conseguimos efetuar seu login'}, status: :unauthorized
    end
end
