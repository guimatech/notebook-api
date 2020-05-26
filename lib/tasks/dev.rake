namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    puts 'Resetando banco de dados...'
    %x(rails db:drop db:create db:migrate)

    puts 'Cadastrando os tipos...'
    kinds = %w(Amigo Comercial Conhecido)

    kinds.each do |kind|
      Kind.create!(
        description: kind
      )
    end
    puts 'Tipos cadastrados com sucesso'

    #####################

    puts 'Cadastrando os contatos...'
    100.times do |_i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
        kind: Kind.all.sample
      )
    end
    puts 'Contatos cadastrados com sucesso'

    #####################

    puts 'Cadastrando os telefones...'
    Contact.all.each do |contact|
      Random.rand(5).times do |_i|
        Phone.create!(
          number: Faker::PhoneNumber.cell_phone,
          contact: contact
        )
      end
    end
    puts 'Telefones cadastrados com sucesso'

    #####################

    puts 'Cadastrando os endereços...'
    Contact.all.each do |contact|
      Address.create!(
        street: Faker::Address.street_address,
        city: Faker::Address.city,
        contact: contact
      )
    end
    puts 'Endereços cadastrados com sucesso'
  end
end
