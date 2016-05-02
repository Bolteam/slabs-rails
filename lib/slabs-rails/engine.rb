module SlabsRails
  module Rails
    class Engine < ::Rails::Engine
      initializer 'slabs-sass.assets.precompile' do |app|
        %w(stylesheets javascripts images).each do |sub|
          app.config.assets.paths << root.join('assets', sub)
        end
      end
    end
  end
end
