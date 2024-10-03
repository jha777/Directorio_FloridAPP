import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Directorio FloridAPP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'MiFuente', // Cambia 'MiFuente' por el nombre de tu fuente
            fontSize: 20, // Ajusta el tamaño de la fuente
            fontWeight: FontWeight.bold, // Estilo de la fuente
            color: Colors.black, // Color del texto
          ),
        ),
      
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> categorias = [
    'Arte, Cultura y Música',
    'Restaurantes',
    'Hoteles',
    'Panadería y Pastelería',
    'Comidas y Bebidas',
    'Heladerías',
    'Misceláneas y Licores',
    'Centros turísticos',
    'Tecnología y Hogar',
    'Servicios para el Hogar',
    'Ferretería',
    'Supermercados',
    'Belleza y SPA',
    'Salud y Bienestar',
    'Moda y Accesorios',
    // Puedes agregar más categorías aquí.
  ];

  // Lista de imagenes para el slider
  final List<String> sliderImages = [

    'assets/images/portada1.png',
    'assets/images/portada2.png',
    'assets/images/portada3.png',
    'assets/images/portada4.png',

   ];

  final List<String> imagenesCategorias = [
    'assets/images/ic_arte_cultura_y_musica.png',
    'assets/images/ic_restaurante.png',
    'assets/images/ic_hoteles.png',
    'assets/images/ic_panaderia.png',
    'assets/images/ic_comida_y_bebidas.png',
    'assets/images/ic_heladeria.png',
    'assets/images/ic_licores_v2.png',
    'assets/images/ic_centro_turistico.png',
    'assets/images/ic_tecnologia_y_hogar.png',
    'assets/images/ic_servicios_para_el_hogar_v2.png',
    'assets/images/ic_ferreteria.png',
    'assets/images/ic_supermercados.png',
    'assets/images/ic_belleza_y_spa.png',
    'assets/images/ic_salud_y_bienestar.png',
    'assets/images/ic_moda_y_accesorios.png',
    // Puedes agregar más imágenes para las categorías aquí.
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Directorio FloridAPP'),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Column(
        children: [
          // Carrusel de imágenes
          CarouselSlider(
            options: CarouselOptions(
              height: 150.0, // Altura del carrusel
              autoPlay: true, // Activar reproducción automática
              enlargeCenterPage: true, // Aumentar imagen central
              autoPlayInterval: const Duration(seconds: 3), // Tiempo entre imágenes
            ),
            items: sliderImages.map((imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15.0), //Bordes redondeados
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3), //Desplazamiento de la sombra
                         ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0), // Mantener los bordes redondeados para la imagen
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover, // Ajustar imagen al contenedorver
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        
          const SizedBox(height: 16.0),
          // GridView con categorías
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Número de columnas en el grid
                crossAxisSpacing: 4.0, // Espacio horizontal entre items
                mainAxisSpacing: 4.0, // Espacio vertical entre items
              ),
              itemCount: categorias.length, // Número de categorías
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Navegar a la pantalla de imágenes por categoría
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImagenesCategoriaPage(
                          categoria: categorias[index],
                          categoriaIndex: index + 1,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          imagenesCategorias[index],
                          fit: BoxFit.cover,
                          height: 100,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          categorias[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Pantalla que muestra las imágenes para la categoría seleccionada
class ImagenesCategoriaPage extends StatelessWidget {
  final String categoria;
  final int categoriaIndex;

  const ImagenesCategoriaPage({
    super.key,
    required this.categoria,
    required this.categoriaIndex,
  });

  final Map<int, List<String>> imagenesPorCategoria = const {
    1: [
      'assets/images/arteculturaymusica/Mafedir.png',
      'assets/images/Floridapp3.png',
    ],
    2: [
      'assets/images/restaurantes/Dirvita.png',
      'assets/images/restaurantes/Dirburguer.png',
    ],
    3: [
      'assets/images/Floridapp3.png',
      'assets/images/Floridapp3.png',
    ],
    4: [
      'assets/images/panaderiaypasteleria/Dirvainilla.png',
      'assets/images/Floridapp3.png',
    ],
    5: [
      'assets/images/bebidasycomidas/DirPanelas.png',
      'assets/images/Floridapp3.png',
    ],
    6: [
      'assets/images/Floridapp3.png',
      'assets/images/Floridapp3.png',
    ],
    7: [
      'assets/images/Floridapp3.png',
      'assets/images/Floridapp3.png',
    ],
    8: [
      'assets/images/Floridapp3.png',
      'assets/images/Floridapp3.png',

    ],
    9: [
      'assets/images/tecnologiayhogar/DirHyD.png',
      'assets/images/Floridapp3.png',
    ],
    10: [
      'assets/images/serviciosparaelhogar/LimpDir.png',
      'assets/images/serviciosparaelhogar/Dirmeji.png',
      'assets/images/serviciosparaelhogar/Dirpecesyplantas.png',

    ],
    11: [
      'assets/images/Floridapp3.png',
      'assets/images/Floridapp3.png',
    ],
    12: [
      'assets/images/Floridapp3.png',
      'assets/images/Floridapp3.png',
    ],
    13: [
      'assets/images/bellezayspa/MARYKAYADIR.png',
      'assets/images/Floridapp3.png',

    ],
    14: [
      'assets/images/Floridapp3.png',
      'assets/images/Floridapp3.png',

    ],
    15: [
      'assets/images/modayaccesorios/DirMarce.png',
      'assets/images/Floridapp3.png',
    ],
    // Continúa con las imágenes de otras categorías...
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoria),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: imagenesPorCategoria[categoriaIndex]?.length ?? 0,
        itemBuilder: (context, index) {
          String imageUrl = imagenesPorCategoria[categoriaIndex]![index];
          return GestureDetector(
            onTap: () {
              // Mostrar la imagen ampliada al tocarla
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cerrar'),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Card(
              elevation: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}