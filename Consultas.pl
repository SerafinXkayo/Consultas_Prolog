ve_peliculas(roberto,suspenso).
ve_peliculas(jaanai,suspenso).
ve_peliculas(abimael,suspenso).
ve_peliculas(leonardo,romance).
ve_peliculas(miguel,terror).

escucha_musica(abelino,reggae).
escucha_musica(antonio,rock).
escucha_musica(izmucaneth,reggae).
escucha_musica(rolando,rock).
escucha_musica(maldonado,regional).

tiene_audifonos(abelino,no).
tiene_audifonos(antonio,no).
tiene_audifonos(izmucaneth,si).
tiene_audifonos(rolando,si).
tiene_audifonos(maldonado,si).
tiene_audifonos(roberto,no).
tiene_audifonos(jaanai,si).
tiene_audifonos(abimael,no).
tiene_audifonos(leonardo,si).
tiene_audifonos(miguel,si).

cuenta_spotify(abelino,no).
cuenta_spotify(antonio,si).
cuenta_spotify(izmucaneth,si).
cuenta_spotify(rolando,no).
cuenta_spotify(maldonado,si).

cuenta_netflix(roberto,si).
cuenta_netflix(roberto,si).
cuenta_netflix(jaanai,si).
cuenta_netflix(abimael,si).
cuenta_netflix(leonardo,no).
cuenta_netflix(miguel,si).

consume(roberto,palomitas).
consume(jaanai,palomitas).
consume(abimael,maruchan).
consume(leonardo,maruchan).
consume(miguel,ensalada).

tiempo_libre(roberto,si).
tiempo_libre(jaanai,si).
tiempo_libre(abimael,si).
tiempo_libre(leonardo,no).
tiempo_libre(miguel,no).

tiene_tardeperfecta(abelino,no).
tiene_tardeperfecta(antonio,no).
tiene_tardeperfecta(izmucaneth,si).
tiene_tardeperfecta(rolando,si).
tiene_tardeperfecta(maldonado,no).
tiene_tardeperfecta(roberto,no).
tiene_tardeperfecta(jaanai,si).
tiene_tardeperfecta(abimael,no).
tiene_tardeperfecta(leonardo,si).
tiene_tardeperfecta(miguel,si).


estado1(X):-ve_peliculas(X,suspenso),consume(X,palomitas),cuenta_net(X,si),tiempo_libre(X,si),tiene_tardeperfecta(X,si).

vida_saludable(X):-consume(X,ensalada),cuenta_net(X,si).

disfruta_camino(X):-escucha_musica(X,regional),tiene_audifiono(X,si),cuenta_spo(X,si).

es_feliz(X):-cuenta_net(X,si),consume(X,maruchan),tiempo_libre(X,si).

son_amigos(X,Y):-consume(X,maruchan),consume(Y,maruchan);consume(X,palomitas),consume(Y,palomitas);consume(X,ensalada),consume(Y,ensalada);ve_peliculas(X,suspenso),ve_peliculas(Y,suspenso);ve_peliculas(X,romance),ve_peliculas(Y,romance);ve_peliculas(X,terror),ve_peliculas(Y,terror).