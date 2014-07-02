# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-07-02 20:29:33 +0000
# Seeding AttackHeight
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
AttackHeight.seed(:id,
  {:id=>1, :name=>"Any", :short_description=>nil, :description=>nil},
  {:id=>2, :name=>"Jodan", :short_description=>"upper height", :description=>"Upper level, neck and above"},
  {:id=>3, :name=>"Chudan", :short_description=>"torso height", :description=>"Middle level, torso area"},
  {:id=>4, :name=>"Gedan", :short_description=>"lower height", :description=>"Lower level, groin and below"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-07-02 20:29:33 +0000
# Seeding Format
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Format.seed(:id,
  {:id=>1, :name=>"Any", :position=>0, :short_description=>nil, :description=>nil},
  {:id=>2, :name=>"Tiado", :position=>1, :short_description=>"hand", :description=>"Way of the hand"},
  {:id=>3, :name=>"Ken no Tebiki", :position=>4, :short_description=>"nage with sword", :description=>"With sword guidance (one person with boken)"},
  {:id=>4, :name=>"Jo no Tebiki", :position=>3, :short_description=>"nage with jo", :description=>"With jo guidance (one person with jo)"},
  {:id=>5, :name=>"Ken ti Ken", :position=>6, :short_description=>"sword vs sword", :description=>"Sword vs Sword (bokens)"},
  {:id=>6, :name=>"Ken ti Jo", :position=>5, :short_description=>"sword vs jo", :description=>"Sword(boken) vs Jo"},
  {:id=>7, :name=>"Suburi", :position=>7, :short_description=>"weapon (non-Iaido) kata", :description=>"A single movement using the ken or jo, done as a solo practice"},
  {:id=>8, :name=>"Aiki Toho", :position=>2, :short_description=>"Iaido", :description=>"Japanese swordsmanship"},
  {:id=>9, :name=>"Oyo Waza", :position=>8, :short_description=>"Advanced", :description=>"Advanced version or application of the technique"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-07-02 20:29:33 +0000
# Seeding Stance
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Stance.seed(:id,
  {:id=>1, :name=>"Any", :short_description=>nil, :description=>nil},
  {:id=>2, :name=>"Gyaku Hanmi", :short_description=>"Opposing", :description=>"Opposing stance (i.e. uke right foot forward and nage left foot forward)"},
  {:id=>3, :name=>"Ai Hanmi", :short_description=>"Mirroring", :description=>"Mirroring stance (i.e. uke and nage have same foot forward)"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-07-02 20:29:33 +0000
# Seeding Waza
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Waza.seed(:id,
  {:id=>1, :name=>"Any", :short_description=>nil, :description=>nil},
  {:id=>2, :name=>"Tachi Waza", :short_description=>nil, :description=>"Standing technique"},
  {:id=>3, :name=>"Suwari Waza", :short_description=>nil, :description=>"Technique where both uke and nage are seated"},
  {:id=>4, :name=>"Hanmi Hadachi Waza", :short_description=>nil, :description=>"Technique where one person standing and one person sitting"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-07-02 20:29:33 +0000
# Seeding Direction
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Direction.seed(:id,
  {:id=>1, :name=>"Any", :short_description=>nil, :description=>nil},
  {:id=>2, :name=>"Omote", :short_description=>"front", :description=>"Entering in the front, throw is across the front"},
  {:id=>3, :name=>"Ura", :short_description=>"back", :description=>"Entering in the back, throw is across the back"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-07-02 20:29:33 +0000
# Seeding Rank
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Rank.seed(:id,
  {:id=>1, :name=>"Any", :position=>0, :belt=>nil, :description=>nil, :short_description=>nil},
  {:id=>2, :name=>"1st", :position=>5, :belt=>"White", :description=>"Ikkyu", :short_description=>nil},
  {:id=>3, :name=>"2nd", :position=>4, :belt=>"White", :description=>"Nikyu", :short_description=>nil},
  {:id=>4, :name=>"3rd", :position=>3, :belt=>"White", :description=>"Sankyu", :short_description=>nil},
  {:id=>5, :name=>"4th", :position=>2, :belt=>"White", :description=>"Yonkyu", :short_description=>nil},
  {:id=>6, :name=>"5th", :position=>1, :belt=>"White", :description=>"Gokyu", :short_description=>nil},
  {:id=>7, :name=>"1st", :position=>6, :belt=>"Black", :description=>"Shodan", :short_description=>nil},
  {:id=>8, :name=>"2nd", :position=>7, :belt=>"Black", :description=>"Nidan", :short_description=>nil},
  {:id=>9, :name=>"3rd", :position=>8, :belt=>"Black", :description=>"Sandan", :short_description=>nil},
  {:id=>10, :name=>"Miscellaneous", :position=>99, :belt=>nil, :description=>"Non-ranked", :short_description=>nil}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-07-02 20:29:33 +0000
# Seeding Attack
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Attack.seed(:id,
  {:id=>1, :name=>"Any", :short_description=>nil, :description=>nil},
  {:id=>2, :name=>"Katate Dori", :short_description=>nil, :description=>"One hand grip on one wrist"},
  {:id=>3, :name=>"Ryote Dori", :short_description=>nil, :description=>"Two hand grip on two writs"},
  {:id=>4, :name=>"Shomen Uchi", :short_description=>nil, :description=>"Vertical strike to head with hand blade"},
  {:id=>5, :name=>"Yokomen Uchi", :short_description=>nil, :description=>"Diagonal strike to neck or temple with hand blade"},
  {:id=>6, :name=>"Morote Dori", :short_description=>nil, :description=>"Two hand grip on one wrist (Ryote Kata Dori)"},
  {:id=>7, :name=>"Kata Dori", :short_description=>nil, :description=>"One hand grip on shoulder"},
  {:id=>8, :name=>"Ushiro Ryote Dori", :short_description=>nil, :description=>"Ryote Dori from behind"},
  {:id=>9, :name=>"Kata Dori Menuchi", :short_description=>nil, :description=>"Shoulder grab with head strike (shomen or tsuki"},
  {:id=>10, :name=>"Tsuki", :short_description=>nil, :description=>"Straight punch"},
  {:id=>11, :name=>"Mune Dori", :short_description=>nil, :description=>"One hand grip on lapel (Muna Mochi)"},
  {:id=>12, :name=>"Sode Dori", :short_description=>nil, :description=>"One hand grip on sleeve"},
  {:id=>14, :name=>"Katate Dori Kubishime", :short_description=>nil, :description=>"One hand grip on wrist and one hand choke from behind"},
  {:id=>15, :name=>"Ryokata Dori", :short_description=>nil, :description=>"One hand grip on each shoulder"},
  {:id=>16, :name=>"Ushiro Ryokata Dori", :short_description=>nil, :description=>"Ryokata Dori from behind"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-07-02 20:29:34 +0000
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
# Date: 2014-07-02 20:29:34 +0000
# Seeding Technique
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Technique.seed(:id,
  {:id=>1, :name=>"Any", :short_description=>nil, :description=>nil},
  {:id=>2, :name=>"Kaiten Nage", :short_description=>nil, :description=>"Rotary throw"},
  {:id=>3, :name=>"Kote Gaeshi", :short_description=>nil, :description=>"Wrist turn out"},
  {:id=>4, :name=>"Shiho Nage", :short_description=>nil, :description=>"Four corners throw"},
  {:id=>5, :name=>"Ikkyo", :short_description=>nil, :description=>"Wrist technique, generally palm down"},
  {:id=>6, :name=>"Irimi Nage", :short_description=>nil, :description=>"Entering Throw"},
  {:id=>7, :name=>"Nikkyo", :short_description=>nil, :description=>"Wrist technique, pressure applied on wrist towards Uke's body"},
  {:id=>8, :name=>"Jo Kata", :short_description=>nil, :description=>"Sequential movements with a Jo"},
  {:id=>9, :name=>"Sankyo", :short_description=>nil, :description=>"Wrist technique, pressure applied against the wrist in a twisting motion towards Uke"},
  {:id=>10, :name=>"Yonkyo", :short_description=>nil, :description=>"Wrist press, pressure is applied against Uke's forearm"},
  {:id=>11, :name=>"Gokyo", :short_description=>nil, :description=>"Aikido fifth principle, in which the wrist is held palm up; usually employed against a knife attack"},
  {:id=>12, :name=>"Koshi Nage", :short_description=>nil, :description=>"Hip throw"},
  {:id=>13, :name=>"Tenchi Nage", :short_description=>nil, :description=>"Heaven and earth throw"},
  {:id=>14, :name=>"Kokyu Nage", :short_description=>nil, :description=>"Breath throw, employing no joint locks"},
  {:id=>16, :name=>"Hiji Kata", :short_description=>"Elbow Kata", :description=>"Hija (elbow) Kata"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-07-02 20:29:34 +0000
# Seeding AppliedTechnique
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
AppliedTechnique.seed(:id,
  {:id=>1, :technique_id=>2, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>6, :direction_id=>2, :name=>"Gyaku Hanmi Kaiten Nage Omote", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil},
  {:id=>2, :technique_id=>3, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>4, :direction_id=>nil, :name=>"Gyaku Hanmi Kote Gaeshi <no grab>", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>false, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil},
  {:id=>3, :technique_id=>4, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>4, :direction_id=>nil, :name=>"Gyaku Hanmi Katate Dori Shiho Nage", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil},
  {:id=>4, :technique_id=>nil, :attack_id=>nil, :stance_id=>nil, :waza_id=>nil, :rank_id=>6, :direction_id=>nil, :name=>"Shohatto Maegiri", :kata_id=>2, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"Kata 1", :description=>"Front Cut", :related_id=>nil, :position=>1},
  {:id=>5, :technique_id=>5, :attack_id=>2, :stance_id=>3, :waza_id=>nil, :rank_id=>6, :direction_id=>2, :name=>"Ukenagashi", :kata_id=>2, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"Kata 2", :description=>"", :related_id=>18, :position=>2},
  {:id=>6, :technique_id=>5, :attack_id=>2, :stance_id=>3, :waza_id=>nil, :rank_id=>6, :direction_id=>2, :name=>"Ai Hanmi Kata Dori Ikkyo Omote Variation", :kata_id=>1, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>3},
  {:id=>7, :technique_id=>2, :attack_id=>2, :stance_id=>2, :waza_id=>nil, :rank_id=>6, :direction_id=>nil, :name=>"Ushirogiri", :kata_id=>2, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"Kata 3", :description=>"", :related_id=>nil, :position=>4},
  {:id=>8, :technique_id=>nil, :attack_id=>nil, :stance_id=>nil, :waza_id=>nil, :rank_id=>6, :direction_id=>nil, :name=>"Variation to Kata 3", :kata_id=>1, :format_id=>8, :attack_height_id=>nil, :on_test=>false, :short_description=>"", :description=>"", :related_id=>nil, :position=>5},
  {:id=>9, :technique_id=>5, :attack_id=>4, :stance_id=>nil, :waza_id=>nil, :rank_id=>6, :direction_id=>2, :name=>"Kiriage", :kata_id=>1, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>6},
  {:id=>10, :technique_id=>6, :attack_id=>2, :stance_id=>3, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Ai Hanmi Irimi Nage Backstretch", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>false, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil},
  {:id=>11, :technique_id=>7, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>4, :direction_id=>3, :name=>"Gyaku Hanmi Katate Dori Nikkyo Ura", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil},
  {:id=>12, :technique_id=>3, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>10, :direction_id=>nil, :name=>"Gyaku Hanmi Kote Gaeshi Jodan", :kata_id=>nil, :format_id=>9, :attack_height_id=>2, :on_test=>false, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil},
  {:id=>13, :technique_id=>6, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>4, :direction_id=>nil, :name=>"Gyaku Hanmi Katate Dori Irimi Nage", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil},
  {:id=>14, :technique_id=>5, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>4, :direction_id=>3, :name=>"Gyaku Hanmi Katate Dori Ikkyo Ura", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil},
  {:id=>15, :technique_id=>5, :attack_id=>2, :stance_id=>2, :waza_id=>2, :rank_id=>4, :direction_id=>2, :name=>"Gyaku Hanmi Katate Dori Ikkyo Omote", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil},
  {:id=>16, :technique_id=>8, :attack_id=>nil, :stance_id=>nil, :waza_id=>nil, :rank_id=>5, :direction_id=>nil, :name=>"Jo Kata 1 Right Side", :kata_id=>nil, :format_id=>7, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil},
  {:id=>17, :technique_id=>8, :attack_id=>nil, :stance_id=>nil, :waza_id=>nil, :rank_id=>4, :direction_id=>nil, :name=>"Jo Kata 1 Both Sides", :kata_id=>nil, :format_id=>7, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil},
  {:id=>18, :technique_id=>5, :attack_id=>2, :stance_id=>3, :waza_id=>2, :rank_id=>5, :direction_id=>2, :name=>"Ai Hanmi Katate Dori Ikkyo Omote", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>nil, :description=>nil, :related_id=>5, :position=>nil},
  {:id=>20, :technique_id=>6, :attack_id=>4, :stance_id=>3, :waza_id=>3, :rank_id=>4, :direction_id=>nil, :name=>"Suwari Waza Irimi Nage", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil},
  {:id=>21, :technique_id=>3, :attack_id=>4, :stance_id=>3, :waza_id=>3, :rank_id=>4, :direction_id=>nil, :name=>"Suwari Waza Kote Gaeshi", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>nil, :description=>nil, :related_id=>nil, :position=>nil},
  {:id=>22, :technique_id=>nil, :attack_id=>nil, :stance_id=>nil, :waza_id=>nil, :rank_id=>5, :direction_id=>nil, :name=>"Tomesuemono", :kata_id=>2, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"Kata 15", :description=>"Table Cut", :related_id=>nil, :position=>7},
  {:id=>23, :technique_id=>4, :attack_id=>2, :stance_id=>3, :waza_id=>nil, :rank_id=>5, :direction_id=>nil, :name=>"Zenngogiri", :kata_id=>2, :format_id=>8, :attack_height_id=>nil, :on_test=>true, :short_description=>"Kata 4", :description=>"", :related_id=>nil, :position=>8},
  {:id=>24, :technique_id=>16, :attack_id=>nil, :stance_id=>nil, :waza_id=>2, :rank_id=>5, :direction_id=>nil, :name=>"Hiji Kata Both Sides", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"Elbow Kata", :description=>"", :related_id=>nil, :position=>nil},
  {:id=>25, :technique_id=>16, :attack_id=>nil, :stance_id=>nil, :waza_id=>2, :rank_id=>6, :direction_id=>nil, :name=>"Hiji Kata Right Side", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"Elbow Kata", :description=>"", :related_id=>nil, :position=>nil},
  {:id=>26, :technique_id=>14, :attack_id=>nil, :stance_id=>nil, :waza_id=>3, :rank_id=>6, :direction_id=>nil, :name=>"Suwari Waza Kokyu Ho", :kata_id=>nil, :format_id=>2, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil},
  {:id=>27, :technique_id=>8, :attack_id=>nil, :stance_id=>nil, :waza_id=>nil, :rank_id=>3, :direction_id=>nil, :name=>"Jo Kata 2", :kata_id=>nil, :format_id=>7, :attack_height_id=>nil, :on_test=>true, :short_description=>"", :description=>"", :related_id=>nil, :position=>nil}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2014-07-02 20:29:34 +0000
# Seeding Video
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Video.seed(:id,
  {:id=>1, :applied_technique_id=>1, :youtube_code=>"uz_HX7XSw_E", :primary=>true, :description=>"", :visible=>true, :for_demo=>true},
  {:id=>2, :applied_technique_id=>2, :youtube_code=>"QfRIObuixRg", :primary=>true, :description=>nil, :visible=>true, :for_demo=>false},
  {:id=>3, :applied_technique_id=>3, :youtube_code=>"G1NHjOGYXbU", :primary=>true, :description=>"", :visible=>true, :for_demo=>true},
  {:id=>4, :applied_technique_id=>4, :youtube_code=>"lYLsqOANqZ4", :primary=>true, :description=>"", :visible=>true, :for_demo=>true},
  {:id=>5, :applied_technique_id=>5, :youtube_code=>"bwYeN-OrFuU", :primary=>true, :description=>"", :visible=>true, :for_demo=>true},
  {:id=>6, :applied_technique_id=>6, :youtube_code=>"n52w3Oc36Sk", :primary=>true, :description=>nil, :visible=>true, :for_demo=>false},
  {:id=>7, :applied_technique_id=>7, :youtube_code=>"UyxKnC0S-VA", :primary=>true, :description=>nil, :visible=>true, :for_demo=>false},
  {:id=>8, :applied_technique_id=>8, :youtube_code=>"tPfAGrzrxo8", :primary=>true, :description=>nil, :visible=>true, :for_demo=>false},
  {:id=>9, :applied_technique_id=>9, :youtube_code=>"8j42pvdMEvU", :primary=>true, :description=>"", :visible=>true, :for_demo=>false},
  {:id=>10, :applied_technique_id=>10, :youtube_code=>"yVsO1Q18u0c", :primary=>true, :description=>nil, :visible=>true, :for_demo=>false},
  {:id=>11, :applied_technique_id=>11, :youtube_code=>"xxyGZ2TWmKE", :primary=>true, :description=>nil, :visible=>true, :for_demo=>false},
  {:id=>12, :applied_technique_id=>12, :youtube_code=>"AZ8PfWKlNDE", :primary=>true, :description=>nil, :visible=>true, :for_demo=>false},
  {:id=>13, :applied_technique_id=>13, :youtube_code=>"hH21Xdivvo0", :primary=>true, :description=>nil, :visible=>true, :for_demo=>false},
  {:id=>14, :applied_technique_id=>14, :youtube_code=>"sk9YHsTBQck", :primary=>true, :description=>"", :visible=>true, :for_demo=>false},
  {:id=>15, :applied_technique_id=>14, :youtube_code=>"oSlynDDLxAE", :primary=>false, :description=>"", :visible=>true, :for_demo=>false},
  {:id=>16, :applied_technique_id=>15, :youtube_code=>"ZxuDokKK2w8", :primary=>true, :description=>"", :visible=>true, :for_demo=>true},
  {:id=>17, :applied_technique_id=>15, :youtube_code=>"Pf2yV0dJuRs", :primary=>false, :description=>"", :visible=>true, :for_demo=>false},
  {:id=>18, :applied_technique_id=>16, :youtube_code=>"Ak0Tr9-PFtI", :primary=>true, :description=>"", :visible=>true, :for_demo=>false},
  {:id=>19, :applied_technique_id=>17, :youtube_code=>"OAiSs3CKzPo", :primary=>true, :description=>"", :visible=>true, :for_demo=>false},
  {:id=>20, :applied_technique_id=>18, :youtube_code=>"n/a", :primary=>true, :description=>"", :visible=>true, :for_demo=>true},
  {:id=>22, :applied_technique_id=>20, :youtube_code=>"7sW00HvCMBg", :primary=>true, :description=>nil, :visible=>true, :for_demo=>false},
  {:id=>23, :applied_technique_id=>21, :youtube_code=>"QaHTnbwWKW4", :primary=>true, :description=>nil, :visible=>true, :for_demo=>false},
  {:id=>24, :applied_technique_id=>22, :youtube_code=>"krwUoWyKtRk", :primary=>true, :description=>"", :visible=>true, :for_demo=>false},
  {:id=>25, :applied_technique_id=>23, :youtube_code=>"n/a", :primary=>true, :description=>nil, :visible=>true, :for_demo=>false},
  {:id=>26, :applied_technique_id=>24, :youtube_code=>"EjWTPWkA0aw", :primary=>true, :description=>"", :visible=>true, :for_demo=>false},
  {:id=>27, :applied_technique_id=>25, :youtube_code=>"ttEQ3uBch_E", :primary=>true, :description=>"", :visible=>true, :for_demo=>false},
  {:id=>28, :applied_technique_id=>26, :youtube_code=>"tiAntIn4H4c", :primary=>true, :description=>"", :visible=>true, :for_demo=>false},
  {:id=>29, :applied_technique_id=>9, :youtube_code=>"ABe5mXrWvJg", :primary=>false, :description=>"Discussion", :visible=>true, :for_demo=>false},
  {:id=>30, :applied_technique_id=>22, :youtube_code=>"kFkegO6JPvg", :primary=>false, :description=>"Discussion", :visible=>true, :for_demo=>false},
  {:id=>31, :applied_technique_id=>27, :youtube_code=>"bEx3dfiopfg", :primary=>true, :description=>"", :visible=>true, :for_demo=>false}
)
# End auto-generated file.
