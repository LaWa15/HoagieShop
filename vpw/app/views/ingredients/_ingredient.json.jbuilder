json.extract! ingredient, :id, :name, :price, :maxUsage, :available, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
