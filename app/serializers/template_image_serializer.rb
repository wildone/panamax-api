class TemplateImageSerializer < ActiveModel::Serializer
  self.root = false

  attributes :category, :name, :repository, :tag, :description, :icon, :expose, :ports, :links, :environment, :volumes

  def category
    object.categories.first unless object.categories.blank?
  end
end