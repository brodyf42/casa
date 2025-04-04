class CustomOrgLink < ApplicationRecord
  TEXT_MAX_LENGTH = 30

  belongs_to :casa_org
  validates_presence_of :casa_org, :text, :url, :active
  validates_length_of :text, maximum: TEXT_MAX_LENGTH
  validates :url, url: true
end

# == Schema Information
#
# Table name: custom_org_links
#
#  id          :bigint           not null, primary key
#  active      :boolean          default(TRUE), not null
#  text        :string           not null
#  url         :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  casa_org_id :bigint           not null
#
# Indexes
#
#  index_custom_org_links_on_casa_org_id  (casa_org_id)
#
# Foreign Keys
#
#  fk_rails_...  (casa_org_id => casa_orgs.id)
#
