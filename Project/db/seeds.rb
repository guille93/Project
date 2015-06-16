Decision.create(user_id: 1, name_1: 'LOTR',vote_1: 0,image_1:"../esdla.jpg",name_2:'Hunger Games', vote_2: 0,image_2:"../hambre.jpg", category:"libros", description:"Cual de los dos libros debería comprarme")
Decision.create(user_id: 1,name_1: 'Fast & Furious',vote_1: 0,image_1:"../furious.jpg",name_2:'Jurassic World', vote_2: 0,image_2:"../jurassic.jpg", category:"peliculas", description:"Esto es la descripcion")
Decision.create(user_id: 1,name_1: 'Estopa',vote_1: 0,image_1:"../estopa.jpg",name_2:'Melendi', vote_2: 0,image_2:"../melendi.jpg", category:"musica", description:"Esto es la descripcion")

User.create(first_name:'Guillermo', last_name:'Martinez', email:'GuilermoM@gmail.com', password:'1234567', avatar:"../guillermo1.png", fondo:"../fondo.jpg")