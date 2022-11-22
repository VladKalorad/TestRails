class GenreBlueprint < Blueprinter::Base
  identifier :id

  fields :name

  association :books, blueprint: BookBlueprint
end
