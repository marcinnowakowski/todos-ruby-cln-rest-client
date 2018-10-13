require "todos_client/version"
require "todos_client/config"
require "todos_client/rest_client"

module TodosClient

    class CommandLineClient

        def initialize
            @rest_client = TodosClient::RestClient.new(TodosClient::BASE_URL)
        end

        def run(method, id, body_file_name)
            if method.nil?
                self.help
                return
            end

            case method
            when "get", "GET"
                @rest_client.get(id)
            when "post", "POST"
                @rest_client.post(body_file_name)
            else
                self.unrecognized_method
            end
                
        end

        def help
            puts "This is todos REST API client #{TodosClient::VERSION}!"
            puts 'usage:'
            puts '$ todo_client <method> <id> <body_file_name>'
            puts 
        end

        def unrecognized_method
            puts 'Unrecognized REST method!'
            puts 'methods:'
            puts 'GET, POST'
            puts
        end

    end
end

