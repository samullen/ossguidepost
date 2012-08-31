module GithubAuth
  def self.auth 
    {
      "provider" => "github",
      "uid" => "1234567890",
      "info" => {
        "first_name" => "User",
        "last_name" => "Name",
        "email" => "user@example.com",
        "phone" => "1231231231",
        "description" => "Lorem ipsum dolor",
        "image" => "http://example.com/example_image.jpg",
        "urls" => {
          "Blog" => "http://blog.example.com",
          "Example" => "http://example.com",
        },
      },
      "credentials" => {
        "token" => "987987987987"
      },
      "extra" => {
        "raw_info" => {
          "birthday" => "08/12/1973",
          "hometown" => {
            "name" => "Gotham, State"
          },
          "location" => {
            "name" => "Smallville, Kansas"
          },
          "education" => [
            {
              "school" => {
                "id" => "110132102349401",
                "name" => "Smallville Senior High School"
              },
              "year" => {
                "id" => "145037408840681",
                "name" => "1991"
              },
              "type" => "High School"
            },
            {
              "school" => {
                "id" => "100562024445",
                "name" => "John Galt University"
              },
              "year" => {
                "id" => "137616982934053",
                "name" => "2006"
              },
              "concentration" => [
                {
                  "id" => "104096132959364",
                  "name" => "Computer Science"
                },
                {
                  "id" => "193463144017042",
                  "name" => "Computer Technology"
                }
              ],
              "type" => "College"
            }
          ]
        }
      }
    }
  end
end
