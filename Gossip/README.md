# Objectif de l'application
Création de bases de données pour l'application Gossip. 

# Bases et données accessibles par instante : 
- User - données accessibles pour chaque instance : gossip, comment, tag city et like
- Gossip - données accessibles pour chaque instance : user, comment, city, tag et like
- Comment - données accessibles pour chaque instance : user, gossip et like
- Like - données accessibles pour chaque instance : user et gossip/comment via imageable
- Tag - données accessibles pour chaque instance : user et gossip
- City : - donnée accessible pour chaque instance : user.

# Gemfile 
Gemfile rails classique avec ajout de la gem 'faker'.

# Auteur.e
Laurie.B