'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "56d945719a92aa6b2e2fb3bb39cafbcc",
"assets/AssetManifest.bin.json": "94b10ae7b0f3c38a632276831a3435a7",
"assets/AssetManifest.json": "7a66b09891402dd3391c88edaa1f5841",
"assets/assets/fonts/Aero.ttf": "a2483a9860a6583064ce138a888e0ae5",
"assets/assets/images/arteculturaymusica/Mafedir.png": "214245a7068d5d704eb9fd1588aa6355",
"assets/assets/images/bebidasycomidas/DirPanelas.png": "ee41d899b695f533418b2f75767ea3a8",
"assets/assets/images/bellezayspa/dirsafisic.png": "286251fdae9a796a0bbe9e90588d1e60",
"assets/assets/images/bellezayspa/MARYKAYADIR.png": "45776c04fa9bc63fada4ed3fb66d589f",
"assets/assets/images/Floridapp3.png": "c8eef73a099a85ad54a308f9e848c418",
"assets/assets/images/ic_arte_cultura_y_musica.png": "306249e2a090cd3a32f70bdfb8e9d9f8",
"assets/assets/images/ic_belleza_y_spa.png": "2c88c3beb264e0659bdb0d9fd0984a7b",
"assets/assets/images/ic_centro_turistico.png": "00672e7251fa2c26685de87d8d624091",
"assets/assets/images/ic_comida_y_bebidas.png": "1b235b7b8ffe1aa3dcf8695d26f25755",
"assets/assets/images/ic_ferreteria.png": "308f9f0559f1b5ccb551b999c45edc53",
"assets/assets/images/ic_heladeria.png": "a454dc939bc9d39c49515990606eeb3d",
"assets/assets/images/ic_hoteles.png": "8c7077f5ad2974e858a58a6082ba0a14",
"assets/assets/images/ic_licores_v2.png": "1dfbcfc338cf839c814648e359785f77",
"assets/assets/images/ic_moda_y_accesorios.png": "9c9510be791a45ab77480a70197f02b3",
"assets/assets/images/ic_panaderia.png": "7566cc9fc20576a5d23f29c45a9be371",
"assets/assets/images/ic_restaurante.png": "43bedbbd81570d3b228a8268b67ee343",
"assets/assets/images/ic_salud_y_bienestar.png": "7f8e22c69ad2c03c22094f4cc7ecaaaa",
"assets/assets/images/ic_servicios_para_el_hogar_v2.png": "6867cc8a043249678b94f7a6853fd77b",
"assets/assets/images/ic_supermercados.png": "36d60b005aabf9a0996bd687e9cdc282",
"assets/assets/images/ic_tecnologia_y_hogar.png": "6ef58eeeb379de650670b408f8a59f30",
"assets/assets/images/modayaccesorios/DirMarce.png": "dc6889d86deae896b84b35b3fa07fe33",
"assets/assets/images/panaderiaypasteleria/Dirantojitos.png": "2cef4bfaaa94b650e5196496d8874f59",
"assets/assets/images/panaderiaypasteleria/Dirvainilla.png": "79bd33e97c5bb865891a759554df0121",
"assets/assets/images/portada1.png": "6af44bf7cd3e0fe7ed04f94cb9b8dab6",
"assets/assets/images/portada2.png": "cadbf829a5a69aa98b52bee28b40de25",
"assets/assets/images/portada3.png": "522d39e0a08dda4db3827ed1b4cc88e2",
"assets/assets/images/portada4.png": "2fc7bd1502c535cdd3fa3800af92c670",
"assets/assets/images/restaurantes/Dirburguer.png": "17c3a3512a377ca3dc80a1efc1157a6b",
"assets/assets/images/restaurantes/Dirvita.png": "f1c7d994f6b78fcfa94831c9b52c97f9",
"assets/assets/images/serviciosparaelhogar/Dirhogarysue%25C3%25B1o.png": "fb320b76c020e3e02dd77bd88eb1d7c6",
"assets/assets/images/serviciosparaelhogar/Dirmeji.png": "d66a754a84fafafaf3004170dfab9f96",
"assets/assets/images/serviciosparaelhogar/Dirpecesyplantas.png": "717b0e027fc82f1b1cd226680f0ec729",
"assets/assets/images/serviciosparaelhogar/LimpDir.png": "810d04cd609d8f7a30ee6143c062dda1",
"assets/assets/images/tecnologiayhogar/Dircellone.png": "b1bf722ca04c62d34ba02defe1b5514a",
"assets/assets/images/tecnologiayhogar/DirHyD.png": "273e91d692f496fdca07ed058da56f34",
"assets/FontManifest.json": "0c7619faa3c5401469c84a6e15a30bdb",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "1340206c6131ef591f48cb1f0575024a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "ef756cd3306eb83e38ff28f68aa8aaba",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "352da89aeb0b050876e344343b31b436",
"icons/icon-192.png": "ef756cd3306eb83e38ff28f68aa8aaba",
"icons/icon-512.png": "9a5fd4abb4e86c894bc2a71295dbe38f",
"icons/icon-maskable-192.png": "ef756cd3306eb83e38ff28f68aa8aaba",
"icons/icon-maskable-512.png": "9a5fd4abb4e86c894bc2a71295dbe38f",
"index.html": "b68cde679878b5f480f90ef807fadfa5",
"/": "b68cde679878b5f480f90ef807fadfa5",
"main.dart.js": "0b86e28dbc50fffec228b811bdfb0ad9",
"manifest.json": "87ab247622efa2eeec4ab565335969db",
"version.json": "4e48f02aa153e80238ad1aa4bac31e2c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
