require 'nokogiri'
require 'open-uri'

#Je suis resté bloqué a la première consigne car je suis resté 
#bloqué sur le premier scrapping, je voulais cibler le Style 22 
#mais à chaque fois on m'affichait toute la page
#Sachant que j'aime (un peu trop) trouver les solutions par moi même 
# J'ai réussi à trouver sur le net que rajouter une commande type "tr td.style27" permettait de mieux cibler
# Malheureusement je n'ai pas pus l'appliquer correctement

#Au moins la correction sera rapide ;) 

doc = Nokogiri::HTML(open('http://annuaire-des-mairies.com/95/vaureal.html').read)

doc.search('tr td.style27 p.Style22 font').each do |link|
  puts link.content
end








