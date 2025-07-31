configuración del Thread Group

Parámetros utilizados:
| Propiedad | Valor | Implicaciones Técnicas | 
| Nombre del Grupo | Grupo_usuarios | Define el conjunto lógico de usuarios simulados. | 
| Número de Hilos (usuarios) | 10 | Simula 10 usuarios concurrentes. | 
| Ramp-up Period (segundos) | 4 | Los hilos se activan gradualmente en 4 segundos. | 
| Loop Count | 100 | Cada usuario ejecuta 100 iteraciones (total: 1000 solicitudes). | 
- El ramp-up suave de 4 segundos minimiza el impacto de carga abrupta, favoreciendo una evaluación progresiva de rendimiento.

Configuración de Datos Dinámicos – CSV Data Set Config
Simular autenticación o navegación personalizada cargando credenciales desde un archivo CSV para cada hilo de usuario.
Detalles técnicos extraídos:
| Parámetro | Valor | Implicación técnica | 
| Nombre del archivo | DATA.csv (ruta absoluta local) | Contiene credenciales en formato delimitado. | 
| Codificación | UTF-8 | Compatible con caracteres especiales, útil en entornos multilingües. | 
| Variables definidas | user, passwd | Cada hilo toma estos valores como credenciales. | 
| Ignorar primera línea |Sí | Evita que los encabezados se interpreten como datos. | 
| Delimitador | ; | Asegura separación correcta entre campos dentro del CSV. | 
| Reciclar en EOF | Sí | Reinicia la lectura al llegar al final del archivo, útil para pruebas largas. | 

HTTP Request Configurado en JMeter
Detalles de la solicitud:
| Propiedad | Valor | Observación técnica | 
| Protocolo | https | Conexión segura con el servidor. | 
| Servidor | fakestoreapi.com | API pública simulada ideal para pruebas de login. | 
| Método HTTP | POST | Envío de credenciales al backend. | 
| Ruta | /auth/login | Endpoint dedicado a autenticación. | 
| Opciones activadas | Redirect Automatically, Follow Redirects, Use KeepAlive | Mejora la eficiencia de conexión y seguimiento de sesiones. | 
| Formato de datos enviados | JSON con variables dinámicas | json { "username": "${user}", "password": "${passwd}" }  Utiliza credenciales del archivo DATA.csv. | 

View Results Tree
- Ver Árbol de Resultados en JMeter, específicamente con el sampler “Resultados_login”.

Response Time Graph
- Gráfico de Tiempos de Respuesta, bajo el nombre Reporte_Graico muestra una serie aún más estable, con tiempos alrededor de los 310–320 ms durante un lapso de 20 segundos (de 10:09:00 a 10:09:20).













