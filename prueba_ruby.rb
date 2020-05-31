def request1(url1,key1)
    require "uri"
    require "net/http"
    require "json"

    url = URI("#{url1}#{key1}")

    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)

    response = https.request(request)
    body=JSON.parse response.read_body
end

#llamado metodo request
body=request1("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=20&api_key=", "fABbc5ieelAHGJod3MfLZCkml1fUviIQ2L3XLJaj")


def build_web_page(body)
    #puts body["photos"][0]["img_src"]
    imgs=[]
        30.times do |x|
            imgs<< body["photos"][x]["img_src"]
        end

        File.open("index.html", "w") do |file|
            file.write(
        
    '<!DOCTYPE html>
    <html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--Bootstrap-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <!--Fontawesome-->
        <script src="https://kit.fontawesome.com/22ae6d249f.js" crossorigin="anonymous"></script>
        <!--google fonts-->
        
        <!--CSS styles-->
        <link rel="stylesheet" href="style.css">



        <title>Prueba Introduccion a Ruby</title>
    </head>
    <body>

    <div class="container">
        <h1 class="title text-center m-4">Fotos de Mars Rovers <small class="text-muted">Extraido API NASA</small></h1>
        <div class="row">')

        lines=imgs.length
        lines.times do |i|
            file.write("<div class='col-md-4 imagen'><img src='#{imgs[i]}' class='img-fluid'></div>\n")
            end

    file.write(   '</div>
    </div>
        

        <!--Scripts Bootstrap-->
    <script  src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
    </html>'
                        
        
    ) 

        
        end

end

build_web_page(body)

def photos_count(val)

end

photos_count(body)