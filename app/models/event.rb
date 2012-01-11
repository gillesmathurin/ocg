class Event < ActiveRecord::Base
  
  has_attached_file :photo, :styles => { :thumb => "200x200>" }
  
  scope :next_10, :conditions => ['end_date >= ?', Date.today], :limit => 10 
  FEDERATIONS = [ I18n.t(:fcfg), I18n.t(:fcg), I18n.t(:gccrp), I18n.t(:kmk), I18n.t(:ccmg) ]
  
  scope :fcfg, :conditions => ['federation = ? AND start_date >= ?', I18n.t(:fcfg), Date.today]
  scope :gccrp, :conditions => ['federation = ? AND start_date >= ?', I18n.t(:gccrp), Date.today]
  scope :fcg, :conditions => ['federation = ? AND start_date >= ?', I18n.t(:fcg), Date.today]
  scope :kmk, where('federation = ? AND start_date >= ?', I18n.t(:kmk), Date.today)
  scope :ccmg, where('federation = ? AND start_date >= ?', I18n.t(:ccmg), Date.today)
  scope :to_come, :conditions => ['end_date >= ?', Date.today]
  
  
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
