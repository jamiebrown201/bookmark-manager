feature 'tagging links' do
  scenario 'Can add tags to a new link' do
    visit '/links/add'
    fill_in(:url, with: 'google.com')
    fill_in(:title, with: 'live')
    fill_in(:tags, with: 'search')
    click_button('Add link')
    link = Link.first
    expect(link.tags.map(&:tags)).to include('search')
    end
end
