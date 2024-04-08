$fn = 60;

raio_globo_interno = 7.5;
raio_globo_externo = 20;
espessura_globo_externo = 1;
comprimento_visor = 27;
largura_visor = 15;
profundidade_visor = 15;
raio_borda_visor = 1;
distancia_visor = 7;

union() {
    // globo interno
    sphere(r=raio_globo_interno);
    
    difference() {
        // globo externo
        difference() {
            sphere(r=raio_globo_externo);
            sphere(r=raio_globo_externo-espessura_globo_externo);
        }
        
        // visor
        translate([-comprimento_visor/2, -distancia_visor, -largura_visor/2]) {
            rotate([90, 0, 0]) {
                hull() {
                    cylinder(h=profundidade_visor, r=raio_borda_visor);
                    translate([comprimento_visor, 0, 0]) {
                        cylinder(h=profundidade_visor, r=raio_borda_visor);
                    }
                    translate([0, largura_visor, 0]) {
                        cylinder(h=profundidade_visor, r=raio_borda_visor);
                    }
                    translate([comprimento_visor, largura_visor, 0]) {
                        cylinder(h=profundidade_visor, r=raio_borda_visor);
                    }
                }  
            }
        }
    }
}
