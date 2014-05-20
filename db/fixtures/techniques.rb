Art.seed(:id, [
  {id: 1, name: 'Aikido'},
  {id: 2, name: 'Iaido'}
])

TestingLevel.seed(:id, [
  {id: 1, name: 'Kihon Waza', description: 'Basic Technique'},
  {id: 2, name: 'Oyo Waza', description: 'Advanced version or application of the technique'}
])

Format.seed(:id, [
  {id: 1, name: 'Tiado',          description: 'Way of the hand'},
  {id: 2, name: 'Ken no Tebiki',  description: 'With sword guidance (one person with boken)'},
  {id: 3, name: 'Jo no Tebiki',   description: 'With jo guidance (one person with jo)'},
  {id: 4, name: 'Ken ti Ken',     description: 'Sword vs Sword (bokens)'},
  {id: 5, name: 'Ken ti Jo',      description: 'Sword(boken) vs Jo'},
  {id: 6, name: 'Suburi',         description: 'A single movement using the ken or jo, done as a solo practice'}
])

Stance.seed(:id, [
  {id: 1, name: 'Gyaku Hanmi', description: 'Opposing stance (i.e. uke right foot forward and nage left foot forward)'},
  {id: 2, name: 'Ai Hanmi', description: 'Mirroring stance (i.e. uke and nage have same foot forward)'}
])

Waza.seed(:id, [
  {id: 1, name: 'Tachi Waza', description: 'Standing technique'},
  {id: 2, name: 'Suwari Waza', description: 'Technique where both uke and nage are seated'},
  {id: 3, name: 'Hanmi Hadachi Waza', description: 'Technique where one person standing and one person sitting'}
])

Direction.seed(:id, [
  {id: 1, name: 'Omote', description: 'Entering in the front'},
  {id: 2, name: 'Ura', description: 'Entering in the back'}
])

Rank.seed(:id, [
  {id: 5, name: '5th', description: 'Gokyu',  belt: 'White', position: 1},
  {id: 4, name: '4th', description: 'Yonkyu', belt: 'White', position: 2},
  {id: 3, name: '3rd', description: 'Sankyu', belt: 'White', position: 3},
  {id: 2, name: '2nd', description: 'Nikyu',  belt: 'White', position: 4},
  {id: 1, name: '1st', description: 'Ikkyu',  belt: 'White', position: 5},
  {id: 6, name: '1st', description: 'Shodan', belt: 'Black', position: 6},
  {id: 7, name: '2nd', description: 'Nidan',  belt: 'Black', position: 7},
  {id: 8, name: '3rd', description: 'Sandan', belt: 'Black', position: 8},
  {id: 9, name: 'Supplemental', description: 'Non-ranked', position: 99}
])

Attack.seed(:id, [
  {id: 1, name: 'Katate Dori', description: 'One hand grip on one wrist'},
  {id: 2, name: 'Ryote Dori', description: 'Two hand grip on two writs'},
  {id: 3, name: 'Shomen Uchi', description: 'Vertical strike to head with hand blade'},
  {id: 4, name: 'Yokomen Uchi', description: 'Diagonal strike to neck or temple with hand blade'},
  {id: 5, name: 'Morote Dori', description: 'Two hand grip on one wrist'},
  {id: 6, name: 'Kata Dori', description: 'One hand grip on shoulder'}
])

Kata.seed(:id, [
  {id: 1, name: 'Shohatto Maegiri', description: 'Kata 1'},
  {id: 2, name: 'Ukenagashi', description: 'Kata 2'},
  {id: 3, name: 'Ushirogiri', description: 'Kata 3'},
  {id: 4, name: 'Zengogiri', description: 'Kata 4'}
])

Technique.seed(:id, [
  {id: 1, name: 'Kaiten Nage',  description: 'Rotary throw'},
  {id: 2, name: 'Kote Gaeshi',  description: 'Wrist turn out'},
  {id: 3, name: 'Shiho Nage',   description: 'Four corners throw'},
  {id: 4, name: 'Ikkyo',        description: 'Wrist technique, generally palm down'},
  {id: 5, name: 'Irimi Nage',   description: 'Entering Throw'},
  {id: 6, name: 'Nikkyo',       description: "Wrist technique, pressure applied on wrist towards Uke's body"},
  {id: 7, name: 'Jo Kata',      description: 'Sequential movements with a Jo'}
])

AppliedTechnique.seed(:id, [
  {id: 1,   name: 'Gyaku Hanmi Kaiten Nage Omote',  art_id: 1, testing_level_id: 1, format_id: 1, technique_id: 1, attack_id: 1, stance_id: 1, waza_id: 1, rank_id: 5, direction_id: 1},
  {id: 2,   name: 'Gyaku Hanmi Kote Gaeshi',        art_id: 1, testing_level_id: 1, format_id: 1, technique_id: 2, attack_id: 1, stance_id: 1, waza_id: 1, rank_id: 3},
  {id: 4,   name: 'Shohatto Maegiri',               art_id: 2, kata_id: 1, rank_id: 5},
  {id: 5,   name: 'Ukenagashi',                     art_id: 2, kata_id: 2, rank_id: 5},
  {id: 6,   name: 'Ukenagashi Variation',           art_id: 2, kata_id: 2, rank_id: 5},
  {id: 7,   name: 'Ushirogiri',                     art_id: 2, kata_id: 3, rank_id: 5},
  {id: 8,   name: 'Ushirogiri Variation',           art_id: 2, kata_id: 3, rank_id: 5},
  {id: 9,   name: 'Ushirogiri Kiriage Variation',   art_id: 2, kata_id: 3, rank_id: 5},

  {id: 3,   name: 'Gyaku Hanmi Shiho Nage',         art_id: 1, testing_level_id: 1, format_id: 1, technique_id: 3, attack_id: 1, stance_id: 1, waza_id: 1, rank_id: 5},
  {id: 10,  name: 'Ai Hanmi Irimi Nage Backstretch',art_id: 1, testing_level_id: 1, format_id: 1, technique_id: 5, attack_id: 1, stance_id: 2, waza_id: 1, rank_id: 9},
  {id: 11,  name: 'Gyaku Hanmi Nikkyo Ura',         art_id: 1, testing_level_id: 1, format_id: 1, technique_id: 6, attack_id: 1, stance_id: 1, waza_id: 1, rank_id: 3, direction_id: 2},
  {id: 12,  name: 'Gyaku Hanmi Kote Gaeshi Jodan',  art_id: 1,                      format_id: 1, technique_id: 2, attack_id: 1, stance_id: 1, waza_id: 1, rank_id: 9},
  {id: 13,  name: 'Gyaku Hanmi Irimi Nage',         art_id: 1, testing_level_id: 1, format_id: 1, technique_id: 5, attack_id: 1, stance_id: 1, waza_id: 1, rank_id: 3},
  {id: 14,  name: 'Gyaku Hanmi Ikkyo Ura',          art_id: 1, testing_level_id: 1, format_id: 1, technique_id: 4, attack_id: 1, stance_id: 1, waza_id: 1, rank_id: 3, direction_id: 2},
  {id: 15,  name: 'Gyaku Hanmi Ikkyo Omote',        art_id: 1, testing_level_id: 1, format_id: 1, technique_id: 4, attack_id: 1, stance_id: 1, waza_id: 1, rank_id: 3, direction_id: 1},
  {id: 16,  name: 'Jo Kata 1',                      art_id: 1, testing_level_id: 1, format_id: 6, technique_id: 7,                                         rank_id: 3}
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
  {id: 18,  applied_technique_id: 16, youtube_code: 'n/a'}
])
