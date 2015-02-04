require 'debugger'
require 'net/http'
# require 'openssl'
require 'uri'
require 'json'
require 'ap'

# uri = URI.parse("https://yurusu-video.herokuapp.com/api/wazas?sort_by=Technique")
uri = URI.parse("http://localhost:3000/api/wazas?sort_by=Rank")

http = Net::HTTP.new(uri.host, uri.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(uri.request_uri)
request.add_field('Content-Type', 'application/json')

response = http.request(request)

data = JSON.parse(response.body)

ap data

# {
#   "sort_type" => "Rank",
#   "sort_keys" => [
#     [0] {
#       "sort_label" => "5th - Gokyu (White)",
#       "wazas"      => [
#         [0] {
#           "name"    => "Aihanmi Katatedori Ikkyo Omote",
#           "url"     => "http://localhost:3000/api/wazas/18",
#           "formats" => [
#             [0] {
#               "name" => "Aiki Toho",
#               "url"  => "http://localhost:3000/api/wazas/18/formats/8"
#             },
#             [1] {
#               "name" => "Tiado",
#               "url"  => "http://localhost:3000/api/wazas/18/formats/2"
#             }
#           ]
#         }
#       ]
#     }
#   ]
# }
