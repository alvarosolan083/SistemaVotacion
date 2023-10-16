document.addEventListener('DOMContentLoaded', function() {
    const proxyUrl = 'php/proxy.php?url=https://apis.digital.gob.cl/dpa/regiones';
    // Obtener las regiones desde la API y llenar el select de regiones
    fetch(proxyUrl)
        .then(response => response.json())
        .then(data => {
            const regionSelect = document.getElementById('region');
            data.forEach(region => {
                const option = document.createElement('option');
                option.value = region.nombre; 
                option.textContent = region.nombre;
                regionSelect.appendChild(option);
            });
        })
        .catch(error => console.error('Error:', error));
        // Escuchar el cambio en el select de regiones
    document.getElementById('region').addEventListener('change', function() {
        const regionName = this.value;
        const comunaSelect = document.getElementById('comuna');
        comunaSelect.innerHTML = '<option value="" disabled selected>Seleccione una comuna</option>';

        const proxyComunasUrl = `php/proxy.php?url=https://apis.digital.gob.cl/dpa/comunas?codigo_region=${regionName}`;
        // Obtener las comunas de la región seleccionada y llenar el select de comunas
        fetch(proxyComunasUrl)
            .then(response => response.json())
            .then(data => {
                data.forEach(comuna => {
                    const option = document.createElement('option');
                    option.value = comuna.nombre; 
                    option.textContent = comuna.nombre;
                    comunaSelect.appendChild(option);
                });
            })
            .catch(error => console.error('Error:', error));
    });
});
