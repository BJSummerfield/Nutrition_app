class Foodapi
  URL = 'https://api.nal.usda.gov'
  RESULT_COUNT = 5

  # Food groups 
# 0100 - Dairy and Egg Products
# 0200 - Spices and Herbs
# 0300 - Baby Foods
# 0400 - Fats and Oils
# 0500 - Poultry Products
# 0600 - Soups, Sauces, and Gravies
# 0700 - Sausages and Luncheon Meats
# 0800 - Breakfast Cereals
# 0900 - Fruits and Fruit Juices
# 1000 - Pork Products
# 1100 - Vegetables and Vegetable Products
# 1200 - Nut and seed Products
# 1300 - Beef Products
# 1400 - Beverages
# 1500 - FinFish and Shellfish Products
# 1600 - Legumes and Legume Products
# 1700 - Lamb, Veal, and Game Products
# 1800 - Baked Products
# 1900 - Sweets
# 2000 - Cereal Grains and Pasta
# 2100 - Fast Foods
# 2200 - Meals, Entrees, and Side Dishes
  
  def self.search(params)
    request('/ndb/search/', {
      q: params[:food],
      max: RESULT_COUNT,
      fg: params[:group],
      offset: 0
    })
  rescue HTTP::Error
    {list: {item: []}}
  end

  def self.ndbno_list(params)
    search(params)[:list][:item].map{|food| food[:ndbno]}
  end

  def self.report(ndbno)
    request('/ndb/V2/reports', {
      type: 'b', 
      ndbno: ndbno
    })
  rescue HTTP::Error
    {foods: []}
  end

  def self.food_list(ndbno)
    report(ndbno)[:foods]
  end

  def self.request(path, params)
    HTTP.get(URL + path, params: {
      format: 'json',
      api_key: ENV['API_KEY']
    }.merge(params)).parse.to_h.deep_symbolize_keys
  end
end

#name -- [labels]
