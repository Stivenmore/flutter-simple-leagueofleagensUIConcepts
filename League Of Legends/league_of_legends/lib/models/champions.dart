import 'package:flutter/material.dart';

class Champion {
  final String name, image, description, ext;
  final int riot, id;

  Champion({
    this.ext,
    this.name,
    this.image,
    this.description,
    this.riot,
    this.id,
  });
}

List<Champion> champions = [
   Champion(
      id: 1,
      name: 'Xayah Guardiana Estelar',
      image: 'assets/images/Xayah-grande.png',
      riot: 1820,
      description:
          'Letal y precisa, Xayah es una vastaya revolucionaria que lleva a cabo una guerra personal para salvar a su gente. Utiliza su velocidad, astucia y plumas afiladas para abatir a cualquiera que se interponga en su camino. Xayah pelea junto a su compañero y amante Rakan para proteger a su decreciente tribu y devolver la gloria a su raza.',
      ext: 'Popular'),
  Champion(
      id: 2,
      name: 'Rakan Guardián Estelar',
      image: 'assets/images/Rakan-grande.png',
      riot: 1820,
      description:
          'Tan impredecible como encantador, Rakan es un vastaya infame que siempre se mete en problemas, además de ser el mejor guerrero bailarín en la historia tribal de Lhotlan. Para los humanos de las tierras altas de Jonia, su nombre ha sido por mucho tiempo sinónimo de festivales salvajes, fiestas incontrolables y música anárquica. Pocos se imaginarían que este artista energético y viajero también es pareja de la rebelde Xayah, dedicado a su causa.',
      ext: 'Popular'),

];
List<Champion> topventas = [
  Champion(
      id: 1,
      name: 'Rakan Guardián Estelar',
      image: 'assets/images/Rakan.png',
      riot: 1820,
      description:
          'Tan impredecible como encantador, Rakan es un vastaya infame que siempre se mete en problemas, además de ser el mejor guerrero bailarín en la historia tribal de Lhotlan. Para los humanos de las tierras altas de Jonia, su nombre ha sido por mucho tiempo sinónimo de festivales salvajes, fiestas incontrolables y música anárquica. Pocos se imaginarían que este artista energético y viajero también es pareja de la rebelde Xayah, dedicado a su causa.',
      ext: 'Popular'),
  Champion(
      id: 2,
      name: 'Neeko Guardiana Estelar',
      image: 'assets/images/neeko.png',
      riot: 1350,
      description:
          'Proveniente de una tribu vastaya perdida desde hace mucho tiempo, Neeko puede mezclarse en cualquier multitud adoptando la apariencia de los demás e incluso absorber un poco de su estado emocional para distinguir a un amigo de un enemigo en tan solo un instante. Nadie nunca tiene la certeza de dónde o en quién podría estar Neeko, pero quienes intenten hacerle daño pronto verán su verdadera personalidad y sentirán el poder de su magia espiritual primordial desatado sobre ellos',
      ext: '-30%'),
  Champion(
      id: 3,
      name: 'Zoe Guardiana Estelar',
      image: 'assets/images/zoe.png',
      riot: 1360,
      description:
          'Como la personificación de las travesuras, la imaginación y el cambio, Zoe actúa como la mensajera cósmica de Targón y anuncia grandes acontecimientos que pueden alterar mundos. Su mera presencia distorsiona las matemáticas arcanas que rigen las realidades; en ocasiones, sin ser consciente de su poder, provoca todo tipo de cataclismos.Tal vez eso explique la actitud indiferente con la cual Zoe "cumple" con su deber. Tomándose todo el tiempo de los mundos para jugar, engañar a los mortales o simplemente entretenerse a sí misma. Un encuentro con Zoe puede ser alegre y alentador, pero siempre hay algo más detrás de las apariencias y a menudo es muy peligroso.',
      ext: '-25%'),
  Champion(
      id: 4,
      name: 'Ahri Guardiana Estelar',
      image: 'assets/images/ahri.png',
      riot: 1274,
      description: 'Ahri, conectada de forma innata con el poder latente de Runaterra, es una vastaya que puede moldear la magia en orbes de energía pura. Se divierte jugueteando con su presa y manipulando sus emociones, antes de devorar su esencia vital. A pesar de su naturaleza predadora, Ahri conserva cierta empatía porque recibe destellos de los recuerdos de cada alma que consume.',
      ext: 'Popular'),
];

