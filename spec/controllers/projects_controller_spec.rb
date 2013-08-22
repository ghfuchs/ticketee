require 'spec_helper'

describe ProjectsController do
  it "cannot access the show action without permission" do
      project = FactoryGirl.create(:project)
      get :show, :id => "not-here"

      expect(response).to redirect_to(projects_path)
      expect(flash[:alert]).to eql("The project you were looking " +
                                   "for could not be found")
  end

end