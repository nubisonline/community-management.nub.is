module Jekyll
  class YAMLoader < Generator
    priority :highest
	safe true

	def generate(site)
		content = {}
		
		content['info'] = YAML::load(File.read('_source-assets/content/info.yml'))
		content['clients'] = YAML::load(File.read('_source-assets/content/clients.yml'))
		content['team'] = YAML::load(File.read('_source-assets/content/team.yml'))
		
		site.config['content'] = content
	end
  end
end
