void keyPressed() {

  // Agrandar círculos
  if (key == 'a') {

    escala = 1.5;

  }

  // Tamaño normal
  if (key == 's') {

    escala = 1;

  }



  // Color aleatorio
  if (key == 'c') {

    colorHalo = color(
      random(255),
      random(255),
      random(255)
      );

  }

  // Reiniciar
  if (key == 'r') {

    escala = 1;
    Radio = 1.25;
    colorHalo = color(102, 47, 148);

  }

}
