class AddCachedVotesToSectiontwos < ActiveRecord::Migration
  def self.up
    add_column :sectiontwos, :cached_votes_total, :integer, :default => 0
    add_column :sectiontwos, :cached_votes_score, :integer, :default => 0
    add_column :sectiontwos, :cached_votes_up, :integer, :default => 0
    add_column :sectiontwos, :cached_votes_down, :integer, :default => 0
    add_column :sectiontwos, :cached_weighted_score, :integer, :default => 0
    add_column :sectiontwos, :cached_weighted_total, :integer, :default => 0
    add_column :sectiontwos, :cached_weighted_average, :float, :default => 0.0
    add_index  :sectiontwos, :cached_votes_total
    add_index  :sectiontwos, :cached_votes_score
    add_index  :sectiontwos, :cached_votes_up
    add_index  :sectiontwos, :cached_votes_down
    add_index  :sectiontwos, :cached_weighted_score
    add_index  :sectiontwos, :cached_weighted_total
    add_index  :sectiontwos, :cached_weighted_average

		Sectiontwo.find_each(&:update_cached_votes)
  end

  def self.down
    remove_column :sectiontwos, :cached_votes_total
    remove_column :sectiontwos, :cached_votes_score
    remove_column :sectiontwos, :cached_votes_up
    remove_column :sectiontwos, :cached_votes_down
    remove_column :sectiontwos, :cached_weighted_score
    remove_column :sectiontwos, :cached_weighted_total
    remove_column :sectiontwos, :cached_weighted_average
  end
end
