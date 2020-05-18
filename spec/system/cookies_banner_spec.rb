# frozen_string_literal: true

require "spec_helper"

describe "Cookies", type: :system do
  let(:organization) { create(:organization) }

  shared_examples "on decline or accept cookies policy" do |choice|
    before do
      click_button choice
    end

    it "no longer shows the banner" do
      expect(page).to have_no_content "Accept"
      expect(page).to have_no_content "Decline"
      expect(page).to have_no_content "Learn more"

      visit decidim.root_path
      expect(page).to have_no_content "Learn more"
    end
  end

  shared_examples "after refresh or navigate" do
    before do
      page.execute_script("document.cookie = \"decidim-cc=true\";")
      visit current_path
    end

    it "shows the revoke acceptance link in footer" do
      within ".footer-nav" do
        expect(page).to have_link("Revoke cookies acceptance", class: "reset-button")
      end
    end
  end

  before do
    switch_to_host(organization.host)
    visit decidim.root_path
  end

  it "shows the cookie banner" do
    expect(page).to have_content "Accept"
  end

  it "shows the learn more button" do
    expect(page).to have_content "Learn more"
  end

  it "doesn't show the revoke acceptance link" do
    expect(page).not_to have_content "Revoke cookies acceptance"
  end

  context "when user accept the cookie policy" do
    it_behaves_like "on decline or accept cookies policy", "Accept"
    it_behaves_like "after refresh or navigate"
  end

  context "when user decline the cookie policy" do
    it_behaves_like "on decline or accept cookies policy", "Decline"
    it_behaves_like "after refresh or navigate"
  end

  context "when user clicks on 'learn more' button" do
    before do
      click_button "Learn more"
    end

    it "opens a new modal" do
      within ".orejime-ModalWrapper" do
        expect(page).to have_content "Information that we collect"
        expect(page).to have_content "privacy policy"
      end
    end
  end
end
