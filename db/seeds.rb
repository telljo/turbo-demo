Quote.destroy_all
quotes_file = File.open(Rails.root.join('db', 'quotes.json'))
quotes_data = JSON.parse(quotes_file.read)

quotes_data.each do |quote|
  Quote.create!(
    body: quote["quote"],
    author: quote["author"],
    likes_count: 0
  )
end