# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

# Creation des Events du programme officiel
Event.create(:title => "Défilé à Basse-Terre 'Nou tout en lari la", :place => "Basse-Terre", :start_date => "01-03-2010", :end_date => "01-03-2010")
Event.create(:title => "Défilé Nocturne", :place => "Gourbeyre", :start_date => "01-09-2010", :end_date => "01-09-2010")
Event.create(:title => "Défilé à Pointe-à-Pitre", :place => "Pointe-à-Pitre", :start_date => "01-10-2010", :end_date => "01-10-2010")
Event.create(:title => "Défilé à Terre de Haut", :place => "Terre de Haut", :start_date => "01-17-2010", :end_date => "01-17-2010")
Event.create(:title => "Défilé Nocturne", :place => "Saint-Claude", :start_date => "01-23-2010", :end_date => "01-23-2010", :description => "Défilé Nocturne suivi d'un concours de musique")
Event.create(:title => "Défilé à Vieux-Habitants", :place => "Vieux-Habitants", :start_date=>"01-24-2010", :end_date => "01-24-2010")
Event.create(:title => "Election Reine et Roi du carnaval", :place => "Bouillante", :description => "Suivi de la nuit des Artistes à Bouillante", :start_date => "01-30-2010", :end_date => "01-30-2010")
Event.create(:title => "Défilé à Trois Rivières - Défilé des Ecoles de Basse-Terre", :place => "Trois Rivière et Basse-Terre", :start_date => "01-31-2010", :end_date => "01-31-2010")
Event.create(:title => "Village TAMBOU VAPEUR", :place => "Bouillante", :description => "Défilé", :start_date => "02-06-2010", :end_date => "02-06-2010")
Event.create(:title => "Défilé des écoles + Les ainés de Bouillante", :place => "Bouillante", :description => "", :start_date => "02-07-2010", :end_date => "02-07-2010")
Event.create(:title => "")