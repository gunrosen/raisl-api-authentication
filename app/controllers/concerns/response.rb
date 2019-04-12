module Response
    def json_response(object, st = :ok)
        render json: object, status: st
    end
end