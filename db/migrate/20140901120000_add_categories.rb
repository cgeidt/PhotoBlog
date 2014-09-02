class AddCategories < ActiveRecord::Migration

  def self.up
    Category.delete_all
    Category.create!([
      {:id=>101,:name=>'Urlaub'  },
      {:id=>102,:name=>'Natur'   },
      {:id=>103,:name=>'Handy'   },
      {:id=>104,:name=>'Nacht'   },
      {:id=>105,:name=>'Personen'}
    ])
  end

end
