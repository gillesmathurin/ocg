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
Event.create(:title => "Mi Careme", :start_date => "2010-03-11", :end_date => "2010-03-11"  )

# TODO : Updater les evenements ci-dessus avec le champ Federation = "Federation du carnaval et des fetes de la Guadeloupe"