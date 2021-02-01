# frozen_string_literal: true

class Recipe
  attr_reader :title, :description, :ingredients, :cook_time, :featured

  def initialize(attributes)
    @title = attributes[:title]
    @description = attributes[:description]
    @ingredients = attributes[:ingredients]
    @cook_time = attributes[:cook_time]
    @featured = attributes[:featured]
  end

  def self.from_json(json_path)
    raw_json = File.read(json_path)
    attributes = JSON.parse(raw_json).symbolize_keys

    new(attributes)
  end
end
