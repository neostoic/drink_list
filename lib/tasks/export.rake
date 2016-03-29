namespace :export do
  desc "Prints Alcohol.all in a seeds.rb way."
  task :seeds_format => :environment do
    Alcohol.order(:id).all.each do |alcohol|
      puts "Alcohol.create(#{alcohol.serializable_hash.delete_if {|key, value|
      ['created_at', 'updated_at', 'id'].include?(key)}.to_s.gsub(/[{}]/, '')})"
    end
  end
end
