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
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgvYNc21v0d_4q46tZCK69Z7AD-kbfnKBJhgZiWAceJAhaJJCrtc5EgwiR1f-rF6yczXf7GhEJjeU6e1MkbRgf0qENM1hzbtGt_SMiT5_C1rg117tdazFL73YZ343zGal_bN1K-f0xsJDyglMHz3VicPDsYYfZTUX_H-dUUGcR4yFvCrkYk4kdj5Hio9iI/w338-h640/Mafedir.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
    ],
    2: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgXd7cMUCCEz4-qXsbJee7SCrOKFe0SVZKnSJpPGhp5WWjJ9jQfJ2p9pVT-GG7Lamit1fQJtWpRHfDp-H37ky-RdYc3eu9Qgpl1jdI7dvO0nEsm5PerWhwZMl35hS5GpvF9OlWWBC5rBBjJPFTOobEhAhB51kTJyZg48GJecfD8qS24zKEiSgN4nWForFM/w339-h640/Dirvita.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiTdGnc8MihYnBtFZljTUHMBbgCHCI-L22ozWALM5h5558aKbLKkAduTT5QIqjTYoU61aDvzsKW-A9ktI0TDWA-10sYjncmayQpp_V1t0hf2pYkuWFyZPllrmsRcjxCZJE-GA54xI_g1qHM6lqD6WP8HE0Tocet62J1CGcAnOUe_eXSA7fEuoWiL1OY8Cg/w338-h640/Dirburguer.png',
    ],
    3: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
    ],
    4: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg60VhUCOV10R43cDAeG2QuSPF-7CEuyt3epZ-zgox9ThfECgWf0WUHXhqKpf7maMhnY7fsaud9F6VVyQ07IzeRI0678W6uoHW3VmU1k5JwL4HWTvzx9BDZg4aZs5A4luAmRWs6JR7MIj1-YGfc8sAI1WO6JVzV7xKWjvevVkL1jdlEcdu7notsyS9k5e8/w338-h640/Dirvainilla.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
    ],
    5: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgisO0NF73SonumUB6qrFk1sP-2miaiFN7os1xXM5pKUx_gfhHL22RU-i3LlSsoU1rHWFXbCT42MNBc5R6DPh1CTzXfh8Gvfn5jxLKW4dKgZIcHKihso3kp4tyVX5ZSqgaxWFLRIRq709VCNRcT_5ewoOWuVvGlnuE62iY2HK5gKy-rwcJ1wGvvH02OlWA/w338-h640/DirPanelas.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
    ],
    6: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
    ],
    7: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
    ],
    8: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',

    ],
    9: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEifngwymC5V-V-D6yQVvwizNRRNl3gGeSEoyoVSMiPspM4WhlxZkTihJ7AQp7aiXnBHA27B_uAxJfkHcv1Md4bE1PwNnKTDwplbV1ZlM34CGA48VA8M3WUzent8P2Mq_Z8Z6ZDKovcI0QO02Nh6knTDHvJ2_fvQN7q_fL2gWQJRRFGCIViMWCPHz6TpODQ/w342-h640/DirHyD.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
    ],
    10: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiwhafrsTMU-cl5-99j6qjIyQ2L_MP5chS7_WXNZBWEcI7yL7Vo1XYbvgiZba7V6G_O7t_NCT3DuwTR3j0sVWtZzGW1t9SyupXT15MIehyphenhyphengOzVXjTKhH2gz3-V6bKLC8hloMgfZr9yG36C1hBnZrVy2a9oDXrq0obV_BIaMSDXNdJ-szChOG-em-bnpOwU/w338-h640/LimpDir.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjPTg_y4veBHcmTNoIzdI1dEzDg_sWIStK8j-da5lSCFjv0ErwuQ5XQVbQDcgbowE1MY13yWddVJkkIwQ5I5Osl1hn7sq7Va3aUes29eMMlY46he8YMlCL-BXVqY2gzMSoabzcVNBxZSQOWwHaL4XXwq5rOLzDosaevj_wCk1kJd3jqDwoOU3Rx-RaQEVk/w342-h640/Dirmeji.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiellH1YNZG3mSEF7Ww_Dart5XrY-Q4m0xb2rA6rOlXnItmyWOYZSakpVrsPh3f71ExsctiaTBpzOzj4ee5qq5DWnIn-TRoddoFmScgW1yl9OVeHX-tMr9xpYAD8HE4ET9RwTLnsZ48pJ9lnpKlk68ShXebMHg7YyJjD5L9Z9MnULZNGJH6NzT1uiE3YoA/w338-h640/Dirpecesyplantas.png',

    ],
    11: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
    ],
    12: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
    ],
    13: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjU3u6QTvjI8UqMj45IpvySkDLfMWAnY4eTktYQpH7kQ9CrgbDwibLwPY1sz6xD21ftC8go0SJllLNQ4BvYOW3Y5KTi9LYsurZ4ejprFm2i0W-5nRCigxFaq6GlsuvTh1Zvb7n_bLc-z1Geg15HQ14l8KkQiGVuOI7pxQtU9GGysA4OKaDDvie965q82vM/w338-h640/MARYKAYADIR.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',

    ],
    14: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',

    ],
    15: [
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjEF_CnO2Q7PRZVUsHzuKBTO7Gh1j8NhBkZA3r0bUbLbHDOqm0WXbxIs8d7UxHyXKxoPsv0OGX889gvtz-tXmxBT_Ry_OXkgiQZVQKc2AxSIGbfQKJSkDfqkV5dwXagRNL-wz_AP9RBxAL6_xOnpaRb8jUQdhbmS4hzsVO5rQV5f-W1pFgre5DrLf8rdMs/w342-h640/DirMarce.png',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijZzQdy1anzYYStnXq-s3lZr4Kg6pn_AU4fj8FAaM4tsELqTY9ggOAXRFDD66nzA0e2iKI-2zFohyphenhyphenngTMhU85GVN7Rd6utzAeZPnoL_7dzS120n6b58VKB6pCYNjnm6N465LAhAcpkSdUfcXgT8xZ1V9HQE25wsl6aNZAOsMZnbd1w93Kkoj5jRPT8ouI/s320/Floridapp3.png',
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