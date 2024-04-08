// Composto de cinco cubos

/*
  O solido gerado serah a uniao de 5 cubos, formando uma figura cuja envoltoria
  convexa eh um dodecaedro.

  Cada cubo eh gerado pela rotacao de um cubo basico, com um angulo multiplo de
  72 graus, em torno de um eixo definido por um certo vetor (o vetor aponta para
  uma das 12 faces do dodecaedro formado pela figura). Cada uma das 12 x 5 = 60
  arestas dos 5 cubos eh uma diagonal de uma face do dodecaedro. Para cada face,
  as diagonais formam uma estrela de 5 pontas.
*/

// Definindo o angulo fundamental de rotacao
angulo = 72;

// Definindo um tamanho para o cubo basico
tamanho_cubo = 100;

// Definindo a lista de cores dos 5 cubos
cores = ["yellow", "red", "blue", "green", "magenta"];

// Definindo o numero aureo
aureo = (1 + sqrt(5))/2;

// Definindo o vetor que serah o eixo de rotacao para o cubo basico
eixo_de_rotacao = [0, (2 + aureo)/5, (1 + 3*aureo)/5];

module cubo_rotacionado(i) {
    color(cores[i]) {
        rotate(i * angulo, eixo_de_rotacao) {
            cube(tamanho_cubo,center=true);
        }
    }
}


module cubos() {
    for (i = [0:4]) {
        cubo_rotacionado(i);
    }
}

cubos();
