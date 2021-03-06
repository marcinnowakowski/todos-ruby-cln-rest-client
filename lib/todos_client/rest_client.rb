# todos_client/rest_client
require 'httparty'

module TodosClient

    class RestClient

        include HTTParty

        def initialize(base_url)
            @base_url = base_url
        end

        def get(id)

            if id == '-'
                puts self.class.get("#{@base_url}/todos") 
            else
                puts self.class.get("#{@base_url}/todos/#{id}")
            end
        end

        def post(json_body)
            body = JSON.parse(json_body)
            puts self.class.post("#{@base_url}/todos",
                :query => body) 
        end

    end

end