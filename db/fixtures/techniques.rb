# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-08-25 13:33:16 +0000
# Seeding AttackHeight
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
AttackHeight.seed(:id,
  {:id=>2, :name=>"Jodan", :short_description=>"upper height", :description=>"Upper level, neck and above"},
  {:id=>3, :name=>"Chudan", :short_description=>"torso height", :description=>"Middle level, torso area"},
  {:id=>4, :name=>"Gedan", :short_description=>"lower height", :description=>"Lower level, groin and below"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-08-25 13:33:16 +0000
# Seeding Format
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Format.seed(:id,
  {:id=>2, :name=>"Tiado", :description=>"Way of the hand", :short_description=>"hand", :position=>1},
  {:id=>3, :name=>"Ken no Tebiki", :description=>"With sword guidance (one person with boken)", :short_description=>"nage with sword", :position=>4},
  {:id=>4, :name=>"Jo no Tebiki", :description=>"With jo guidance (one person with jo)", :short_description=>"nage with jo", :position=>3},
  {:id=>5, :name=>"Ken ti Ken", :description=>"Sword vs Sword (bokens)", :short_description=>"sword vs sword", :position=>6},
  {:id=>6, :name=>"Ken ti Jo", :description=>"Sword(boken) vs Jo", :short_description=>"sword vs jo", :position=>5},
  {:id=>7, :name=>"Suburi", :description=>"A single movement using the ken or jo, done as a solo practice", :short_description=>"weapon (non-Iaido) kata", :position=>7},
  {:id=>8, :name=>"Aiki Toho", :description=>"Japanese swordsmanship", :short_description=>"Iaido", :position=>2},
  {:id=>9, :name=>"Oyo Waza", :description=>"Advanced version or application of the technique", :short_description=>"Advanced", :position=>8}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-08-25 13:33:16 +0000
# Seeding Stance
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Stance.seed(:id,
  {:id=>2, :name=>"Gyaku Hanmi", :description=>"Opposing stance (i.e. uke right foot forward and nage left foot forward)", :short_description=>"Opposing"},
  {:id=>3, :name=>"Ai Hanmi", :description=>"Mirroring stance (i.e. uke and nage have same foot forward)", :short_description=>"Mirroring"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-08-25 13:33:16 +0000
# Seeding Waza
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Waza.seed(:id,
  {:id=>2, :name=>"Tachi Waza", :description=>"Standing technique", :short_description=>nil},
  {:id=>3, :name=>"Suwari Waza", :description=>"Technique where both uke and nage are seated", :short_description=>nil},
  {:id=>4, :name=>"Hanmi Hadachi Waza", :description=>"Technique where one person standing and one person sitting", :short_description=>nil}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-08-25 13:33:16 +0000
# Seeding Direction
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Direction.seed(:id,
  {:id=>2, :name=>"Omote", :description=>"Entering in the front, throw is across the front", :short_description=>"front"},
  {:id=>3, :name=>"Ura", :description=>"Entering in the back, throw is across the back", :short_description=>"back"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-08-25 13:33:16 +0000
# Seeding Rank
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Rank.seed(:id,
  {:id=>2, :name=>"1st", :description=>"Ikkyu", :belt=>"White", :position=>5, :short_description=>nil},
  {:id=>3, :name=>"2nd", :description=>"Nikyu", :belt=>"White", :position=>4, :short_description=>nil},
  {:id=>4, :name=>"3rd", :description=>"Sankyu", :belt=>"White", :position=>3, :short_description=>nil},
  {:id=>5, :name=>"4th", :description=>"Yonkyu", :belt=>"White", :position=>2, :short_description=>nil},
  {:id=>6, :name=>"5th", :description=>"Gokyu", :belt=>"White", :position=>1, :short_description=>nil},
  {:id=>7, :name=>"1st", :description=>"Shodan", :belt=>"Black", :position=>6, :short_description=>nil},
  {:id=>8, :name=>"2nd", :description=>"Nidan", :belt=>"Black", :position=>7, :short_description=>nil},
  {:id=>9, :name=>"3rd", :description=>"Sandan", :belt=>"Black", :position=>8, :short_description=>nil},
  {:id=>10, :name=>"Miscellaneous", :description=>"Non-ranked", :belt=>nil, :position=>99, :short_description=>nil}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-08-25 13:33:16 +0000
# Seeding Attack
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Attack.seed(:id,
  {:id=>2, :name=>"Katate Dori", :description=>"One hand grip on one wrist", :short_description=>nil},
  {:id=>3, :name=>"Ryote Dori", :description=>"Two hand grip on two writs", :short_description=>nil},
  {:id=>4, :name=>"Shomen Uchi", :description=>"Vertical strike to head with hand blade", :short_description=>nil},
  {:id=>5, :name=>"Yokomen Uchi", :description=>"Diagonal strike to neck or temple with hand blade", :short_description=>nil},
  {:id=>6, :name=>"Morote Dori", :description=>"Two hand grip on one wrist (Ryote Kata Dori)", :short_description=>nil},
  {:id=>7, :name=>"Kata Dori", :description=>"One hand grip on shoulder", :short_description=>nil},
  {:id=>8, :name=>"Ushiro Ryote Dori", :description=>"Ryote Dori from behind", :short_description=>nil},
  {:id=>9, :name=>"Kata Dori Menuchi", :description=>"Shoulder grab with head strike (shomen or tsuki", :short_description=>nil},
  {:id=>10, :name=>"Tuski", :description=>"Straight punch", :short_description=>""},
  {:id=>11, :name=>"Mune Dori", :description=>"One hand grip on lapel (Muna Mochi)", :short_description=>nil},
  {:id=>12, :name=>"Sode Dori", :description=>"One hand grip on sleeve", :short_description=>nil},
  {:id=>14, :name=>"Katate Dori Kubishime", :description=>"One hand grip on wrist and one hand choke from behind", :short_description=>nil},
  {:id=>15, :name=>"Ryokata Dori", :description=>"One hand grip on each shoulder", :short_description=>nil},
  {:id=>16, :name=>"Ushiro Ryokata Dori", :description=>"Ryokata Dori from behind", :short_description=>nil}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-08-25 13:33:16 +0000
# Seeding Kata
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Kata.seed(:id,
  {:id=>1, :name=>"Supplemental", :description=>"Extra Katas"},
  {:id=>2, :name=>"Base", :description=>"Base Katas"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-08-25 13:33:16 +0000
# Seeding Technique
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Technique.seed(:id,
  {:id=>2, :name=>"Kaiten Nage", :description=>"Rotary throw", :short_description=>nil},
  {:id=>3, :name=>"Kote Gaeshi", :description=>"Wrist turn out", :short_description=>nil},
  {:id=>4, :name=>"Shiho Nage", :description=>"Four corners throw", :short_description=>nil},
  {:id=>5, :name=>"Ikkyo", :description=>"Wrist technique, generally palm down", :short_description=>nil},
  {:id=>6, :name=>"Irimi Nage", :description=>"Entering Throw", :short_description=>nil},
  {:id=>7, :name=>"Nikkyo", :description=>"Wrist technique, pressure applied on wrist towards Uke's body", :short_description=>nil},
  {:id=>8, :name=>"Jo Kata", :description=>"Sequential movements with a Jo", :short_description=>nil},
  {:id=>9, :name=>"Sankyo", :description=>"Wrist technique, pressure applied against the wrist in a twisting motion towards Uke", :short_description=>nil},
  {:id=>10, :name=>"Yonkyo", :description=>"Wrist press, pressure is applied against Uke's forearm", :short_description=>nil},
  {:id=>11, :name=>"Gokyo", :description=>"Aikido fifth principle, in which the wrist is held palm up; usually employed against a knife attack", :short_description=>nil},
  {:id=>12, :name=>"Koshi Nage", :description=>"Hip throw", :short_description=>nil},
  {:id=>13, :name=>"Tenchi Nage", :description=>"Heaven and earth throw", :short_description=>nil},
  {:id=>14, :name=>"Kokyu Nage", :description=>"Breath throw, employing no joint locks", :short_description=>nil},
  {:id=>16, :name=>"Hiji Kata", :description=>"Hija (elbow) Kata", :short_description=>"Elbow Kata"},
  {:id=>17, :name=>"Kokyu Ho", :description=>"Breath power", :short_description=>""},
  {:id=>18, :name=>"Udekimenage", :description=>"throw applying pressure to the underside of the elbow (or upper arm)", :short_description=>""}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-08-25 13:33:16 +0000
# Seeding AppliedTechnique
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
AppliedTechnique.seed(:id,
  {:id=>1, :technique_id=>2, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>6, :direction_id=>2, :name=>"Gyaku Hanmi Kaiten Nage Omote", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil, :keywords=>"gyaku hanmi kaiten nage omote gyakuhanmikaitennageomote kaiten nage kaitennage katate dori katatedori gyaku hanmi gyakuhanmi opposing omote front tachi waza tachiwaza 5th tiado hand john bollinger"},
  {:id=>2, :technique_id=>3, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>4, :direction_id=>nil, :name=>"Gyaku Hanmi Kote Gaeshi", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"gyaku hanmi kote gaeshi gyakuhanmikotegaeshi kote gaeshi kotegaeshi katate dori katatedori gyaku hanmi gyakuhanmi opposing tachi waza tachiwaza 3rd tiado hand john bollinger no grab"},
  {:id=>3, :technique_id=>4, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>4, :direction_id=>nil, :name=>"Gyaku Hanmi Katate Dori Shiho Nage", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil, :keywords=>"gyaku hanmi katate dori shiho nage gyakuhanmikatatedorishihonage shiho nage shihonage katate dori katatedori gyaku hanmi gyakuhanmi opposing tachi waza tachiwaza 3rd tiado hand john bollinger"},
  {:id=>4, :technique_id=>nil, :attack_id=>nil, :stance_id=>nil, :waza_id=>nil, :rank_id=>6, :direction_id=>nil, :name=>"Shohatto Maegiri", :kata_id=>2, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"Kata 1", :description=>"Front Cut", :related_id=>nil, :position=>1, :keywords=>"shohatto maegiri shohattomaegiri 5th aiki toho aikitoho iaido john bollinger"},
  {:id=>5, :technique_id=>5, :attack_id=>2, :stance_id=>3, :waza_id=>nil, :rank_id=>6, :direction_id=>2, :name=>"Ukenagashi", :kata_id=>2, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"Kata 2", :description=>"", :related_id=>18, :position=>2, :keywords=>"ukenagashi ukenagashi ikkyo katate dori katatedori ai hanmi aihanmi mirroring omote front 5th aiki toho aikitoho iaido john bollinger"},
  {:id=>6, :technique_id=>5, :attack_id=>2, :stance_id=>3, :waza_id=>nil, :rank_id=>6, :direction_id=>2, :name=>"Ai Hanmi Kata Dori Ikkyo Omote Variation", :kata_id=>1, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>3, :keywords=>"ai hanmi kata dori ikkyo omote variation aihanmikatadoriikkyoomotevariation ikkyo katate dori katatedori ai hanmi aihanmi mirroring omote front 5th aiki toho aikitoho iaido john bollinger"},
  {:id=>7, :technique_id=>2, :attack_id=>2, :stance_id=>2, :waza_id=>nil, :rank_id=>6, :direction_id=>nil, :name=>"Ushirogiri", :kata_id=>2, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"Kata 3", :description=>"", :related_id=>nil, :position=>4, :keywords=>"ushirogiri ushirogiri kaiten nage kaitennage katate dori katatedori gyaku hanmi gyakuhanmi opposing 5th aiki toho aikitoho iaido john bollinger"},
  {:id=>8, :technique_id=>nil, :attack_id=>nil, :stance_id=>nil, :waza_id=>nil, :rank_id=>6, :direction_id=>nil, :name=>"Variation to Kata 3", :kata_id=>1, :format_id=>8, :attack_height_id=>nil, :on_test=>false, :short_description=>"", :description=>"", :related_id=>nil, :position=>5, :keywords=>"variation to kata 3 variationtokata3 5th aiki toho aikitoho iaido john bollinger"},
  {:id=>9, :technique_id=>5, :attack_id=>4, :stance_id=>nil, :waza_id=>nil, :rank_id=>6, :direction_id=>2, :name=>"Kiriage", :kata_id=>1, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>6, :keywords=>"kiriage kiriage ikkyo shomen uchi shomenuchi omote front 5th aiki toho aikitoho iaido john bollinger discussion"},
  {:id=>10, :technique_id=>6, :attack_id=>2, :stance_id=>3, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Ai Hanmi Irimi Nage Backstretch", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>false, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil, :keywords=>"ai hanmi irimi nage backstretch aihanmiiriminagebackstretch irimi nage iriminage katate dori katatedori ai hanmi aihanmi mirroring tachi waza tachiwaza miscellaneous tiado hand john bollinger"},
  {:id=>11, :technique_id=>7, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>4, :direction_id=>3, :name=>"Gyaku Hanmi Katate Dori Nikkyo Ura", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"gyaku hanmi katate dori nikkyo ura gyakuhanmikatatedorinikkyoura nikkyo katate dori katatedori gyaku hanmi gyakuhanmi opposing ura back tachi waza tachiwaza 3rd tiado hand john bollinger elbow discussion"},
  {:id=>12, :technique_id=>3, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Gyaku Hanmi Kote Gaeshi Jodan", :kata_id=>nil, :format_id=>9, :attack_height_id=>2, :on_test=>false, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil, :keywords=>"gyaku hanmi kote gaeshi jodan gyakuhanmikotegaeshijodan kote gaeshi kotegaeshi katate dori katatedori gyaku hanmi gyakuhanmi opposing tachi waza tachiwaza miscellaneous oyo waza oyowaza advanced jodan upper height upperheight john bollinger"},
  {:id=>13, :technique_id=>6, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>4, :direction_id=>nil, :name=>"Gyaku Hanmi Irimi Nage", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"gyaku hanmi irimi nage gyakuhanmiiriminage irimi nage iriminage katate dori katatedori gyaku hanmi gyakuhanmi opposing tachi waza tachiwaza 3rd tiado hand john bollinger"},
  {:id=>14, :technique_id=>5, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>4, :direction_id=>3, :name=>"Gyaku Hanmi Katate Dori Ikkyo Ura", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"gyaku hanmi katate dori ikkyo ura gyakuhanmikatatedoriikkyoura ikkyo katate dori katatedori gyaku hanmi gyakuhanmi opposing ura back tachi waza tachiwaza 3rd tiado hand john bollinger"},
  {:id=>15, :technique_id=>5, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>4, :direction_id=>2, :name=>"Gyaku Hanmi Katate Dori Ikkyo Omote", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"gyaku hanmi katate dori ikkyo omote gyakuhanmikatatedoriikkyoomote ikkyo katate dori katatedori gyaku hanmi gyakuhanmi opposing omote front tachi waza tachiwaza 3rd tiado hand john bollinger"},
  {:id=>16, :technique_id=>8, :attack_id=>nil, :stance_id=>nil, :waza_id=>nil, :rank_id=>5, :direction_id=>nil, :name=>"Jo Kata 1 Right Side", :kata_id=>nil, :format_id=>7, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"jo kata 1 right side jokata1rightside jo kata jokata 4th suburi weapon (non-iaido) kata weapon(non-iaido)kata john bollinger"},
  {:id=>17, :technique_id=>8, :attack_id=>nil, :stance_id=>nil, :waza_id=>nil, :rank_id=>4, :direction_id=>nil, :name=>"Jo Kata 1 Both Sides", :kata_id=>nil, :format_id=>7, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"jo kata 1 both sides jokata1bothsides jo kata jokata 3rd suburi weapon (non-iaido) kata weapon(non-iaido)kata john bollinger"},
  {:id=>18, :technique_id=>5, :attack_id=>2, :stance_id=>3, :waza_id=>2, :rank_id=>5, :direction_id=>2, :name=>"Ai Hanmi Katate Dori Ikkyo Omote", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>nil, :description=>nil, :related_id=>5, :position=>nil, :keywords=>"ai hanmi katate dori ikkyo omote aihanmikatatedoriikkyoomote ikkyo katate dori katatedori ai hanmi aihanmi mirroring omote front tachi waza tachiwaza 4th tiado hand john bollinger"},
  {:id=>20, :technique_id=>6, :attack_id=>4, :stance_id=>3, :waza_id=>3, :rank_id=>4, :direction_id=>nil, :name=>"Suwari Waza Irimi Nage", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil, :keywords=>"suwari waza irimi nage suwariwazairiminage irimi nage iriminage shomen uchi shomenuchi ai hanmi aihanmi mirroring suwari waza suwariwaza 3rd tiado hand john bollinger"},
  {:id=>21, :technique_id=>3, :attack_id=>4, :stance_id=>3, :waza_id=>3, :rank_id=>4, :direction_id=>nil, :name=>"Suwari Waza Kote Gaeshi", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil, :keywords=>"suwari waza kote gaeshi suwariwazakotegaeshi kote gaeshi kotegaeshi shomen uchi shomenuchi ai hanmi aihanmi mirroring suwari waza suwariwaza 3rd tiado hand john bollinger"},
  {:id=>22, :technique_id=>nil, :attack_id=>nil, :stance_id=>nil, :waza_id=>nil, :rank_id=>5, :direction_id=>nil, :name=>"Tomesuemono", :kata_id=>2, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"Kata 15", :description=>"Table Cut", :related_id=>nil, :position=>7, :keywords=>"tomesuemono tomesuemono 4th aiki toho aikitoho iaido john bollinger discussion"},
  {:id=>23, :technique_id=>4, :attack_id=>2, :stance_id=>3, :waza_id=>nil, :rank_id=>5, :direction_id=>nil, :name=>"Zenngogiri", :kata_id=>2, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"Kata 4", :description=>"", :related_id=>nil, :position=>8, :keywords=>"zenngogiri zenngogiri shiho nage shihonage katate dori katatedori ai hanmi aihanmi mirroring 4th aiki toho aikitoho iaido john bollinger"},
  {:id=>24, :technique_id=>16, :attack_id=>nil, :stance_id=>nil, :waza_id=>2, :rank_id=>5, :direction_id=>nil, :name=>"Hiji Kata Both Sides", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"Elbow Kata", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"hiji kata both sides hijikatabothsides hiji kata hijikata elbow kata elbowkata tachi waza tachiwaza 4th tiado hand john bollinger"},
  {:id=>25, :technique_id=>16, :attack_id=>nil, :stance_id=>nil, :waza_id=>2, :rank_id=>6, :direction_id=>nil, :name=>"Hiji Kata Right Side", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"Elbow Kata", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"hiji kata right side hijikatarightside hiji kata hijikata elbow kata elbowkata tachi waza tachiwaza 5th tiado hand john bollinger"},
  {:id=>26, :technique_id=>17, :attack_id=>nil, :stance_id=>nil, :waza_id=>3, :rank_id=>6, :direction_id=>nil, :name=>"Suwari Waza Kokyu Ho", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"suwari waza kokyu ho suwariwazakokyuho kokyu ho kokyuho suwari waza suwariwaza 5th tiado hand john bollinger"},
  {:id=>27, :technique_id=>8, :attack_id=>nil, :stance_id=>nil, :waza_id=>nil, :rank_id=>3, :direction_id=>nil, :name=>"Jo Kata 2", :kata_id=>nil, :format_id=>7, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"jo kata 2 jokata2 jo kata jokata 2nd suburi weapon (non-iaido) kata weapon(non-iaido)kata john bollinger"},
  {:id=>28, :technique_id=>17, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Gyaku Hanmi Kokyu Ho", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>false, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"gyaku hanmi kokyu ho gyakuhanmikokyuho kokyu ho kokyuho katate dori katatedori gyaku hanmi gyakuhanmi opposing tachi waza tachiwaza miscellaneous tiado hand john bollinger"},
  {:id=>29, :technique_id=>7, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>10, :direction_id=>3, :name=>"Zempo Gaidan Kushushi Nikkyo", :kata_id=>nil, :format_id=>2, :attack_height_id=>4, :on_test=>false, :short_description=>"", :description=>"Quick entry to Nikkyo. Zempo Gedan(Gaidan) Kushushi translates roughly to 'Forward off balance to the lower'.", :related_id=>nil, :position=>nil, :keywords=>"zempo gaidan kushushi nikkyo zempogaidankushushinikkyo nikkyo katate dori katatedori gyaku hanmi gyakuhanmi opposing ura back tachi waza tachiwaza miscellaneous tiado hand gedan lower height lowerheight john bollinger quick entry what to do with the other hand"},
  {:id=>30, :technique_id=>18, :attack_id=>2, :stance_id=>3, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Ai Hanmi Udekimenage", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>false, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"ai hanmi udekimenage aihanmiudekimenage udekimenage katate dori katatedori ai hanmi aihanmi mirroring tachi waza tachiwaza miscellaneous tiado hand john bollinger"},
  {:id=>31, :technique_id=>4, :attack_id=>3, :stance_id=>nil, :waza_id=>2, :rank_id=>6, :direction_id=>nil, :name=>"Ryote Dori Shiho Nage", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"ryote dori shiho nage ryotedorishihonage shiho nage shihonage ryote dori ryotedori tachi waza tachiwaza 5th tiado hand john bollinger"},
  {:id=>32, :technique_id=>6, :attack_id=>10, :stance_id=>2, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Tuski Irimi Nage", :kata_id=>nil, :format_id=>9, :attack_height_id=>nil, :on_test=>false, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"tuski irimi nage tuskiiriminage irimi nage iriminage tuski gyaku hanmi gyakuhanmi opposing tachi waza tachiwaza miscellaneous oyo waza oyowaza advanced john bollinger"},
  {:id=>33, :technique_id=>3, :attack_id=>10, :stance_id=>2, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Tuski Kote Gaeshi", :kata_id=>nil, :format_id=>9, :attack_height_id=>nil, :on_test=>false, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"tuski kote gaeshi tuskikotegaeshi kote gaeshi kotegaeshi tuski gyaku hanmi gyakuhanmi opposing tachi waza tachiwaza miscellaneous oyo waza oyowaza advanced john bollinger"},
  {:id=>34, :technique_id=>3, :attack_id=>nil, :stance_id=>nil, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Ken ti Ken Kote Gaeshi", :kata_id=>nil, :format_id=>5, :attack_height_id=>nil, :on_test=>false, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"ken ti ken kote gaeshi kentikenkotegaeshi kote gaeshi kotegaeshi tachi waza tachiwaza miscellaneous ken ti ken kentiken sword vs sword swordvssword john bollinger"},
  {:id=>35, :technique_id=>3, :attack_id=>nil, :stance_id=>nil, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Ken ti Jo Kote Gaeshi", :kata_id=>nil, :format_id=>6, :attack_height_id=>nil, :on_test=>false, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"ken ti jo kote gaeshi kentijokotegaeshi kote gaeshi kotegaeshi tachi waza tachiwaza miscellaneous ken ti jo kentijo sword vs jo swordvsjo john bollinger"},
  {:id=>36, :technique_id=>3, :attack_id=>4, :stance_id=>2, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Shomen Uchi Kote Gaeshi", :kata_id=>nil, :format_id=>9, :attack_height_id=>nil, :on_test=>false, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"shomen uchi kote gaeshi shomenuchikotegaeshi kote gaeshi kotegaeshi shomen uchi shomenuchi gyaku hanmi gyakuhanmi opposing tachi waza tachiwaza miscellaneous oyo waza oyowaza advanced john bollinger"},
  {:id=>37, :technique_id=>7, :attack_id=>2, :stance_id=>3, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Ai Hanmi Nikkyo", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>false, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"ai hanmi nikkyo aihanminikkyo nikkyo katate dori katatedori ai hanmi aihanmi mirroring tachi waza tachiwaza miscellaneous tiado hand john bollinger"},
  {:id=>38, :technique_id=>7, :attack_id=>nil, :stance_id=>nil, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Ken ti Ken Nikkyo", :kata_id=>nil, :format_id=>5, :attack_height_id=>nil, :on_test=>false, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"ken ti ken nikkyo kentikennikkyo nikkyo tachi waza tachiwaza miscellaneous ken ti ken kentiken sword vs sword swordvssword john bollinger"},
  {:id=>39, :technique_id=>7, :attack_id=>nil, :stance_id=>nil, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Ken ti Jo Nikkyo", :kata_id=>nil, :format_id=>6, :attack_height_id=>nil, :on_test=>false, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil, :keywords=>"ken ti jo nikkyo kentijonikkyo nikkyo tachi waza tachiwaza miscellaneous ken ti jo kentijo sword vs jo swordvsjo john bollinger"}
)
# End auto-generated file.
