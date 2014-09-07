# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-09-07 09:58:11 -0500
# Seeding Stance
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
#
Stance.seed(:id,
  {:id=>2, :name=>"Gyaku Hanmi", :description=>"Opposing stance (i.e. uke right foot forward and nage left foot forward)", :short_description=>"Opposing"},
  {:id=>3, :name=>"Ai Hanmi", :description=>"Mirroring stance (i.e. uke and nage have same foot forward)", :short_description=>"Mirroring"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-09-07 09:58:11 -0500
# Seeding Attack
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
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
# Date: 2014-09-07 09:58:11 -0500
# Seeding Technique
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
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
  {:id=>15, :name=>"Hiji Kata", :description=>"Hija (elbow) Kata", :short_description=>"Elbow Kata"},
  {:id=>16, :name=>"Hiji Kata", :description=>"Hija (elbow) Kata", :short_description=>"Elbow Kata"},
  {:id=>17, :name=>"Kokyu Ho", :description=>"Breath power", :short_description=>""},
  {:id=>18, :name=>"Udekimenage", :description=>"throw applying pressure to the underside of the elbow (or upper arm)", :short_description=>""},
  {:id=>19, :name=>"Iaido Only", :description=>"Aiki Toho that do not have a Tiado counterpart", :short_description=>""}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-09-07 09:58:11 -0500
# Seeding Direction
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
#
Direction.seed(:id,
  {:id=>2, :name=>"Omote", :description=>"Entering in the front, throw is across the front", :short_description=>"front"},
  {:id=>3, :name=>"Ura", :description=>"Entering in the back, throw is across the back", :short_description=>"back"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-09-07 09:58:11 -0500
# Seeding Waza
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
#
Waza.seed(:id,
  {:id=>1, :technique_id=>2, :attack_id=>2, :stance_id=>2, :direction_id=>2, :name=>"Gyaku Hanmi Kaiten Nage Omote", :short_description=>nil, :description=>nil, :position=>nil, :keywords=>"gyaku hanmi kaiten nage omote gyakuhanmikaitennageomote 5th base john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>2, :technique_id=>3, :attack_id=>2, :stance_id=>2, :direction_id=>nil, :name=>"Gyaku Hanmi Kote Gaeshi", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyaku hanmi kote gaeshi gyakuhanmikotegaeshi 3rd miscellaneous john bollinger johnbollinger jodan upper height upperheight tachi waza tachiwaza"},
  {:id=>3, :technique_id=>4, :attack_id=>2, :stance_id=>2, :direction_id=>nil, :name=>"Gyaku Hanmi Katate Dori Shiho Nage", :short_description=>nil, :description=>nil, :position=>nil, :keywords=>"gyaku hanmi katate dori shiho nage gyakuhanmikatatedorishihonage 3rd john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>4, :technique_id=>19, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Shohatto Maegiri", :short_description=>"Kata 1", :description=>"Front Cut", :position=>1, :keywords=>"shohatto maegiri shohattomaegiri 5th base john bollinger johnbollinger"},
  {:id=>8, :technique_id=>19, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Variation to Kata 3", :short_description=>"", :description=>"", :position=>5, :keywords=>"variation to kata 3 variationtokata3 5th supplemental john bollinger johnbollinger"},
  {:id=>9, :technique_id=>5, :attack_id=>4, :stance_id=>nil, :direction_id=>2, :name=>"Shomen Uchi Ikkyo Omote", :short_description=>"", :description=>"", :position=>6, :keywords=>"shomen uchi ikkyo omote shomenuchiikkyoomote 5th supplemental john bollinger johnbollinger"},
  {:id=>10, :technique_id=>6, :attack_id=>2, :stance_id=>3, :direction_id=>nil, :name=>"Ai Hanmi Irimi Nage Backstretch", :short_description=>nil, :description=>nil, :position=>nil, :keywords=>"ai hanmi irimi nage backstretch aihanmiiriminagebackstretch miscellaneous john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>11, :technique_id=>7, :attack_id=>2, :stance_id=>2, :direction_id=>3, :name=>"Gyaku Hanmi Katate Dori Nikkyo Ura", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyaku hanmi katate dori nikkyo ura gyakuhanmikatatedorinikkyoura 3rd john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>13, :technique_id=>6, :attack_id=>2, :stance_id=>2, :direction_id=>nil, :name=>"Gyaku Hanmi Irimi Nage", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyaku hanmi irimi nage gyakuhanmiiriminage 3rd john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>14, :technique_id=>5, :attack_id=>2, :stance_id=>2, :direction_id=>3, :name=>"Gyaku Hanmi Katate Dori Ikkyo Ura", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyaku hanmi katate dori ikkyo ura gyakuhanmikatatedoriikkyoura 3rd john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>15, :technique_id=>5, :attack_id=>2, :stance_id=>2, :direction_id=>2, :name=>"Gyaku Hanmi Katate Dori Ikkyo Omote", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyaku hanmi katate dori ikkyo omote gyakuhanmikatatedoriikkyoomote 3rd john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>16, :technique_id=>8, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Jo Kata 1", :short_description=>"", :description=>"", :position=>nil, :keywords=>"jo kata 1 jokata1 4th 3rd john bollinger johnbollinger"},
  {:id=>18, :technique_id=>5, :attack_id=>2, :stance_id=>3, :direction_id=>2, :name=>"Ai Hanmi Katate Dori Ikkyo Omote", :short_description=>nil, :description=>nil, :position=>nil, :keywords=>"ai hanmi katate dori ikkyo omote aihanmikatatedoriikkyoomote 5th 4th base supplemental john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>19, :technique_id=>6, :attack_id=>4, :stance_id=>3, :direction_id=>nil, :name=>"Ai Hanmi Shomen Uchi Irimi Nage", :short_description=>nil, :description=>nil, :position=>nil, :keywords=>"ai hanmi shomen uchi irimi nage aihanmishomenuchiiriminage 3rd john bollinger johnbollinger suwari waza suwariwaza"},
  {:id=>21, :technique_id=>3, :attack_id=>4, :stance_id=>3, :direction_id=>nil, :name=>"Ai Hanmi Shomen Uchi Kote Gaeshi", :short_description=>nil, :description=>nil, :position=>nil, :keywords=>"ai hanmi shomen uchi kote gaeshi aihanmishomenuchikotegaeshi 3rd john bollinger johnbollinger suwari waza suwariwaza"},
  {:id=>22, :technique_id=>nil, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Tomesuemono", :short_description=>"Kata 15", :description=>"Table Cut", :position=>7, :keywords=>"tomesuemono tomesuemono 4th base john bollinger johnbollinger"},
  {:id=>23, :technique_id=>4, :attack_id=>2, :stance_id=>3, :direction_id=>nil, :name=>"Ai Hanmi Katate Dori Shiho Nage", :short_description=>"", :description=>"", :position=>8, :keywords=>"ai hanmi katate dori shiho nage aihanmikatatedorishihonage 4th base john bollinger johnbollinger"},
  {:id=>24, :technique_id=>16, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Hiji Kata", :short_description=>"Elbow Kata", :description=>"", :position=>nil, :keywords=>"hiji kata hijikata 4th 5th john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>26, :technique_id=>17, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Suwari Waza Kokyu Ho", :short_description=>"", :description=>"", :position=>nil, :keywords=>"suwari waza kokyu ho suwariwazakokyuho 5th john bollinger johnbollinger suwari waza suwariwaza"},
  {:id=>27, :technique_id=>8, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Jo Kata 2", :short_description=>"", :description=>"", :position=>nil, :keywords=>"jo kata 2 jokata2 2nd john bollinger johnbollinger"},
  {:id=>28, :technique_id=>17, :attack_id=>2, :stance_id=>2, :direction_id=>nil, :name=>"Gyaku Hanmi Kokyu Ho", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyaku hanmi kokyu ho gyakuhanmikokyuho miscellaneous john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>29, :technique_id=>7, :attack_id=>2, :stance_id=>2, :direction_id=>3, :name=>"Zempo Gaidan Kushushi Nikkyo", :short_description=>"", :description=>"Quick entry to Nikkyo. Zempo Gedan(Gaidan) Kushushi translates roughly to 'Forward off balance to the lower'.", :position=>nil, :keywords=>"zempo gaidan kushushi nikkyo zempogaidankushushinikkyo miscellaneous john bollinger johnbollinger gedan lower height lowerheight tachi waza tachiwaza"},
  {:id=>30, :technique_id=>18, :attack_id=>2, :stance_id=>3, :direction_id=>nil, :name=>"Ai Hanmi Udekimenage", :short_description=>"", :description=>"", :position=>nil, :keywords=>"ai hanmi udekimenage aihanmiudekimenage miscellaneous john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>31, :technique_id=>4, :attack_id=>3, :stance_id=>nil, :direction_id=>nil, :name=>"Ryote Dori Shiho Nage", :short_description=>"", :description=>"", :position=>nil, :keywords=>"ryote dori shiho nage ryotedorishihonage 5th john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>32, :technique_id=>6, :attack_id=>10, :stance_id=>2, :direction_id=>nil, :name=>"Tuski Irimi Nage", :short_description=>"", :description=>"", :position=>nil, :keywords=>"tuski irimi nage tuskiiriminage miscellaneous john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>33, :technique_id=>3, :attack_id=>10, :stance_id=>2, :direction_id=>nil, :name=>"Tuski Kote Gaeshi", :short_description=>"", :description=>"", :position=>nil, :keywords=>"tuski kote gaeshi tuskikotegaeshi miscellaneous john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>34, :technique_id=>3, :attack_id=>2, :stance_id=>3, :direction_id=>nil, :name=>"Ai Hanmi Katate Dori Kote Gaeshi", :short_description=>"", :description=>"", :position=>nil, :keywords=>"ai hanmi katate dori kote gaeshi aihanmikatatedorikotegaeshi miscellaneous john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>36, :technique_id=>7, :attack_id=>4, :stance_id=>2, :direction_id=>nil, :name=>"Shomen Uchi Nikkyo", :short_description=>"", :description=>"", :position=>nil, :keywords=>"shomen uchi nikkyo shomenuchinikkyo miscellaneous john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>37, :technique_id=>7, :attack_id=>2, :stance_id=>3, :direction_id=>nil, :name=>"Ai Hanmi Nikkyo", :short_description=>"", :description=>"", :position=>nil, :keywords=>"ai hanmi nikkyo aihanminikkyo miscellaneous john bollinger johnbollinger tachi waza tachiwaza"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-09-07 09:58:11 -0500
# Seeding Format
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
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
# Date: 2014-09-07 09:58:11 -0500
# Seeding AttackHeight
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
#
AttackHeight.seed(:id,
  {:id=>2, :name=>"Jodan", :short_description=>"upper height", :description=>"Upper level, neck and above"},
  {:id=>3, :name=>"Chudan", :short_description=>"torso height", :description=>"Middle level, torso area"},
  {:id=>4, :name=>"Gedan", :short_description=>"lower height", :description=>"Lower level, groin and below"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-09-07 09:58:11 -0500
# Seeding Style
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
#
Style.seed(:id,
  {:id=>2, :name=>"Tachi Waza", :description=>"Standing technique", :short_description=>nil},
  {:id=>3, :name=>"Suwari Waza", :description=>"Technique where both uke and nage are seated", :short_description=>nil},
  {:id=>4, :name=>"Hanmi Hadachi Waza", :description=>"Technique where one person standing and one person sitting", :short_description=>nil}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-09-07 09:58:11 -0500
# Seeding Sensei
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
#
Sensei.seed(:id,
  {:id=>1, :name=>"John Bollinger", :dojo=>"Aikido Center of San Antonio"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-09-07 09:58:11 -0500
# Seeding Rank
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
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
# Date: 2014-09-07 09:58:11 -0500
# Seeding Kata
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
#
Kata.seed(:id,
  {:id=>1, :name=>"Supplemental", :description=>"Extra Katas"},
  {:id=>2, :name=>"Base", :description=>"Base Katas"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-09-07 09:58:11 -0500
# Seeding WazaFormat
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
#
WazaFormat.seed(:id,
  {:id=>1, :waza_id=>1, :format_id=>2, :rank_id=>6, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>2, :waza_id=>2, :format_id=>2, :rank_id=>4, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>3, :waza_id=>3, :format_id=>2, :rank_id=>4, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>4, :waza_id=>4, :format_id=>8, :rank_id=>6, :kata_id=>2, :on_test=>true, :description=>nil, :kata_number=>1},
  {:id=>5, :waza_id=>18, :format_id=>8, :rank_id=>6, :kata_id=>2, :on_test=>true, :description=>nil, :kata_number=>2},
  {:id=>6, :waza_id=>18, :format_id=>8, :rank_id=>6, :kata_id=>1, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>7, :waza_id=>1, :format_id=>8, :rank_id=>6, :kata_id=>2, :on_test=>true, :description=>nil, :kata_number=>3},
  {:id=>8, :waza_id=>8, :format_id=>8, :rank_id=>6, :kata_id=>1, :on_test=>false, :description=>nil, :kata_number=>nil},
  {:id=>9, :waza_id=>9, :format_id=>8, :rank_id=>6, :kata_id=>1, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>10, :waza_id=>10, :format_id=>2, :rank_id=>10, :kata_id=>nil, :on_test=>false, :description=>nil, :kata_number=>nil},
  {:id=>11, :waza_id=>11, :format_id=>2, :rank_id=>4, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>12, :waza_id=>2, :format_id=>9, :rank_id=>10, :kata_id=>nil, :on_test=>false, :description=>nil, :kata_number=>nil},
  {:id=>13, :waza_id=>13, :format_id=>2, :rank_id=>4, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>14, :waza_id=>14, :format_id=>2, :rank_id=>4, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>15, :waza_id=>15, :format_id=>2, :rank_id=>4, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>16, :waza_id=>16, :format_id=>7, :rank_id=>5, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>17, :waza_id=>16, :format_id=>7, :rank_id=>4, :kata_id=>nil, :on_test=>true, :description=>"Both Sides", :kata_number=>nil},
  {:id=>18, :waza_id=>18, :format_id=>2, :rank_id=>5, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>19, :waza_id=>19, :format_id=>2, :rank_id=>4, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>21, :waza_id=>21, :format_id=>2, :rank_id=>4, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>22, :waza_id=>22, :format_id=>8, :rank_id=>5, :kata_id=>2, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>23, :waza_id=>23, :format_id=>8, :rank_id=>5, :kata_id=>2, :on_test=>true, :description=>nil, :kata_number=>4},
  {:id=>24, :waza_id=>24, :format_id=>2, :rank_id=>5, :kata_id=>nil, :on_test=>true, :description=>"Both Sides", :kata_number=>nil},
  {:id=>25, :waza_id=>24, :format_id=>2, :rank_id=>6, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>26, :waza_id=>26, :format_id=>2, :rank_id=>6, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>27, :waza_id=>27, :format_id=>7, :rank_id=>3, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>28, :waza_id=>28, :format_id=>2, :rank_id=>10, :kata_id=>nil, :on_test=>false, :description=>nil, :kata_number=>nil},
  {:id=>29, :waza_id=>29, :format_id=>2, :rank_id=>10, :kata_id=>nil, :on_test=>false, :description=>nil, :kata_number=>nil},
  {:id=>30, :waza_id=>30, :format_id=>2, :rank_id=>10, :kata_id=>nil, :on_test=>false, :description=>nil, :kata_number=>nil},
  {:id=>31, :waza_id=>31, :format_id=>2, :rank_id=>6, :kata_id=>nil, :on_test=>true, :description=>nil, :kata_number=>nil},
  {:id=>32, :waza_id=>32, :format_id=>9, :rank_id=>10, :kata_id=>nil, :on_test=>false, :description=>nil, :kata_number=>nil},
  {:id=>33, :waza_id=>33, :format_id=>9, :rank_id=>10, :kata_id=>nil, :on_test=>false, :description=>nil, :kata_number=>nil},
  {:id=>34, :waza_id=>34, :format_id=>5, :rank_id=>10, :kata_id=>nil, :on_test=>false, :description=>nil, :kata_number=>nil},
  {:id=>35, :waza_id=>34, :format_id=>6, :rank_id=>10, :kata_id=>nil, :on_test=>false, :description=>nil, :kata_number=>nil},
  {:id=>36, :waza_id=>36, :format_id=>9, :rank_id=>10, :kata_id=>nil, :on_test=>false, :description=>nil, :kata_number=>nil},
  {:id=>37, :waza_id=>37, :format_id=>2, :rank_id=>10, :kata_id=>nil, :on_test=>false, :description=>nil, :kata_number=>nil},
  {:id=>40, :waza_id=>37, :format_id=>5, :rank_id=>nil, :kata_id=>nil, :on_test=>false, :description=>nil, :kata_number=>nil},
  {:id=>41, :waza_id=>37, :format_id=>6, :rank_id=>nil, :kata_id=>nil, :on_test=>false, :description=>nil, :kata_number=>nil}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-09-07 09:58:11 -0500
# Seeding WazaFormatVideo
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
#
WazaFormatVideo.seed(:id,
  {:id=>2, :waza_format_id=>1, :video_id=>1},
  {:id=>3, :waza_format_id=>2, :video_id=>2},
  {:id=>4, :waza_format_id=>3, :video_id=>3},
  {:id=>5, :waza_format_id=>4, :video_id=>4},
  {:id=>6, :waza_format_id=>5, :video_id=>5},
  {:id=>7, :waza_format_id=>6, :video_id=>6},
  {:id=>8, :waza_format_id=>7, :video_id=>7},
  {:id=>9, :waza_format_id=>8, :video_id=>8},
  {:id=>10, :waza_format_id=>9, :video_id=>9},
  {:id=>11, :waza_format_id=>10, :video_id=>10},
  {:id=>12, :waza_format_id=>11, :video_id=>11},
  {:id=>13, :waza_format_id=>12, :video_id=>12},
  {:id=>14, :waza_format_id=>13, :video_id=>13},
  {:id=>15, :waza_format_id=>14, :video_id=>14},
  {:id=>16, :waza_format_id=>14, :video_id=>15},
  {:id=>17, :waza_format_id=>15, :video_id=>16},
  {:id=>18, :waza_format_id=>15, :video_id=>17},
  {:id=>19, :waza_format_id=>16, :video_id=>18},
  {:id=>20, :waza_format_id=>17, :video_id=>19},
  {:id=>21, :waza_format_id=>18, :video_id=>20},
  {:id=>22, :waza_format_id=>19, :video_id=>21},
  {:id=>23, :waza_format_id=>21, :video_id=>23},
  {:id=>24, :waza_format_id=>22, :video_id=>24},
  {:id=>25, :waza_format_id=>23, :video_id=>25},
  {:id=>26, :waza_format_id=>24, :video_id=>26},
  {:id=>27, :waza_format_id=>25, :video_id=>27},
  {:id=>28, :waza_format_id=>26, :video_id=>28},
  {:id=>29, :waza_format_id=>9, :video_id=>29},
  {:id=>30, :waza_format_id=>22, :video_id=>30},
  {:id=>31, :waza_format_id=>27, :video_id=>31},
  {:id=>32, :waza_format_id=>28, :video_id=>32},
  {:id=>33, :waza_format_id=>29, :video_id=>33},
  {:id=>34, :waza_format_id=>29, :video_id=>34},
  {:id=>35, :waza_format_id=>11, :video_id=>35},
  {:id=>36, :waza_format_id=>31, :video_id=>36},
  {:id=>37, :waza_format_id=>30, :video_id=>37},
  {:id=>38, :waza_format_id=>13, :video_id=>38},
  {:id=>39, :waza_format_id=>32, :video_id=>39},
  {:id=>40, :waza_format_id=>2, :video_id=>40},
  {:id=>41, :waza_format_id=>33, :video_id=>41},
  {:id=>42, :waza_format_id=>34, :video_id=>42},
  {:id=>43, :waza_format_id=>35, :video_id=>43},
  {:id=>44, :waza_format_id=>36, :video_id=>44},
  {:id=>45, :waza_format_id=>37, :video_id=>45},
  {:id=>46, :waza_format_id=>40, :video_id=>46},
  {:id=>47, :waza_format_id=>41, :video_id=>47}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-09-07 09:58:11 -0500
# Seeding UserNote
# Written with the command:
#
#   /Users/todd/.rvm/gems/ruby-2.0.0-p481@aiki_gemset/bin/rake aiki:dump_to_seed_fu
#
UserNote.seed(:id,
  {:id=>1, :note=>"Atemi with forarm, this allows to bring both the hand into play and the elbow. Keep the atemi(elbow) in contact as long as possible. ", :user_id=>1, :waza_format_id=>1},
  {:id=>2, :note=>"At the bottom of the yokamen cut, catch uke's wrist in the fork between thumb and forefinger. As you step back/pivot into the hourse stance, keep uke in contact.", :user_id=>1, :waza_format_id=>1},
  {:id=>3, :note=>"With heavy hand behind uke's neck and other hand at uke' opposite hip, bring uke's other hand to the shoulder away from you as you throw.", :user_id=>1, :waza_format_id=>1}
)
# End auto-generated file.
