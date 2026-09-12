<!DOCTYPE html>
<html><head><meta charset="UTF-8"><title>Limpando...</title></head><body>
<h1>Limpando cache...</h1>
<script>
(async()=>{
  // 1. Desregistra todos SW
  if('serviceWorker' in navigator){
    const regs = await navigator.serviceWorker.getRegistrations();
    for(let r of regs) await r.unregister();
  }
  // 2. Apaga todos caches
  if('caches' in window){
    const keys = await caches.keys();
    for(let k of keys) await caches.delete(k);
  }
  // 3. Limpa storage
  localStorage.clear(); sessionStorage.clear();
  // 4. Força reload sem cache
  document.body.innerHTML="<h1>Cache limpo! Feche essa aba e abra o site de novo com ?v="+Date.now()+"</h1>";
  setTimeout(()=>location.href="/?v="+Date.now(),2000);
})();
</script>
</body></html>
