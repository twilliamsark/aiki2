# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2015-09-05 04:55:24 +0000
# Seeding Stance
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Stance.seed(:id,
  {:id=>2, :name=>"Gyakuhanmi", :description=>"Opposing stance (i.e. uke right foot forward and nage left foot forward)", :short_description=>"Opposing"},
  {:id=>3, :name=>"Aihanmi", :description=>"Mirroring stance (i.e. uke and nage have same foot forward)", :short_description=>"Mirroring"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2015-09-05 04:55:24 +0000
# Seeding Attack
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Attack.seed(:id,
  {:id=>2, :name=>"Katatedori", :description=>"One hand grip on one wrist", :short_description=>""},
  {:id=>3, :name=>"Ryotedori", :description=>"Two hand grip on two writs", :short_description=>""},
  {:id=>4, :name=>"Shomenuchi", :description=>"Vertical strike to head with hand blade", :short_description=>""},
  {:id=>5, :name=>"Yokomenuchi", :description=>"Diagonal strike to neck or temple with hand blade", :short_description=>""},
  {:id=>6, :name=>"Morotedori", :description=>"Two hand grip on one wrist (Ryote Kata Dori)", :short_description=>""},
  {:id=>7, :name=>"Katadori", :description=>"One hand grip on shoulder", :short_description=>""},
  {:id=>8, :name=>"Ushiro Ryotedori", :description=>"Ryote Dori from behind", :short_description=>""},
  {:id=>9, :name=>"Katadori Menuchi", :description=>"Shoulder grab with head strike (shomen or tsuki", :short_description=>""},
  {:id=>10, :name=>"Tsuki", :description=>"Straight punch", :short_description=>""},
  {:id=>11, :name=>"Munedori", :description=>"One hand grip on lapel (Muna Mochi)", :short_description=>""},
  {:id=>12, :name=>"Sodedori", :description=>"One hand grip on sleeve", :short_description=>""},
  {:id=>14, :name=>"Katatedori Kubishime", :description=>"One hand grip on wrist and one hand choke from behind", :short_description=>""},
  {:id=>15, :name=>"Ryokatadori", :description=>"One hand grip on each shoulder", :short_description=>""},
  {:id=>16, :name=>"Ushiro Ryokatadori", :description=>"Ryokata Dori from behind", :short_description=>""}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2015-09-05 04:55:24 +0000
# Seeding Technique
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Technique.seed(:id,
  {:id=>2, :name=>"Kaitennage", :description=>"Rotary throw", :short_description=>nil},
  {:id=>3, :name=>"Kotegaeshi", :description=>"Wrist turn out", :short_description=>nil},
  {:id=>4, :name=>"Shihonage", :description=>"Four corners throw", :short_description=>nil},
  {:id=>5, :name=>"Ikkyo", :description=>"Wrist technique, generally palm down", :short_description=>nil},
  {:id=>6, :name=>"Iriminage", :description=>"Entering Throw", :short_description=>nil},
  {:id=>7, :name=>"Nikkyo", :description=>"Wrist technique, pressure applied on wrist towards Uke's body", :short_description=>nil},
  {:id=>8, :name=>"Jo Kata", :description=>"Sequential movements with a Jo", :short_description=>""},
  {:id=>9, :name=>"Sankyo", :description=>"Wrist technique, pressure applied against the wrist in a twisting motion towards Uke", :short_description=>nil},
  {:id=>10, :name=>"Yonkyo", :description=>"Wrist press, pressure is applied against Uke's forearm", :short_description=>nil},
  {:id=>11, :name=>"Gokyo", :description=>"Aikido fifth principle, in which the wrist is held palm up; usually employed against a knife attack", :short_description=>nil},
  {:id=>12, :name=>"Koshinage", :description=>"Hip throw", :short_description=>nil},
  {:id=>13, :name=>"Tenchinage", :description=>"Heaven and earth throw", :short_description=>nil},
  {:id=>14, :name=>"Kokyunage", :description=>"Breath throw, employing no joint locks", :short_description=>nil},
  {:id=>15, :name=>"Hiji Kata", :description=>"Hija (elbow) Kata", :short_description=>"Elbow Kata"},
  {:id=>16, :name=>"Hiji Kata", :description=>"Hija (elbow) Kata", :short_description=>"Elbow Kata"},
  {:id=>17, :name=>"Kokyuho", :description=>"Breath power", :short_description=>""},
  {:id=>18, :name=>"Udekimenage", :description=>"throw applying pressure to the underside of the elbow (or upper arm)", :short_description=>""},
  {:id=>19, :name=>"Iaido Only", :description=>"Aiki Toho that do not have a Tiado counterpart", :short_description=>""},
  {:id=>21, :name=>"Exercise", :description=>"", :short_description=>""},
  {:id=>22, :name=>"Bokken Suburi", :description=>"", :short_description=>""}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2015-09-05 04:55:24 +0000
# Seeding Direction
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Direction.seed(:id,
  {:id=>2, :name=>"Omote", :description=>"Finishing move is across the front", :short_description=>"front"},
  {:id=>3, :name=>"Ura", :description=>"Finishing move is across the back", :short_description=>"back"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2015-09-05 04:55:24 +0000
# Seeding Waza
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Waza.seed(:id,
  {:id=>1, :technique_id=>2, :attack_id=>2, :stance_id=>2, :direction_id=>2, :name=>"Gyakuhanmi Katatedori Kaitennage Omote", :short_description=>nil, :description=>nil, :position=>nil, :keywords=>"gyakuhanmi katatedori kaitennage omote gyakuhanmikatatedorikaitennageomote gyakuhanmi opposing katatedori kaitennage omote front ushirogiri gyaku hanmi kaiten nage omote gyakuhanmikaitennageomote aiki toho aikitoho iaido tiado hand 5th base john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>2, :technique_id=>3, :attack_id=>2, :stance_id=>2, :direction_id=>nil, :name=>"Gyakuhanmi Katatedori Kotegaeshi", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyakuhanmi katatedori kotegaeshi gyakuhanmikatatedorikotegaeshi gyakuhanmi opposing katatedori kotegaeshi jo no tebiki jonotebiki nage with jo nagewithjo miscellaneous"},
  {:id=>3, :technique_id=>4, :attack_id=>2, :stance_id=>2, :direction_id=>nil, :name=>"Gyakuhanmi Katatedori Shihonage", :short_description=>nil, :description=>nil, :position=>nil, :keywords=>"gyakuhanmi katatedori shihonage gyakuhanmikatatedorishihonage gyakuhanmi opposing katatedori shihonage sayugiri gyaku hanmi katate dori shiho nage gyakuhanmikatatedorishihonage aiki toho aikitoho iaido tiado hand 3rd base john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>4, :technique_id=>19, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Shohatto Maegiri", :short_description=>"Kata 1", :description=>"Front Cut", :position=>1, :keywords=>"shohatto maegiri shohattomaegiri iaido only iaidoonly shohatto maegiri shohattomaegiri first cut discussion firstcutdiscussion aiki toho aikitoho iaido 5th base john bollinger johnbollinger"},
  {:id=>8, :technique_id=>19, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Variation to Kata 3", :short_description=>"", :description=>"", :position=>5, :keywords=>"variation to kata 3 variationtokata3 iaido only iaidoonly variation to kata 3 variationtokata3 aiki toho aikitoho iaido 5th supplemental john bollinger johnbollinger"},
  {:id=>9, :technique_id=>5, :attack_id=>4, :stance_id=>3, :direction_id=>2, :name=>"Shomenuchi Ikkyo Omote", :short_description=>"", :description=>"", :position=>6, :keywords=>"shomenuchi ikkyo omote shomenuchiikkyoomote aihanmi mirroring shomenuchi ikkyo omote front kiriage kiriage aiki toho aikitoho iaido 5th supplemental john bollinger johnbollinger"},
  {:id=>10, :technique_id=>6, :attack_id=>2, :stance_id=>3, :direction_id=>nil, :name=>"Aihanmi Katatedori Iriminage", :short_description=>"", :description=>"", :position=>nil, :keywords=>"aihanmi katatedori iriminage aihanmikatatedoriiriminage aihanmi mirroring katatedori iriminage aihanmi katatedori iriminage aihanmikatatedoriiriminage aihanmi iriminage backstretch aihanmiiriminagebackstretch tiado hand 4th miscellaneous john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>11, :technique_id=>7, :attack_id=>2, :stance_id=>2, :direction_id=>nil, :name=>"Gyakuhanmi Katatedori Nikkyo", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyakuhanmi katatedori nikkyo gyakuhanmikatatedorinikkyo gyakuhanmi opposing katatedori nikkyo gyakuhanmi katatedori nikkyo gyakuhanmikatatedorinikkyo gyakuhanmi katatedori nikkyo gyakuhanmikatatedorinikkyo gyakuhanmi katatedori nikkyo (advanced) gyakuhanmikatatedorinikkyo(advanced) tsukaosae aiki toho aikitoho iaido tiado hand 3rd miscellaneous base john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>13, :technique_id=>6, :attack_id=>2, :stance_id=>2, :direction_id=>nil, :name=>"Gyakuhanmi Katatedori Iriminage", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyakuhanmi katatedori iriminage gyakuhanmikatatedoriiriminage gyakuhanmi opposing katatedori iriminage gyaku hanmi irimi nage gyakuhanmiiriminage gyaku hanmi irimi nage gyakuhanmiiriminage tiado hand 3rd john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>14, :technique_id=>5, :attack_id=>2, :stance_id=>2, :direction_id=>3, :name=>"Gyakuhanmi Katatedori Ikkyo Ura", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyakuhanmi katatedori ikkyo ura gyakuhanmikatatedoriikkyoura gyakuhanmi opposing katatedori ikkyo ura back gyakuhanmi katatedori ikkyo ura gyakuhanmikatatedoriikkyoura gyakuhanmi katatedori ikkyo ura gyakuhanmikatatedoriikkyoura gyakuhanmi katatedori ikkyo ura classic gyakuhanmikatatedoriikkyouraclassic gyaku hanmi katate dori ikkyo ura gyakuhanmikatatedoriikkyoura gyaku hanmi katate dori ikkyo ura gyakuhanmikatatedoriikkyoura aiki toho aikitoho iaido tiado hand 4th 3rd supplemental john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>15, :technique_id=>5, :attack_id=>2, :stance_id=>2, :direction_id=>2, :name=>"Gyakuhanmi Katatedori Ikkyo Omote", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyakuhanmi katatedori ikkyo omote gyakuhanmikatatedoriikkyoomote gyakuhanmi opposing katatedori ikkyo omote front ken ti ken kentiken sword vs sword swordvssword miscellaneous"},
  {:id=>16, :technique_id=>8, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Jo Kata 1", :short_description=>"", :description=>"", :position=>nil, :keywords=>"jo kata 1 jokata1 jo kata jokata jo kata 1 both sides jokata1bothsides jo kata 1 right side jokata1rightside other 3rd 4th john bollinger johnbollinger"},
  {:id=>18, :technique_id=>5, :attack_id=>2, :stance_id=>3, :direction_id=>2, :name=>"Aihanmi Katatedori Ikkyo Omote", :short_description=>nil, :description=>nil, :position=>nil, :keywords=>"aihanmi katatedori ikkyo omote aihanmikatatedoriikkyoomote aihanmi mirroring katatedori ikkyo omote front ai hanmi katate dori ikkyo omote aihanmikatatedoriikkyoomote ukenagashi ai hanmi kata dori ikkyo omote variation aihanmikatadoriikkyoomotevariation tiado hand aiki toho aikitoho iaido 4th 5th base supplemental john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>19, :technique_id=>6, :attack_id=>4, :stance_id=>3, :direction_id=>nil, :name=>"Shomenuchi Iriminage", :short_description=>"", :description=>"", :position=>nil, :keywords=>"shomenuchi iriminage shomenuchiiriminage aihanmi mirroring shomenuchi iriminage suwariwaza shomenuchi iriminage suwariwazashomenuchiiriminage shomenuchi iriminage shomenuchiiriminage tiado hand 2nd 3rd john bollinger johnbollinger suwari waza suwariwaza tachi waza tachiwaza"},
  {:id=>21, :technique_id=>3, :attack_id=>4, :stance_id=>3, :direction_id=>nil, :name=>"Shomenuchi Kotegaeshi", :short_description=>"", :description=>"", :position=>nil, :keywords=>"shomenuchi kotegaeshi shomenuchikotegaeshi aihanmi mirroring shomenuchi kotegaeshi shomenuchi kotegaeshi (aiki toho) shomenuchikotegaeshi(aikitoho) shomenuchi kotegaeshi shomenuchikotegaeshi suwari waza kote gaeshi suwariwazakotegaeshi aiki toho aikitoho iaido tiado hand 4th 2nd 3rd supplemental john bollinger johnbollinger tachi waza tachiwaza suwari waza suwariwaza"},
  {:id=>22, :technique_id=>19, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Tomesuemono", :short_description=>"Kata 15", :description=>"Table Cut", :position=>7, :keywords=>"tomesuemono tomesuemono iaido only iaidoonly tomesuemono tomesuemono tomesuemono aiki toho aikitoho iaido 4th base john bollinger johnbollinger"},
  {:id=>23, :technique_id=>4, :attack_id=>2, :stance_id=>3, :direction_id=>2, :name=>"Aihanmi Katatedori Shihonage Omote", :short_description=>"", :description=>"", :position=>8, :keywords=>"aihanmi katatedori shihonage omote aihanmikatatedorishihonageomote aihanmi mirroring katatedori shihonage omote front aihanmi katatedori shihonage omote aihanmikatatedorishihonageomote zenngogiri aiki toho aikitoho iaido 3rd 4th supplemental base john bollinger johnbollinger"},
  {:id=>24, :technique_id=>16, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Hiji Kata", :short_description=>"Elbow Kata", :description=>"", :position=>nil, :keywords=>"hiji kata hijikata hiji kata hijikata elbow kata elbowkata hiji kata both sides hijikatabothsides hiji kata right side hijikatarightside other 4th 5th john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>26, :technique_id=>17, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Kokyuho", :short_description=>"", :description=>"", :position=>nil, :keywords=>"kokyuho kokyuho kokyuho kokyuho exercise kokyuhoexercise suwari waza kokyu ho suwariwazakokyuho kokyuho (tiado) kokyuho(tiado) tiado hand miscellaneous 5th john bollinger johnbollinger tachi waza tachiwaza suwari waza suwariwaza"},
  {:id=>27, :technique_id=>8, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Jo Kata 2", :short_description=>"", :description=>"", :position=>nil, :keywords=>"jo kata 2 jokata2 jo kata jokata jo kata 2 jokata2 jo kata 2 (other) jokata2(other) other 2nd john bollinger johnbollinger"},
  {:id=>28, :technique_id=>17, :attack_id=>2, :stance_id=>2, :direction_id=>nil, :name=>"Gyakuhanmi Katatedori Kokyuho", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyakuhanmi katatedori kokyuho gyakuhanmikatatedorikokyuho gyakuhanmi opposing katatedori kokyuho gyaku hanmi kokyu ho gyakuhanmikokyuho tiado hand miscellaneous john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>29, :technique_id=>7, :attack_id=>2, :stance_id=>2, :direction_id=>nil, :name=>"Zempo Gaidan Kushushi Nikkyo", :short_description=>"", :description=>"Quick entry to Nikkyo. Zempo Gedan(Gaidan) Kushushi translates roughly to 'Forward off balance to the lower'.", :position=>nil, :keywords=>"zempo gaidan kushushi nikkyo zempogaidankushushinikkyo gyakuhanmi opposing katatedori nikkyo zempo gaidan kushushi nikkyo zempogaidankushushinikkyo zempo gaidan kushushi nikkyo zempogaidankushushinikkyo zempo gaidan kushushi nikkyo zempogaidankushushinikkyo zempo gaidan kushushi nikkyo zempogaidankushushinikkyo aiki toho aikitoho iaido tiado hand 3rd 2nd miscellaneous supplemental john bollinger johnbollinger gedan lower height lowerheight tachi waza tachiwaza"},
  {:id=>30, :technique_id=>18, :attack_id=>2, :stance_id=>3, :direction_id=>nil, :name=>"Aihanmi Katatedori Udekimenage", :short_description=>"", :description=>"", :position=>nil, :keywords=>"aihanmi katatedori udekimenage aihanmikatatedoriudekimenage aihanmi mirroring katatedori udekimenage ai hanmi udekimenage aihanmiudekimenage tiado hand miscellaneous john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>31, :technique_id=>4, :attack_id=>3, :stance_id=>nil, :direction_id=>2, :name=>"Ryotedori Shihonage Omote", :short_description=>"", :description=>"", :position=>nil, :keywords=>"ryotedori shihonage omote ryotedorishihonageomote ryotedori shihonage omote front ryote dori shiho nage ryotedorishihonage tiado hand 5th john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>32, :technique_id=>6, :attack_id=>10, :stance_id=>2, :direction_id=>nil, :name=>"Gyakuhanmi Tsuki Iriminage", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyakuhanmi tsuki iriminage gyakuhanmitsukiiriminage gyakuhanmi opposing tsuki iriminage tsuki iriminage tsukiiriminage tsuki iriminage tsukiiriminage tsuki iriminage (position) tsukiiriminage(position) tsuki iriminage (blending) tsukiiriminage(blending) tsuki iriminage (entrance) tsukiiriminage(entrance) oyo waza oyowaza advanced miscellaneous john bollinger johnbollinger jodan upper height upperheight tachi waza tachiwaza"},
  {:id=>33, :technique_id=>3, :attack_id=>10, :stance_id=>2, :direction_id=>nil, :name=>"Gyakuhanmi Tsuki Kotegaeshi", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyakuhanmi tsuki kotegaeshi gyakuhanmitsukikotegaeshi gyakuhanmi opposing tsuki kotegaeshi tsuki kotegaeshi tsukikotegaeshi gyakuhanmi tsuki kotegaeshi (oyo waza) gyakuhanmitsukikotegaeshi(oyowaza) oyo waza oyowaza advanced miscellaneous john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>34, :technique_id=>3, :attack_id=>2, :stance_id=>3, :direction_id=>nil, :name=>"Aihanmi Katatedori Kotegaeshi", :short_description=>"", :description=>"", :position=>nil, :keywords=>"aihanmi katatedori kotegaeshi aihanmikatatedorikotegaeshi aihanmi mirroring katatedori kotegaeshi ken no tebiki kennotebiki nage with sword nagewithsword miscellaneous"},
  {:id=>36, :technique_id=>7, :attack_id=>4, :stance_id=>3, :direction_id=>nil, :name=>"Shomenuchi Nikkyo", :short_description=>"", :description=>"", :position=>nil, :keywords=>"shomenuchi nikkyo shomenuchinikkyo aihanmi mirroring shomenuchi nikkyo shomenuchi nikkyo shomenuchinikkyo shomenuchi nikkyo (tiado) shomenuchinikkyo(tiado) shomenuchi nikkyo (tiado) shomenuchinikkyo(tiado) shomenuchi nikkyo (ken ti ken) shomenuchinikkyo(kentiken) ken ti ken kentiken sword vs sword swordvssword tiado hand oyo waza oyowaza advanced miscellaneous 2nd john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>37, :technique_id=>7, :attack_id=>2, :stance_id=>3, :direction_id=>nil, :name=>"Aihanmi Katatedori Nikkyo", :short_description=>"", :description=>"", :position=>nil, :keywords=>"aihanmi katatedori nikkyo aihanmikatatedorinikkyo aihanmi mirroring katatedori nikkyo tekubiosae tekubiosae iaijutsu variation tekubiosaeiaijutsuvariation aihanmi katatedori nikkyo (ken no tebiki) aihanmikatatedorinikkyo(kennotebiki) ken ti ken nikkyo kentikennikkyo ken ti jo nikkyo kentijonikkyo ai hanmi nikkyo aihanminikkyo aihanmi katatedori nikkyo (tiado) aihanmikatatedorinikkyo(tiado) aiki toho aikitoho iaido ken no tebiki kennotebiki nage with sword nagewithsword ken ti ken kentiken sword vs sword swordvssword ken ti jo kentijo sword vs jo swordvsjo tiado hand 3rd miscellaneous base supplemental john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>39, :technique_id=>5, :attack_id=>2, :stance_id=>3, :direction_id=>3, :name=>"Aihanmi Katatedori Ikkyo Ura", :short_description=>nil, :description=>nil, :position=>nil, :keywords=>"aihanmi katatedori ikkyo ura aihanmikatatedoriikkyoura aihanmi mirroring katatedori ikkyo ura back aihanmi katatedori ikkyo ura (oyo waza) aihanmikatatedoriikkyoura(oyowaza) aihanmi katatedori ikkyo ura (oyo waza) aihanmikatatedoriikkyoura(oyowaza) aihanmi katatedori ikkyo ura aihanmikatatedoriikkyoura oyo waza oyowaza advanced tiado hand miscellaneous 4th john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>40, :technique_id=>5, :attack_id=>9, :stance_id=>nil, :direction_id=>3, :name=>"Katadori Menuchi Ikkyo Ura", :short_description=>nil, :description=>nil, :position=>nil, :keywords=>"katadori menuchi ikkyo ura katadorimenuchiikkyoura katadori menuchi katadorimenuchi ikkyo ura back katadori menuchi ikkyo ura katadorimenuchiikkyoura tiado hand 1st john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>41, :technique_id=>21, :attack_id=>9, :stance_id=>nil, :direction_id=>nil, :name=>"Katadori Menuchi", :short_description=>"", :description=>"", :position=>nil, :keywords=>"katadori menuchi katadorimenuchi katadori menuchi katadorimenuchi exercise katadori menuchi exercise katadorimenuchiexercise tiado hand 1st john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>42, :technique_id=>22, :attack_id=>nil, :stance_id=>nil, :direction_id=>nil, :name=>"Bokken Suburi", :short_description=>nil, :description=>nil, :position=>nil, :keywords=>"bokken suburi bokkensuburi bokken suburi bokkensuburi bokken suburi bokkensuburi other 5th john bollinger johnbollinger"},
  {:id=>43, :technique_id=>3, :attack_id=>5, :stance_id=>2, :direction_id=>nil, :name=>"Yokomenuchi Kotegaeshi", :short_description=>"", :description=>"", :position=>nil, :keywords=>"yokomenuchi kotegaeshi yokomenuchikotegaeshi gyakuhanmi opposing yokomenuchi kotegaeshi yokomenuchi kotegaeshi (aiki toho) yokomenuchikotegaeshi(aikitoho) yokomenuchi kotegaeshi (tiado) yokomenuchikotegaeshi(tiado) aiki toho aikitoho iaido tiado hand 4th 2nd supplemental john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>44, :technique_id=>11, :attack_id=>5, :stance_id=>nil, :direction_id=>nil, :name=>"Yokomenuchi Gokyo", :short_description=>"", :description=>"", :position=>nil, :keywords=>"yokomenuchi gokyo yokomenuchigokyo yokomenuchi gokyo yokomenuchi gokyo (tiado) yokomenuchigokyo(tiado) yokomenuchi gokyo (tiado) yokomenuchigokyo(tiado) tiado hand 2nd john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>45, :technique_id=>6, :attack_id=>9, :stance_id=>nil, :direction_id=>nil, :name=>"Katadori Menuchi Iriminage", :short_description=>"", :description=>"", :position=>nil, :keywords=>"katadori menuchi iriminage katadorimenuchiiriminage katadori menuchi katadorimenuchi iriminage katadori menuchi iriminage (tiado) katadorimenuchiiriminage(tiado) katadori menuchi iriminage (tiado) katadorimenuchiiriminage(tiado) tiado hand 1st john bollinger johnbollinger tachi waza tachiwaza"},
  {:id=>46, :technique_id=>7, :attack_id=>nil, :stance_id=>3, :direction_id=>nil, :name=>"Aihanmi Kiriage Nikyo", :short_description=>"", :description=>"", :position=>nil, :keywords=>"aihanmi kiriage nikyo aihanmikiriagenikyo aihanmi mirroring nikkyo aihanmi kiriage nikkyo aihanmikiriagenikkyo aiki toho aikitoho iaido 3rd supplemental john bollinger johnbollinger"},
  {:id=>47, :technique_id=>4, :attack_id=>2, :stance_id=>3, :direction_id=>3, :name=>"Aihanmi Katatedori Shihonage Ura", :short_description=>"", :description=>"", :position=>nil, :keywords=>"aihanmi katatedori shihonage ura aihanmikatatedorishihonageura aihanmi mirroring katatedori shihonage ura back aihanmi shihonage ura aihanmishihonageura aiki toho aikitoho iaido 3rd supplemental john bollinger johnbollinger"},
  {:id=>48, :technique_id=>9, :attack_id=>2, :stance_id=>2, :direction_id=>nil, :name=>"Gyakuhanmi Katatedori Sankyo", :short_description=>nil, :description=>nil, :position=>nil, :keywords=>"gyakuhanmi katatedori sankyo gyakuhanmikatatedorisankyo gyakuhanmi opposing katatedori sankyo tiado hand 3rd"},
  {:id=>49, :technique_id=>5, :attack_id=>2, :stance_id=>2, :direction_id=>2, :name=>"Gyakuhanmi Katatedori Ikkyo Omote", :short_description=>"", :description=>"", :position=>nil, :keywords=>"gyakuhanmi katatedori ikkyo omote gyakuhanmikatatedoriikkyoomote gyakuhanmi opposing katatedori ikkyo omote front gyakuhanmi ikkyo omote ken ti jo gyakuhanmiikkyoomotekentijo ken ti jo kentijo sword vs jo swordvsjo miscellaneous john bollinger johnbollinger"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2015-09-05 04:55:24 +0000
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
  {:id=>7, :name=>"Other", :description=>"Other Techniques", :short_description=>"", :position=>99},
  {:id=>8, :name=>"Aiki Toho", :description=>"Japanese swordsmanship", :short_description=>"Iaido", :position=>2},
  {:id=>9, :name=>"Oyo Waza", :description=>"Advanced version or application of the technique", :short_description=>"Advanced", :position=>8}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2015-09-05 04:55:24 +0000
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
# Date: 2015-09-05 04:55:24 +0000
# Seeding Style
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Style.seed(:id,
  {:id=>2, :name=>"Tachi Waza", :description=>"Standing technique", :short_description=>nil},
  {:id=>3, :name=>"Suwari Waza", :description=>"Technique where both uke and nage are seated", :short_description=>nil},
  {:id=>4, :name=>"Hanmi Hadachi Waza", :description=>"Technique where one person standing and one person sitting", :short_description=>nil}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2015-09-05 04:55:24 +0000
# Seeding Sensei
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
Sensei.seed(:id,
  {:id=>1, :name=>"John Bollinger", :dojo=>"Aikido Center of San Antonio"}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2015-09-05 04:55:24 +0000
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
# Date: 2015-09-05 04:55:24 +0000
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
# Date: 2015-09-05 04:55:24 +0000
# Seeding WazaFormat
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
WazaFormat.seed(:id,
  {:id=>1, :waza_id=>1, :format_id=>2, :rank_id=>6, :on_test=>true, :description=>nil},
  {:id=>2, :waza_id=>2, :format_id=>2, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>3, :waza_id=>3, :format_id=>2, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>4, :waza_id=>4, :format_id=>8, :rank_id=>6, :on_test=>true, :description=>nil},
  {:id=>5, :waza_id=>18, :format_id=>8, :rank_id=>6, :on_test=>true, :description=>nil},
  {:id=>7, :waza_id=>1, :format_id=>8, :rank_id=>6, :on_test=>true, :description=>nil},
  {:id=>8, :waza_id=>8, :format_id=>8, :rank_id=>6, :on_test=>false, :description=>nil},
  {:id=>9, :waza_id=>9, :format_id=>8, :rank_id=>6, :on_test=>true, :description=>nil},
  {:id=>10, :waza_id=>10, :format_id=>2, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>11, :waza_id=>11, :format_id=>2, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>12, :waza_id=>2, :format_id=>9, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>13, :waza_id=>13, :format_id=>2, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>14, :waza_id=>14, :format_id=>2, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>15, :waza_id=>15, :format_id=>2, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>16, :waza_id=>16, :format_id=>7, :rank_id=>5, :on_test=>true, :description=>nil},
  {:id=>17, :waza_id=>16, :format_id=>7, :rank_id=>4, :on_test=>true, :description=>"Both Sides"},
  {:id=>18, :waza_id=>18, :format_id=>2, :rank_id=>5, :on_test=>true, :description=>nil},
  {:id=>19, :waza_id=>19, :format_id=>2, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>21, :waza_id=>21, :format_id=>2, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>22, :waza_id=>22, :format_id=>8, :rank_id=>5, :on_test=>true, :description=>nil},
  {:id=>23, :waza_id=>23, :format_id=>8, :rank_id=>5, :on_test=>true, :description=>nil},
  {:id=>24, :waza_id=>24, :format_id=>7, :rank_id=>5, :on_test=>true, :description=>"Both Sides"},
  {:id=>25, :waza_id=>24, :format_id=>7, :rank_id=>6, :on_test=>true, :description=>nil},
  {:id=>26, :waza_id=>26, :format_id=>2, :rank_id=>6, :on_test=>true, :description=>nil},
  {:id=>27, :waza_id=>27, :format_id=>7, :rank_id=>3, :on_test=>true, :description=>nil},
  {:id=>28, :waza_id=>28, :format_id=>2, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>29, :waza_id=>29, :format_id=>2, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>30, :waza_id=>30, :format_id=>2, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>31, :waza_id=>31, :format_id=>2, :rank_id=>6, :on_test=>true, :description=>nil},
  {:id=>32, :waza_id=>32, :format_id=>9, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>33, :waza_id=>33, :format_id=>9, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>34, :waza_id=>34, :format_id=>5, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>35, :waza_id=>34, :format_id=>6, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>36, :waza_id=>36, :format_id=>9, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>37, :waza_id=>37, :format_id=>2, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>40, :waza_id=>37, :format_id=>5, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>41, :waza_id=>37, :format_id=>6, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>43, :waza_id=>39, :format_id=>2, :rank_id=>5, :on_test=>true, :description=>nil},
  {:id=>44, :waza_id=>40, :format_id=>2, :rank_id=>2, :on_test=>true, :description=>nil},
  {:id=>45, :waza_id=>41, :format_id=>2, :rank_id=>2, :on_test=>false, :description=>nil},
  {:id=>46, :waza_id=>42, :format_id=>7, :rank_id=>6, :on_test=>true, :description=>nil},
  {:id=>47, :waza_id=>11, :format_id=>2, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>49, :waza_id=>26, :format_id=>2, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>50, :waza_id=>19, :format_id=>2, :rank_id=>3, :on_test=>true, :description=>nil},
  {:id=>51, :waza_id=>2, :format_id=>3, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>52, :waza_id=>2, :format_id=>4, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>53, :waza_id=>34, :format_id=>2, :rank_id=>5, :on_test=>true, :description=>nil},
  {:id=>55, :waza_id=>21, :format_id=>2, :rank_id=>3, :on_test=>true, :description=>nil},
  {:id=>56, :waza_id=>34, :format_id=>4, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>57, :waza_id=>34, :format_id=>3, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>58, :waza_id=>36, :format_id=>2, :rank_id=>3, :on_test=>true, :description=>nil},
  {:id=>59, :waza_id=>36, :format_id=>5, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>60, :waza_id=>37, :format_id=>3, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>61, :waza_id=>44, :format_id=>2, :rank_id=>3, :on_test=>true, :description=>nil},
  {:id=>62, :waza_id=>43, :format_id=>2, :rank_id=>3, :on_test=>true, :description=>nil},
  {:id=>63, :waza_id=>45, :format_id=>2, :rank_id=>2, :on_test=>true, :description=>nil},
  {:id=>64, :waza_id=>39, :format_id=>9, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>65, :waza_id=>10, :format_id=>2, :rank_id=>5, :on_test=>true, :description=>nil},
  {:id=>66, :waza_id=>14, :format_id=>8, :rank_id=>5, :on_test=>true, :description=>nil},
  {:id=>67, :waza_id=>29, :format_id=>8, :rank_id=>3, :on_test=>false, :description=>nil},
  {:id=>68, :waza_id=>3, :format_id=>8, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>69, :waza_id=>23, :format_id=>8, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>70, :waza_id=>43, :format_id=>8, :rank_id=>5, :on_test=>true, :description=>nil},
  {:id=>71, :waza_id=>21, :format_id=>8, :rank_id=>5, :on_test=>true, :description=>nil},
  {:id=>72, :waza_id=>11, :format_id=>8, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>73, :waza_id=>15, :format_id=>8, :rank_id=>5, :on_test=>true, :description=>nil},
  {:id=>74, :waza_id=>37, :format_id=>8, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>75, :waza_id=>46, :format_id=>8, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>76, :waza_id=>47, :format_id=>8, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>77, :waza_id=>29, :format_id=>8, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>78, :waza_id=>48, :format_id=>2, :rank_id=>4, :on_test=>true, :description=>nil},
  {:id=>79, :waza_id=>49, :format_id=>6, :rank_id=>10, :on_test=>false, :description=>nil},
  {:id=>80, :waza_id=>15, :format_id=>5, :rank_id=>10, :on_test=>false, :description=>nil}
)
# End auto-generated file.
# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2015-09-05 04:55:24 +0000
# Seeding WazaFormatVideo
# Written with the command:
#
#   /app/vendor/bundle/ruby/2.0.0/bin/rake aiki:dump_to_seed_fu
#
WazaFormatVideo.seed(:id,
  {:id=>2, :waza_format_id=>1, :video_id=>1},
  {:id=>3, :waza_format_id=>2, :video_id=>2},
  {:id=>4, :waza_format_id=>3, :video_id=>3},
  {:id=>5, :waza_format_id=>4, :video_id=>4},
  {:id=>6, :waza_format_id=>5, :video_id=>5},
  {:id=>7, :waza_format_id=>5, :video_id=>6},
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
  {:id=>47, :waza_format_id=>41, :video_id=>47},
  {:id=>49, :waza_format_id=>43, :video_id=>49},
  {:id=>50, :waza_format_id=>44, :video_id=>50},
  {:id=>51, :waza_format_id=>45, :video_id=>51},
  {:id=>52, :waza_format_id=>46, :video_id=>52},
  {:id=>53, :waza_format_id=>47, :video_id=>53},
  {:id=>54, :waza_format_id=>48, :video_id=>54},
  {:id=>55, :waza_format_id=>4, :video_id=>55},
  {:id=>56, :waza_format_id=>33, :video_id=>56},
  {:id=>57, :waza_format_id=>32, :video_id=>57},
  {:id=>58, :waza_format_id=>32, :video_id=>58},
  {:id=>59, :waza_format_id=>32, :video_id=>59},
  {:id=>60, :waza_format_id=>32, :video_id=>60},
  {:id=>61, :waza_format_id=>49, :video_id=>61},
  {:id=>62, :waza_format_id=>50, :video_id=>62},
  {:id=>63, :waza_format_id=>51, :video_id=>63},
  {:id=>64, :waza_format_id=>52, :video_id=>64},
  {:id=>65, :waza_format_id=>53, :video_id=>65},
  {:id=>66, :waza_format_id=>54, :video_id=>66},
  {:id=>67, :waza_format_id=>53, :video_id=>66},
  {:id=>68, :waza_format_id=>55, :video_id=>67},
  {:id=>69, :waza_format_id=>26, :video_id=>68},
  {:id=>70, :waza_format_id=>56, :video_id=>69},
  {:id=>71, :waza_format_id=>57, :video_id=>70},
  {:id=>72, :waza_format_id=>58, :video_id=>71},
  {:id=>73, :waza_format_id=>58, :video_id=>72},
  {:id=>74, :waza_format_id=>59, :video_id=>73},
  {:id=>75, :waza_format_id=>37, :video_id=>74},
  {:id=>76, :waza_format_id=>60, :video_id=>75},
  {:id=>77, :waza_format_id=>61, :video_id=>76},
  {:id=>78, :waza_format_id=>61, :video_id=>77},
  {:id=>79, :waza_format_id=>62, :video_id=>78},
  {:id=>80, :waza_format_id=>27, :video_id=>79},
  {:id=>81, :waza_format_id=>63, :video_id=>80},
  {:id=>82, :waza_format_id=>63, :video_id=>81},
  {:id=>83, :waza_format_id=>64, :video_id=>82},
  {:id=>84, :waza_format_id=>64, :video_id=>83},
  {:id=>85, :waza_format_id=>65, :video_id=>84},
  {:id=>86, :waza_format_id=>66, :video_id=>85},
  {:id=>87, :waza_format_id=>67, :video_id=>86},
  {:id=>88, :waza_format_id=>68, :video_id=>87},
  {:id=>89, :waza_format_id=>69, :video_id=>88},
  {:id=>90, :waza_format_id=>70, :video_id=>89},
  {:id=>91, :waza_format_id=>71, :video_id=>90},
  {:id=>92, :waza_format_id=>72, :video_id=>91},
  {:id=>93, :waza_format_id=>66, :video_id=>92},
  {:id=>94, :waza_format_id=>66, :video_id=>93},
  {:id=>95, :waza_format_id=>73, :video_id=>94},
  {:id=>96, :waza_format_id=>74, :video_id=>95},
  {:id=>97, :waza_format_id=>74, :video_id=>96},
  {:id=>98, :waza_format_id=>22, :video_id=>97},
  {:id=>99, :waza_format_id=>75, :video_id=>98},
  {:id=>100, :waza_format_id=>76, :video_id=>99},
  {:id=>101, :waza_format_id=>77, :video_id=>100},
  {:id=>102, :waza_format_id=>78, :video_id=>101}
)
# BREAK EVAL
WazaFormatVideo.seed(:id,
  {:id=>103, :waza_format_id=>79, :video_id=>102},
  {:id=>104, :waza_format_id=>80, :video_id=>103}
)
# End auto-generated file.
