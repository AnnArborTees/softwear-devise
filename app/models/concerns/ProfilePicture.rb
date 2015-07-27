module ProfilePicture
  extend ActiveSupport::Concern

  included do
    belongs_to :profile_picture, class_name: 'Asset'

    accepts_nested_attributes_for :profile_picture

    after_save :assign_image_assetables
  end

  # Don't assign attachment attributes if no file is specified
  def profile_picture_attributes=(attrs)
    super(attrs) unless attrs[:file].blank?
  end

  protected

  # We use belongs_to for the images, because you cannot have two has_ones of the
  # same type. Because of this, the assets don't get the assetable information they
  # need for paths. This is a quick fix for that.
  def assign_image_assetables
    [profile_picture].compact.each do |image|
      image.assetable = self
      image.save(validate: false)
    end
  end
end
