# todos_client/file_helper

module TodosClient

    class FileHelper

        def read(file_name)
            file = File.open(name)
            contents = ""
            file.each {|line|
                contents << line
            }
            if contents == ""
                return nil
            else
                return contents
            else
        end
    end
end