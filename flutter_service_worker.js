'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "069cd6e7841aef5b2af6757f48506fd1",
"/": "069cd6e7841aef5b2af6757f48506fd1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/FontManifest.json": "95d6ff0615a2369a2b06b66a93e932d8",
"assets/fonts/Roboto-Italic.ttf": "a720f17aa773e493a7ebf8b08459e66c",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/fonts/Roboto-Bold.ttf": "e07df86cef2e721115583d61d1fb68a6",
"assets/fonts/Roboto-LightItalic.ttf": "a3ce4440f2abf76f4a1b14b83920138c",
"assets/fonts/Roboto-ThinItalic.ttf": "35a9c89aff1396595ad345e378a32aca",
"assets/fonts/Roboto-Regular.ttf": "11eabca2251325cfc5589c9c6fb57b46",
"assets/fonts/Roboto-Light.ttf": "88823c2015ffd5fa89d567e17297a137",
"assets/fonts/Roboto-Black.ttf": "5ebb24ee1112dd9562629375c387879a",
"assets/fonts/Roboto-Medium.ttf": "58aef543c97bbaf6a9896e8484456d98",
"assets/fonts/Roboto-BlackItalic.ttf": "99682a78fa4fe61e1177b94757336bbf",
"assets/fonts/Roboto-MediumItalic.ttf": "cf23e1bb619029496260760b72aebd30",
"assets/fonts/Roboto-BoldItalic.ttf": "5b44818d2b9eda3e23cd5edd7b49b7d5",
"assets/fonts/Roboto-Thin.ttf": "321de678e592d0b8f44f1a82d7ca4b62",
"assets/AssetManifest.json": "2efbb41d7877d10aac9d091f58ccd7b9",
"assets/LICENSE": "ca90f3c07b41346012325908125d1548",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "93c7a12f7028c15456513d08fee49aaf",
"manifest.json": "5cbfd5fb1fc7b712676a4dd9016156f6"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
