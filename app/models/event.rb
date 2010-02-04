class Event < ActiveRecord::Base
  
  has_attached_file :photo, :styles => { :thumb => "200x200>" }
  
  named_scope :next_4, :conditions => ['start_date > ?', Date.today], :limit => 4 
  FEDERATIONS = ['Fédération du Carnaval et des Fêtes de la Guadeloupe', 'Fédération Guadeloupéenne de Carnaval', 'Groupement pour le Carnaval et la Culture Région Pointoise']
  
  named_scope :fcfg, :conditions => ['federation = ?', "Fédération du Carnaval et des Fêtes de la Guadeloupe"]
  named_scope :gccrp, :conditions => ['federation = ?', "Groupement pour le Carnaval et la Culture Région Pointoise"]
  named_scope :fcg, :conditions => ['federation = ?', "Fédération Guadeloupéenne de Carnaval"]
  
  def formatted_date(date)

  end
end
