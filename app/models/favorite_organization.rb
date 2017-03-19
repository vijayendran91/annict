# frozen_string_literal: true
# == Schema Information
#
# Table name: favorite_organizations
#
#  id                  :integer          not null, primary key
#  user_id             :integer          not null
#  organization_id     :integer          not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  watched_works_count :integer          default(0), not null
#
# Indexes
#
#  index_favorite_organizations_on_organization_id              (organization_id)
#  index_favorite_organizations_on_user_id                      (user_id)
#  index_favorite_organizations_on_user_id_and_organization_id  (user_id,organization_id) UNIQUE
#  index_favorite_organizations_on_watched_works_count          (watched_works_count)
#

class FavoriteOrganization < ApplicationRecord
  belongs_to :organization, counter_cache: true
  belongs_to :user
end
