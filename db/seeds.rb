@admin = User.create(first_name: 'Tana', last_name: 'Arnold', email: 'admin@admin.com', password: '123456')

def read_file json_file
  x = nil
  begin
    return JSON.parse(open(json_file).read)
  rescue
    return nil
  end
end

tests = read_file('db/data/tests.json')
tests.each do |test|
  Test.create(
    name: test['name'],
    description: test['description'].join("\n")
  )
end
