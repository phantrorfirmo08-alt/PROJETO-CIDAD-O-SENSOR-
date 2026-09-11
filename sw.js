// sw.js - Arquivo de Limpeza e Autodestruição do Service Worker Antigo
self.addEventListener('install', (event) => {
    self.skipWaiting();
});

self.addEventListener('activate', (event) => {
    event.waitUntil(
        caches.keys().then((cacheNames) => {
            return Promise.all(
                cacheNames.map((cacheName) => caches.delete(cacheName))
            );
        }).then(() => {
            return self.registration.unregister();
        }).then(() => {
            return clients.claim();
        })
    );
});
