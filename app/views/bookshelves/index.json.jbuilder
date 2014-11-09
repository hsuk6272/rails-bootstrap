json.array!(@bookshelves) do |bookshelf|
  json.extract! bookshelf, :id, :title, :string, :author, :string
  json.url bookshelf_url(bookshelf, format: :json)
end
