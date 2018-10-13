require "todos_client/version"
require "todos_client/config"
require "todos_client/rest_client"
require "todos_client/file_helper"

module TodosClient

    class CommandLineClient

        def initialize
            @rest_client = TodosClient::RestClient.new(TodosClient::BASE_URL)
            @file_helper = TodosClient::FileHelper.new
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
                body = @file_helper.read(body_file_name)
                if body.nil?
                    self.not_able_to_read_file(body_file_name)
                    return
                end
                @rest_client.post(body)
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

        def not_able_to_read_file(file_name)
            puts "Not able to read filename \"#{file_name}\"!"
            puts
        end

    end
end

