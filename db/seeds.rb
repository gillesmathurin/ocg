# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

# Creation des Events du programme officiel
Event.delete_all
Event.create(:title => "Défilé à Basse-Terre 'Nou tout en lari la", :place => "Basse-Terre", :start_date => "2010-01-03", :end_date => "2010-01-03")
Event.create(:title => "Défilé Nocturne", :place => "Gourbeyre", :start_date => "2010-01-09", :end_date => "2010-01-09")
Event.create(:title => "Défilé à Pointe-à-Pitre", :place => "Pointe-à-Pitre", :start_date => "2010-01-10", :end_date => "2010-01-10")
Event.create(:title => "Défilé à Terre de Haut", :place => "Terre de Haut", :start_date => "2010-01-17", :end_date => "2010-01-17")
Event.create(:title => "Défilé Nocturne", :place => "Saint-Claude", :start_date => "2010-01-23", :end_date => "2010-01-23", :description => "Défilé Nocturne suivi d'un concours de musique")
Event.create(:title => "Défilé à Vieux-Habitants", :place => "Vieux-Habitants", :start_date=>"2010-01-24", :end_date => "2010-01-24")
Event.create(:title => "Election Reine et Roi du carnaval", :place => "Bouillante", :description => "Suivi de la nuit des Artistes à Bouillante", :start_date => "2010-01-30", :end_date => "2010-01-30")
Event.create(:title => "Défilé à Trois Rivières - Défilé des Ecoles de Basse-Terre", :place => "Trois Rivière et Basse-Terre", :start_date => "2010-01-31", :end_date => "2010-01-31")
Event.create(:title => "Village TAMBOU VAPEUR", :place => "Bouillante", :description => "Défilé", :start_date => "2010-02-06", :end_date => "2010-02-06")
Event.create(:title => "Défilé des écoles + Les ainés de Bouillante", :place => "Bouillante", :description => "", :start_date => "2010-02-07", :end_date => "2010-02-07")
Event.create(:title => "Défilé des écoles", :place => "Trois Rivières", :start_date => "2010-02-13", :end_date => "2010-02-13", :description => "")
Event.create(:title => "Défilé à Pointe-à-Pitre", :place => "Pointe-à-Pitre", :start_date => "2010-02-14", :end_date => "2010-02-14")
Event.create(:title => "Parade électrique", :place =>"", :start_date => "2010-02-15", :end_date => "2010-02-15", :description => "")
Event.create(:title => "Winner 2010 Grande Parade", :place => "", :description => "Char de la Gauloise avec NRJ, Bal de la FEDE au swing-club avec TIPICAL ABIDOS", :start_date => "2010-02-16", :end_date => "2010-02-16")
Event.create(:title => "Mercredi des cendres à Basse-Terre", :place => "Basse-Terre", :start_date => "2010-02-17", :end_date => "2010-02-17")
Event.create(:title => "Mi Careme", :start_date => "2010-03-11", :end_date => "2010-03-11")

Event.update_all("federation = 'Fédération du Carnaval et des Fêtes de la Guadeloupe'")

# Creation du programme du GCCRP
Event.create(:title => "Election Prince et Princesse", :place => "Pointe-à-Pitre", :start_date => "2010-02-03", :end_date => "2010-02-03", :federation => 'Groupement pour le Carnaval et la Culture Région Pointoise')
Event.create(:title => "Défilé des enfants", :place => "Pointe-à-Pitre", :start_date => "2010-02-06", :end_date => "2010-02-06", :federation => 'Groupement pour le Carnaval et la Culture Région Pointoise')
Event.create(:title => "Election de la Reine du Carnaval", :place => "Pointe-à-Pitre", :start_date => "2010-02-13", :end_date => "2010-02-13", :federation => 'Groupement pour le Carnaval et la Culture Région Pointoise')
Event.create(:title => "Dimanche gras à Pointe-à-Pitre", :place => "Pointe-à-Pitre", :start_date => "2010-02-14", :end_date => "2010-02-14", :federation => 'Groupement pour le Carnaval et la Culture Région Pointoise')
Event.create(:title => "Mardi gras à Basse-Terre", :place => "Basse-Terre", :start_date => "2010-02-14", :end_date => "2010-02-14", :federation => 'Groupement pour le Carnaval et la Culture Région Pointoise')
Event.create(:title => "Mercredi des cendres", :place => "Pointe-à-Pitre", :start_date => "2010-02-16", :end_date => "2010-02-16", :federation => 'Groupement pour le Carnaval et la Culture Région Pointoise')

# Programme de la Fédération Guadeloupéenne de Carnaval
Event.create(:title => "Défilé de mise en jambe dans toutes les communes", :place => "", :start_date => "2010-01-03", :end_date => "2010-01-03", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "Présentation de la saison 2009", :place => "Cité des Métiers du Raizet ou CCI de Basse-Terre", :start_date => "2010-01-08", :end_date => "2010-01-08", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "Grande Parade de Petit-Bourg", :place => "Petit-Bourg", :start_date => "2010-01-17 15:00", :end_date => "2010-01-17", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "Nocturne du Lamentin", :place => "Lamentin", :start_date => "2010-01-23 20:00", :end_date => "2010-01-23", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "Sortie de Pointe-Noire", :place => "GRAND-BOURG", :start_date => "2010-01-24 15:00", :end_date => "2010-01-24", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "Doubout pou an gran vidé", :place => "Abymes", :start_date => "2010-01-31 15:00", :end_date => "2010-01-31", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "Bémao mi mas", :place => "BAIE-MAHAULT", :start_date => "2010-02-07 15:00", :end_date => "2010-02-07", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "La Grande parade de nuit", :place => "Capesterre B/E", :start_date => "2010-02-12 18:30", :end_date => "2010-02-12", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "Village des Sponsors", :place => "Capesterre B/E", :start_date => "2010-02-13 09:00", :end_date => "2010-02-13 13:00", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "Défilé intergénération les écoles et la fédération du 3ème age", :place => "Capesterre B/E", :start_date => "2010-02-13 14:30", :end_date => "2010-02-13", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "Dimanche gras", :place => "POINTE-A-PITRE", :start_date => "2010-02-14 14:00", :end_date => "2010-02-14", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "Lundi gras avec MATAMBA", :place => "Saint-François", :start_date => "2010-02-15 19:00", :end_date => "2010-02-15", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "Mardi-gras Grande Parade du Moule", :place => "Le Moule", :start_date => "2010-02-16", :end_date => "2010-02-16", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "Sortie des Cendres", :description => "Brilé vaval - Char Arios et Petay cho", :place => "Capesterre B/E", :start_date => "2010-02-16", :end_date => "2010-02-16", :federation => 'Fédération Guadeloupéenne de Carnaval')
Event.create(:title => "Remise des Prix", :place => "Le Moule", :start_date => "2010-03-10", :end_date => "2010-03-10", :federation => 'Fédération Guadeloupéenne de Carnaval')