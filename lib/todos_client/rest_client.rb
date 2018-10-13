require "todos_client/rest_client"

module TodosClient

    class RestClient

        def initialize(base_url)
            @base_url = base_url
        end

        def get(id)

            if id == '-'
                puts "GET #{@base_url}/todos"
            else
                puts "GET #{@base_url}/todos/#{id}"
            end
        end

        def post(body)
            puts "POST #{@base_url}/todos"
            puts "body: #{body}"
        end

    end

end