AttackHeight.seed(:id, [
  {id: 1, name: 'Any', short_description: nil, description: nil},
  {id: 2, name: 'Jodan', short_description: 'upper height', description: 'Upper level, neck and above'},
  {id: 3, name: 'Chudan', short_description: 'torso height', description: 'Middle level, torso area'},
  {id: 4, name: 'Gedan', short_description: 'lower height', description: 'Lower level, groin and below'}
])

Format.seed(:id, [
  {id: 1, name: 'Any',            position: 0, short_description: nil, description: nil},
  {id: 2, name: 'Tiado',          position: 1, short_description: 'hand',             description: 'Way of the hand'},
  {id: 3, name: 'Ken no Tebiki',  position: 4, short_description: 'nage with sword',  description: 'With sword guidance (one person with boken)'},
  {id: 4, name: 'Jo no Tebiki',   position: 3, short_description: 'nage with jo',     description: 'With jo guidance (one person with jo)'},
  {id: 5, name: 'Ken ti Ken',     position: 6, short_description: 'sword vs sword',   description: 'Sword vs Sword (bokens)'},
  {id: 6, name: 'Ken ti Jo',      position: 5, short_description: 'sword vs jo',      description: 'Sword(boken) vs Jo'},
  {id: 7, name: 'Suburi',         position: 7, short_description: 'weapon (non-Iaido) kata',      description: 'A single movement using the ken or jo, done as a solo practice'},
  {id: 8, name: 'Aiki Toho',      position: 2, short_description: 'Iaido',            description: 'Japanese swordsmanship'},
  {id: 9, name: 'Oyo Waza',       position: 8, short_description: 'Advanced',         description: 'Advanced version or application of the technique'}
])

Stance.seed(:id, [
  {id: 1, name: 'Any', short_description: nil, description: nil},
  {id: 2, name: 'Gyaku Hanmi', short_description: 'Opposing', description: 'Opposing stance (i.e. uke right foot forward and nage left foot forward)'},
  {id: 3, name: 'Ai Hanmi', short_description: 'Mirroring', description: 'Mirroring stance (i.e. uke and nage have same foot forward)'}
])

Waza.seed(:id, [
  {id: 1, name: 'Any', short_description: nil, description: nil},
  {id: 2, name: 'Tachi Waza', description: 'Standing technique'},
  {id: 3, name: 'Suwari Waza', description: 'Technique where both uke and nage are seated'},
  {id: 4, name: 'Hanmi Hadachi Waza', description: 'Technique where one person standing and one person sitting'}
])

Direction.seed(:id, [
  {id: 1, name: 'Any', description: nil},
  {id: 2, name: 'Omote', short_description: 'front', description: 'Entering in the front, throw is across the front'},
  {id: 3, name: 'Ura', short_description: 'back', description: 'Entering in the back, throw is across the back'}
])

Rank.seed(:id, [
  {id: 1, name: 'Any',          short_description: nil, description: nil, belt: nil, position: 0},
  {id: 6, name: '5th', short_description: nil, description: 'Gokyu',  belt: 'White', position: 1},
  {id: 5, name: '4th', short_description: nil, description: 'Yonkyu', belt: 'White', position: 2},
  {id: 4, name: '3rd', short_description: nil, description: 'Sankyu', belt: 'White', position: 3},
  {id: 3, name: '2nd', short_description: nil, description: 'Nikyu',  belt: 'White', position: 4},
  {id: 2, name: '1st', short_description: nil, description: 'Ikkyu',  belt: 'White', position: 5},
  {id: 7, name: '1st', short_description: nil, description: 'Shodan', belt: 'Black', position: 6},
  {id: 8, name: '2nd', short_description: nil, description: 'Nidan',  belt: 'Black', position: 7},
  {id: 9, name: '3rd', short_description: nil, description: 'Sandan', belt: 'Black', position: 8},
  {id: 10, name: 'Miscellaneous', short_description: nil, description: 'Non-ranked', position: 99}
])

Attack.seed(:id, [
  {id: 1, name: 'Any',          short_description: nil, description: nil},
  {id: 2, name: 'Katate Dori', short_description: nil, description: 'One hand grip on one wrist'},
  {id: 3, name: 'Ryote Dori', short_description: nil, description: 'Two hand grip on two writs'},
  {id: 4, name: 'Shomen Uchi', short_description: nil, description: 'Vertical strike to head with hand blade'},
  {id: 5, name: 'Yokomen Uchi', short_description: nil, description: 'Diagonal strike to neck or temple with hand blade'},
  {id: 6, name: 'Morote Dori', short_description: nil, description: 'Two hand grip on one wrist (Ryote Kata Dori)'},
  {id: 7, name: 'Kata Dori', short_description: nil, description: 'One hand grip on shoulder'},
  {id: 8, name: 'Ushiro Ryote Dori', short_description: nil, description: 'Ryote Dori from behind'},
  {id: 9, name: 'Kata Dori Menuchi', short_description: nil, description: 'Shoulder grab with head strike (shomen or tsuki'},
  {id: 10, name: 'Tsuki', short_description: nil, description: 'Straight punch'},
  {id: 11, name: 'Mune Dori', short_description: nil, description: 'One hand grip on lapel (Muna Mochi)'},
  {id: 12, name: 'Sode Dori', short_description: nil, description: 'One hand grip on sleeve'},
  {id: 14, name: 'Katate Dori Kubishime', short_description: nil, description: 'One hand grip on wrist and one hand choke from behind'},
  {id: 15, name: 'Ryokata Dori', short_description: nil, description: 'One hand grip on each shoulder'},
  {id: 16, name: 'Ushiro Ryokata Dori', short_description: nil, description: 'Ryokata Dori from behind'}
])

Kata.seed(:id, [
  {id: 1, name: 'Supplemental', description: 'Extra katas'},
  {id: 2, name: 'Core', description: 'Core 15 katas'}
])

Technique.seed(:id, [
  {id: 1, name: 'Any',          short_description: nil, description: nil},
  {id: 2, name: 'Kaiten Nage',  short_description: nil, description: 'Rotary throw'},
  {id: 3, name: 'Kote Gaeshi',  short_description: nil, description: 'Wrist turn out'},
  {id: 4, name: 'Shiho Nage',   short_description: nil, description: 'Four corners throw'},
  {id: 5, name: 'Ikkyo',        short_description: nil, description: 'Wrist technique, generally palm down'},
  {id: 6, name: 'Irimi Nage',   short_description: nil, description: 'Entering Throw'},
  {id: 7, name: 'Nikkyo',       short_description: nil, description: "Wrist technique, pressure applied on wrist towards Uke's body"},
  {id: 8, name: 'Jo Kata',      short_description: nil, description: 'Sequential movements with a Jo'},
  {id: 9, name: 'Sankyo',       short_description: nil, description: "Wrist technique, pressure applied against the wrist in a twisting motion towards Uke"},
  {id: 10, name: 'Yonkyo',      short_description: nil, description: "Wrist press, pressure is applied against Uke's forearm"},
  {id: 11, name: 'Gokyo',       short_description: nil, description: "Aikido fifth principle, in which the wrist is held palm up; usually employed against a knife attack"},
  {id: 12, name: 'Koshi Nage',  short_description: nil, description: 'Hip throw'},
  {id: 13, name: 'Tenchi Nage', short_description: nil, description: 'Heaven and earth throw'},
  {id: 14, name: 'Kokyu Nage',  short_description: nil, description: 'Breath throw, employing no joint locks'}
])

AppliedTechnique.seed(:id, [
  {id: 4,   name: 'Shohatto Maegiri',                           related_id: nil, short_description: 'Kata 1', description: 'Front Cut', kata_id: 2, rank_id: 6, format_id: 8, on_test: true},
  {id: 5,   name: 'Ukenagashi',                                 related_id: 18, short_description: 'Kata 2', description: nil, kata_id: 2, rank_id: 6, format_id: 8, stance_id: 3, attack_id: 2, technique_id: 5, direction_id: 2, on_test: true},
  {id: 6,   name: 'Ai Hanmi Kata Dori Ikkyo Omote Variation',   related_id: nil, short_description: nil, description: nil, kata_id: 1, rank_id: 6, format_id: 8, stance_id: 3, attack_id: 2, technique_id: 5, direction_id: 2, on_test: true},
  {id: 7,   name: 'Ushirogiri',                                 related_id: nil, short_description: 'Kata 3', description: nil, kata_id: 2, rank_id: 6, format_id: 8, stance_id: 2, attack_id: 2, technique_id: 2, on_test: true},
  {id: 8,   name: 'Variation to Kata 3',                        related_id: nil, short_description: nil, description: nil, kata_id: 1, rank_id: 6, format_id: 8, on_test: false},
  {id: 9,   name: 'Kiriage',                                    related_id: nil, short_description: nil, description: nil, kata_id: 1, rank_id: 6, format_id: 8, attack_id: 4, technique_id: 5, direction_id: 2, on_test: true},

  {id: 1,   name: 'Gyaku Hanmi Kaiten Nage Omote',              related_id: nil, short_description: nil, description: nil, format_id: 2, technique_id: 2, attack_id: 2, stance_id: 2, waza_id: 2, rank_id: 6, direction_id: 2, on_test: true},
  {id: 2,   name: 'Gyaku Hanmi Kote Gaeshi <no grab>',          related_id: nil, short_description: nil, description: nil, format_id: 9, technique_id: 3, attack_id: 2, stance_id: 2, waza_id: 2, rank_id: 10},
  {id: 3,   name: 'Gyaku Hanmi Katate Dori Shiho Nage',         related_id: nil, short_description: nil, description: nil, format_id: 2, technique_id: 4, attack_id: 2, stance_id: 2, waza_id: 2, rank_id: 4, on_test: true},
  {id: 10,  name: 'Ai Hanmi Irimi Nage Backstretch',            related_id: nil, short_description: nil, description: nil, format_id: 2, technique_id: 6, attack_id: 2, stance_id: 3, waza_id: 2, rank_id: 10},
  {id: 11,  name: 'Gyaku Hanmi Katate Dori Nikkyo Ura',         related_id: nil, short_description: nil, description: nil, format_id: 2, technique_id: 7, attack_id: 2, stance_id: 2, waza_id: 2, rank_id: 4, direction_id: 3, on_test: true},
  {id: 12,  name: 'Gyaku Hanmi Kote Gaeshi Jodan',              related_id: nil, short_description: nil, description: nil, format_id: 9, technique_id: 3, attack_id: 2, stance_id: 2, waza_id: 2, rank_id: 10, attack_height_id: 2},
  {id: 13,  name: 'Gyaku Hanmi Katate Dori Irimi Nage',         related_id: nil, short_description: nil, description: nil, format_id: 2, technique_id: 6, attack_id: 2, stance_id: 2, waza_id: 2, rank_id: 4, on_test: true},
  {id: 14,  name: 'Gyaku Hanmi Katate Dori Ikkyo Ura',          related_id: nil, short_description: nil, description: nil, format_id: 2, technique_id: 5, attack_id: 2, stance_id: 2, waza_id: 2, rank_id: 4, direction_id: 3, on_test: true},
  {id: 15,  name: 'Gyaku Hanmi Katate Dori Ikkyo Omote',        related_id: nil, short_description: nil, description: nil, format_id: 2, technique_id: 5, attack_id: 2, stance_id: 2, waza_id: 2, rank_id: 4, direction_id: 2, on_test: true},
  {id: 16,  name: 'Jo Kata 1 - Right side',                     related_id: nil, short_description: nil, description: nil, format_id: 7, technique_id: 8,                                         rank_id: 5, on_test: true},
  {id: 17,  name: 'Jo Kata 1 - Left side',                      related_id: nil, short_description: nil, description: nil, format_id: 7, technique_id: 8,                                         rank_id: 4, on_test: true},
  {id: 18,  name: 'Ai Hanmi Katate Dori Ikkyo Omote',           related_id: 5, short_description: nil, description: nil, format_id: 2, technique_id: 5, attack_id: 2, stance_id: 3, waza_id: 2, rank_id: 5, direction_id: 2, on_test: true}
])

Video.seed(:id, [
  {id: 1,   applied_technique_id: 1,  youtube_code: 'uz_HX7XSw_E'},
  {id: 2,   applied_technique_id: 2,  youtube_code: 'QfRIObuixRg'},
  {id: 4,   applied_technique_id: 4,  youtube_code: 'lYLsqOANqZ4'},
  {id: 5,   applied_technique_id: 5,  youtube_code: 'bwYeN-OrFuU'},
  {id: 6,   applied_technique_id: 6,  youtube_code: '81XmB2XTxmA'},
  {id: 7,   applied_technique_id: 7,  youtube_code: 'UyxKnC0S-VA'},
  {id: 8,   applied_technique_id: 8,  youtube_code: 'HakhxTqMTPo'},
  {id: 9,   applied_technique_id: 9,  youtube_code: 'SL0kRTT1Y0U'},
  {id: 3,   applied_technique_id: 3,  youtube_code: 'G1NHjOGYXbU'},
  {id: 10,  applied_technique_id: 10, youtube_code: 'yVsO1Q18u0c'},
  {id: 11,  applied_technique_id: 11, youtube_code: 'xxyGZ2TWmKE'},
  {id: 12,  applied_technique_id: 12, youtube_code: 'AZ8PfWKlNDE'},
  {id: 13,  applied_technique_id: 13, youtube_code: 'hH21Xdivvo0'},
  {id: 14,  applied_technique_id: 14, youtube_code: 'sk9YHsTBQck'},
  {id: 15,  applied_technique_id: 14, youtube_code: 'oSlynDDLxAE'},
  {id: 16,  applied_technique_id: 15, youtube_code: 'ZxuDokKK2w8'},
  {id: 17,  applied_technique_id: 15, youtube_code: 'Pf2yV0dJuRs'},
  {id: 18,  applied_technique_id: 16, youtube_code: 'n/a'},
  {id: 19,  applied_technique_id: 17, youtube_code: 'n/a'},
  {id: 20,  applied_technique_id: 18, youtube_code: 'n/a'}
])
