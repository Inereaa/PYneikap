
document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('form').addEventListener('submit', async (event) => {
        event.preventDefault(); // para evitar el envío por defecto del formulario

        const user = document.getElementById('user').value;
        const passw = document.getElementById('passw').value;
        const msg = document.getElementById('msg');
        msg.innerHTML = '';

        try {
            // se consulta al JSON Server para verificar usuario y contraseña
            const response = await fetch('http://localhost:3000/users');
            if (!response.ok) throw new Error('Error al conectar con el servidor');

            const users = await response.json(); // esto obtiene toda la lista de usuarios
            const existe = users.find(u => u.username == user && u.password == passw);

            if (existe) {
                window.location.href = '../index.html';
            } else {
                msg.innerHTML = 'Usuario o contraseña incorrectos.';
            }
        } catch (error) {
            console.error('Error:', error);
            msg.innerHTML = 'Error al iniciar sesión.';
        }
    });
});
