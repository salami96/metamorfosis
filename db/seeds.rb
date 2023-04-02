["Casa", "Árvore"].each do |name|
  Room.find_or_create_by!(name: name)
end

specialties = {}
["Psicóloga", "Fonoaudióloga", "Terapeuta Ocupacional", "Nutricionista"].each do |name|
  specialties[name] = Specialty.find_or_create_by!(name: name)
end

Professional.create!(
  name: "Nicole Lopes",
  email: "nicolelopes7777@gmail.com",
  password: "123456",
  password_confirmation: "123456"
) unless Professional.find_by(email: "nicolelopes7777@gmail.com")

Professional.create!(
  name: "Domênica Salton",
  email: "domenica@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  specialties: [specialties["Psicóloga"]],
  issue_note: true,
  room_rent: 0,
) unless Professional.find_by(email: "domenica@gmail.com")

Professional.create!(
  name: "Maria Luíza",
  email: "malu@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  specialties: [specialties["Fonoaudióloga"]],
  issue_note: true,
  room_rent: 0,
) unless Professional.find_by(email: "malu@gmail.com")

Professional.create!(
  name: "Juliana",
  email: "juliana@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  specialties: [specialties["Terapeuta Ocupacional"]],
  issue_note: true,
  room_rent: 0,
) unless Professional.find_by(email: "juliana@gmail.com")