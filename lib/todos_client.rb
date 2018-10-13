require "todos_client/version"
require "todos_client/rest_client"

module TodosClient

    class CommandLineClient

        def run(method, id, body_file_name)
            if method.nil?
                self.help
                return
            end

            case method
            when "get", "GET"
                puts 'This is GET'
            end
            when "post", "POST"
                puts 'This is POST'
            end
            else
                self.unrecognized_method
            end
                
        end

        def help
            puts 'This is todos REST API client ' + VERSION +'!'
            puts
            puts 'usage:'
            puts '$ todo_client <method> body_file_name'
            puts '.'
        end

        def unrecognized_method
            puts 'Unrecognized REST method!'
            puts 
            puts 'methods:'
            puts 'GET, POST'
        end

    end
end

