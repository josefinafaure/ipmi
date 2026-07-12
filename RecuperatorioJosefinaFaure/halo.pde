void halos() {

  noStroke();

  int cantanillos = 12;

  // Punto del centro
  fill(68, 34, 96);
  ellipse(0, 0, 5, 5);

 for (int anillo = 1; anillo <= cantanillos; anillo++) {
   
   
    float radio = map(anillo, 1, cantanillos, 8, 220);

//esc/
    radio += anillo * 4;
//gral
    radio *= Radio;

    float diametro = calcularDiametro(anillo);

    int cantidad = 40 - anillo;

    for (int i = 0; i < cantidad; i++) {

      float angulo = i * TWO_PI / cantidad;

      //  espiral
      angulo += anillo * 0.15;

      float x = radio * cos(angulo);
      float y = radio * sin(angulo);

//efectos
      float d = dist(mouseX - 600, mouseY - 200, x, y);

      float tam = map(d, 0, 120, diametro * 2, diametro);

      tam = constrain(tam, diametro, diametro * 1.1);

//corte
      if (600 + x - tam / 2 >= 395) {

        // Halo blanco
        fill(255);
        ellipse(x - 2, y - 2, tam + 1, tam + 2);

        // Sombra negra
        fill(0);
        ellipse(x + 3, y + 3, tam + 1, tam + 1);

        // Círculo violeta
        fill(colorHalo);
        ellipse(x, y, tam, tam);

        

      }

    }

  }

}

float calcularDiametro(int anillo) {

  float diametro = map(anillo, 1, 16, 2, 28);

  if (anillo > 5) {

    diametro += (anillo - 5) * 5;

  }

  diametro *= escala;

  return diametro;

}
