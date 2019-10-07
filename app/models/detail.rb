require 'elasticsearch/model'
class Detail < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :name, analyzer: 'english'
      indexes :recipes, analyzer: 'english'
    end
  end
  def self.search_published(query)
    self.search({
                    "query": {
                        bool: {
                            must: [
                                {
                                    multi_match: {
                                        query: query,
                                        fields: [:author, :title, :body, :tags]
                                    }
                                },
                                {
                                    filter: [
                                        { range: {created_at: {lte: 10.days.ago} }

                                    }]
                                }]
                        }
                    }
                })
  end
 end
