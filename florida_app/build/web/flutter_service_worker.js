'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "62f29571c6330cbc675a71b894d8934b",
"assets/AssetManifest.bin.json": "d2fe1ba96088759e0ecdaf114d53e373",
"assets/AssetManifest.json": "352e87b42ceef212687ba930e8e22dc8",
"assets/assets/fonts/Aero.ttf": "a2483a9860a6583064ce138a888e0ae5",
"assets/assets/images/arteculturaymusica/Mafedir.png": "ad8c292dda1964cae36d4d7dafa4838d",
"assets/assets/images/bebidasycomidas/DirPanelas.png": "62c6d1e329afc4c3ce9b4b23565be97a",
"assets/assets/images/bellezayspa/MARYKAYADIR.png": "69733f03c59c39cdf0b80827a12a83f8",
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
"assets/assets/images/modayaccesorios/DirMarce.png": "22e673a1a14112ab1bbec84b2f8f7629",
"assets/assets/images/panaderiaypasteleria/Dirvainilla.png": "00d98564d6d7149e7f04fa495bbef363",
"assets/assets/images/portada1.png": "6af44bf7cd3e0fe7ed04f94cb9b8dab6",
"assets/assets/images/portada2.png": "cadbf829a5a69aa98b52bee28b40de25",
"assets/assets/images/portada3.png": "522d39e0a08dda4db3827ed1b4cc88e2",
"assets/assets/images/portada4.png": "2fc7bd1502c535cdd3fa3800af92c670",
"assets/assets/images/restaurantes/Dirburguer.png": "e1fd3a3caa96e232956d2bdd7d13cffe",
"assets/assets/images/restaurantes/Dirvita.png": "31f4e7679168d13ebf29bd72be640035",
"assets/assets/images/serviciosparaelhogar/Dirmeji.png": "6b016b69aca8ea1eafdc3ff1bf5670d7",
"assets/assets/images/serviciosparaelhogar/Dirpecesyplantas.png": "85d9fbb6b4b55b44bece70d5cc557c23",
"assets/assets/images/serviciosparaelhogar/LimpDir.png": "9e21e09cb3826c544387dc4a33625123",
"assets/assets/images/tecnologiayhogar/DirHyD.png": "344baec0ffb03e981259e9e7bacf5477",
"assets/FontManifest.json": "0c7619faa3c5401469c84a6e15a30bdb",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "2bd0561111b6bdd3ee908a138bb053df",
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
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "4d5fcbc746dc6c622066841ebdee198f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/logo_faviconweb.png": "0f58155bc2fe06d41462d2944aa01cd0",
"icons/logo_grandeweb.png": "59904566d0245f3c554f79472ce17eed",
"index.html": "53cdabb608daa7224dba3a4e78096639",
"/": "53cdabb608daa7224dba3a4e78096639",
"main.dart.js": "5ee7ebd98f468309835bbeb88fab076d",
"manifest.json": "d1cbe80590d3b3c7ab34324456eeff34",
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
