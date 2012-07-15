UtopiaData.register :line do
  model do
    has_one :status
    has_many :stations

    validates_presence_of :raw_name
    validates_uniqueness_of :raw_name


    def status
      self.status.first
    end
  end
end
