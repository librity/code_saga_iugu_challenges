# frozen_string_literal: true

require 'json'

class Recipe
  FILE_PATH = 'data/recipe.json'

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
    object_data = JSON.parse(raw_json)

    return new(object_data.symbolize_keys) unless object_data.class == Array

    object_data.map { |attributes| new(attributes.symbolize_keys) }
  end

  def save_to_file
    File.write(FILE_PATH, to_json)
  end
end
