# todos_client/file_helper

module TodosClient

    class FileHelper

        def read(file_name)
            begin
                file = File.open(file_name)
            rescue
                return nil
            end
            contents = ""
            file.each {|line|
                contents << line
            }
            if contents == ""
                return nil
            end
            
            return contents
        end
    end
end