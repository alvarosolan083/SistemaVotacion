document.addEventListener('DOMContentLoaded', function() {
    // Obtener referencias a los elementos del formulario
    const nombreInput = document.getElementById('nombre');
    const aliasInput = document.getElementById('alias');
    const rutInput = document.getElementById('rut');
    const emailInput = document.getElementById('email');

    // Obtener referencias a los checkboxes "Como se enteró de nosotros"
    const checkboxesComoSeEntero = document.querySelectorAll('input[name="como_se_entero[]"]');

    // Agregar un evento de escucha al formulario cuando se envía
    document.getElementById('formulario').addEventListener('submit', function(event) {
        // Validar que todos los campos estén completos
        if (nombreInput.value.trim() === '' || aliasInput.value.trim() === '' || rutInput.value.trim() === '' || emailInput.value.trim() === '') {
            alert('Por favor, complete todos los campos.');
            event.preventDefault();
        }

        // Validar el alias
        const alias = aliasInput.value.trim();
        if (alias.length < 6 || !/[a-zA-Z0-9]/.test(alias)) {
            alert('El alias debe contener al menos 6 caracteres alfanuméricos.');
            event.preventDefault();
        }

        // Validar el formato del RUT
        const rut = rutInput.value.trim();
        const rutRegex = /^\d{1,2}\.\d{3}\.\d{3}-[0-9kK]{1}$/;
        if (!rutRegex.test(rut)) {
            alert('Por favor, ingrese un RUT válido.');
            event.preventDefault();
        }

        // Validar el formato del correo electrónico
        const email = emailInput.value.trim();
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            alert('Por favor, ingrese un correo electrónico válido.');
            event.preventDefault();
        }
    });

    let checkedCount = 0;

    // Agregar un evento de escucha a los checkboxes "Como se enteró de nosotros"
    checkboxesComoSeEntero.forEach(function(checkbox) {
        checkbox.addEventListener('change', function() {
            if (this.checked) {
                checkedCount++;
            } else {
                checkedCount--;
            }

            if (checkedCount > 2) {
                this.checked = false;
                alert('Solo puedes seleccionar hasta 2 opciones.');
            }
        });
    });
});
