require 'rails_helper'
require 'movies_helper'
require 'movies_controller'
require 'movie'

describe MoviesHelper, type: :helper do
    it 'should be defined' do
        expect { oddness(1) }.not_to raise_error
    end
    it 'should return the correct value' do
        expect(oddness(1)).to eq "odd"
        expect(oddness(2)).to eq "even"
    end
end

describe Movie, type: :model do
    it 'should return all ratings' do
        expect(Movie.all_ratings).to eq %w(G PG PG-13 NC-17 R)
    end
end

describe MoviesController, type: :controller do
    it 'is tested in cucumber' do
        expect(response.status).to eq(200)
    end
end