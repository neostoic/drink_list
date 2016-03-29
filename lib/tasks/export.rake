namespace :export do
  desc "Prints Drink.all in a seeds.rb way."
  task :seeds_format => :environment do
    Drink.order(:id).all.each do |drink|
      puts "Drink.create(#{drink.serializable_hash.delete_if {|key, value|
      ['created_at', 'updated_at', 'id'].include?(key)}.to_s.gsub(/[{}]/, '')})"
    end
  end
end
