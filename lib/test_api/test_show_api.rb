require 'debugger'
require 'net/http'
require 'uri'
require 'json'
require 'ap'

uri = URI.parse("http://localhost:3000/api/wazas/18")
# uri = URI.parse("http://yurusu-video.herokuapp.com/api/wazas/18")

http = Net::HTTP.new(uri.host, uri.port)

request = Net::HTTP::Get.new(uri.request_uri)
request.add_field('Content-Type', 'application/json')

response = http.request(request)

data = JSON.parse(response.body)

ap data

# {
#   "waza" => {
#     "id"        => 18,
#     "name"      => "Aihanmi Katatedori Ikkyo Omote",
#     "stance"    => {
#       "name"        => "Aihanmi",
#       "description" => "Mirroring stance (i.e. uke and nage have same foot forward)"
#     },
#     "attack"    => {
#       "name"        => "Katatedori",
#       "description" => "One hand grip on one wrist"
#     },
#     "technique" => {
#       "name"        => "Ikkyo",
#       "description" => "Wrist technique, generally palm down"
#     },
#     "direction" => {
#       "name"        => "Omote",
#       "description" => "Finishing move is across the front"
#     },
#     "formats"   => [
#       [0] {
#         "name"    => "Aiki Toho",
#         "rank"    => "5th - Gokyu (White)",
#         "on_test" => true,
#         "videos"  => [
#           [0] {
#             "name"         => "Ukenagashi",
#             "youtube_code" => "bwYeN-OrFuU",
#             "copyright"    => "Aikido Center of San Antonio, Copyright 2014",
#             "kata_type"    => "Base",
#             "kata_number"  => 2,
#             "senesi"       => "John Bollinger"
#           },
#           [1] {
#             "name"         => "Ai Hanmi Kata Dori Ikkyo Omote Variation",
#             "youtube_code" => "n52w3Oc36Sk",
#             "copyright"    => "Aikido Center of San Antonio, Copyright 2014",
#             "kata_type"    => "Supplemental",
#             "senesi"       => "John Bollinger"
#           }
#         ]
#       },
#       [1] {
#         "name"    => "Tiado",
#         "rank"    => "4th - Yonkyu (White)",
#         "on_test" => true,
#         "videos"  => [
#           [0] {
#             "name"         => "Ai Hanmi Katate Dori Ikkyo Omote",
#             "youtube_code" => "n/a",
#             "copyright"    => "Aikido Center of San Antonio, Copyright 2014",
#             "senesi"       => "John Bollinger"
#           }
#         ]
#       }
#     ]
#   }
# }
