require 'spec_helper'

RSpec.describe 'security.md' do
  let(:doc) { Nokogiri::HTML(file_at('/security')) }

  it 'opens external links in a new window' do
    expect(doc).to open_external_links_in_new_window
  end

  it 'escapes html correctly' do
    expect(doc).to properly_escape_html
  end
end