Art.seed(:id, [
  {id: 1, name: 'Aikido'},
  {id: 2, name: 'Iaido'}
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
  {id: 1, name: 'Kaiten Nage', description: 'Rotary throw'},
  {id: 2, name: 'Kote Gaeshi', description: 'Wrist turn out'},
  {id: 3, name: 'Shiho Nage', description: 'Four corners throw'}
])

AppliedTechnique.seed(:id, [
  {id: 1, name: 'Gyaku Hanmi Kaiten Nage Omote', art_id: 1, technique_id: 1, attack_id: 1, stance_id: 1, waza_id: 1, rank_id: 5, direction_id: 1},
  {id: 2, name: 'Gyaku Hanmi Kote Gaeshi', art_id: 1, technique_id: 2, attack_id: 1, stance_id: 1, waza_id: 1, rank_id: 3},
  {id: 3, name: 'Gyaku Hanmi Shiho Nage',  art_id: 1, technique_id: 3, attack_id: 1, stance_id: 1, waza_id: 1, rank_id: 5},
  {id: 4, name: 'Shohatto Maegiri',        art_id: 2, kata_id: 1, rank_id: 5},
  {id: 5, name: 'Ukenagashi',              art_id: 2, kata_id: 2, rank_id: 5},
  {id: 6, name: 'Ukenagashi Variation',    art_id: 2, kata_id: 2, rank_id: 5}
])

Video.seed(:id, [
  {id: 1, applied_technique_id: 1, youtube_code: 'uz_HX7XSw_E'},
  {id: 2, applied_technique_id: 2, youtube_code: 'QfRIObuixRg'},
  {id: 3, applied_technique_id: 3, youtube_code: 'n/a'},
  {id: 4, applied_technique_id: 4, youtube_code: 'n/a'},
  {id: 5, applied_technique_id: 5, youtube_code: 'n/a'},
  {id: 6, applied_technique_id: 6, youtube_code: 'n/a'}
])
