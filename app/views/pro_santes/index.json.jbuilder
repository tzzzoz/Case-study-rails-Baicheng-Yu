json.array!(@pro_santes) do |pro_sante|
  json.extract! pro_sante, :id, :nom, :prenom, :adresse_id, :specialte
  json.url pro_sante_url(pro_sante, format: :json)
end
