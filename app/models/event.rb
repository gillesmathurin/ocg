class Event < ActiveRecord::Base
  
  has_attached_file :photo, :styles => { :thumb => "200x200>" }
  
  named_scope :next_10, :conditions => ['end_date >= ?', Date.today], :limit => 10 
  FEDERATIONS = ['Fédération du Carnaval et des Fêtes de la Guadeloupe', 'Fédération Guadeloupéenne de Carnaval', 'Groupement pour le Carnaval et la Culture Région Pointoise', 'Kolektif Mas Kiltirèl', 'Comite du Carnaval de Marie-Galante']
  
  named_scope :fcfg, :conditions => ['federation = ? AND start_date >= ?', "Fédération du Carnaval et des Fêtes de la Guadeloupe", Date.today]
  named_scope :gccrp, :conditions => ['federation = ? AND start_date >= ?', "Groupement pour le Carnaval et la Culture Région Pointoise", Date.today]
  named_scope :fcg, :conditions => ['federation = ? AND start_date >= ?', "Fédération Guadeloupéenne de Carnaval", Date.today]
  named_scope :to_come, :conditions => ['end_date >= ?', Date.today]
  
  
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
