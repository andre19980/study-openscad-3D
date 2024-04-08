$fn = 60;

base_comprimento = 75;
base_largura = 25;
base_altura = 8;

torre_comprimento = 7;
torre_largura = 20;
torre_altura = 45;
torres_distancia = 4;
torres_posicao = 25;

cupula_esquerda_raio = 10;
cupula_esquerda_altura = 5;
cupula_esquerda_posicao = 17;

cupulas_distancia = 43;

cupula_direita_raio = 15;
cupula_direita_altura = 8;
cupula_direita_altura_offset = 1.5;
cupula_direita_posicao = cupula_esquerda_posicao + cupulas_distancia;

// base
cube([base_comprimento, base_largura, base_altura]);

// torres
translate([torres_posicao, base_largura, 0]) {
    // torre esquerda
    cube([torre_comprimento, torre_largura, torre_altura]);

    // torre direita
    translate([torre_comprimento + torres_distancia, 0, 0]) {
        cube([torre_comprimento, torre_largura, torre_altura]);
    }
}


// cupula esquerda
translate([cupula_esquerda_posicao, base_largura/2, base_altura-cupula_esquerda_altura]) {
    difference() {
        sphere(r=cupula_esquerda_raio);
        mirror([0, 0, 1]) {
            translate([0, 0, -cupula_esquerda_altura]) {
                cylinder(h=cupula_esquerda_raio + cupula_esquerda_altura, r=cupula_esquerda_raio);
            }
        }
    }
}

// cupula direita
translate([cupula_direita_posicao, base_largura/2, base_altura+cupula_direita_raio-cupula_direita_altura_offset]) {
    difference() {
        sphere(r=cupula_direita_raio);
        translate([0, 0, -cupula_direita_altura]) {
            cylinder(h=cupula_direita_raio + cupula_direita_altura, r=cupula_direita_raio);
        }
    }
}