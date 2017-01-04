require "test_helper"

describe TrialsController do
  let(:trial) { trials :one }

  it "gets index" do
    get trials_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_trial_url
    value(response).must_be :success?
  end

  it "creates trial" do
    expect {
      post trials_url, params: { trial: { accuracy_rating: trial.accuracy_rating, name: trial.name } }
    }.must_change "Trial.count"

    must_redirect_to trial_path(Trial.last)
  end

  it "shows trial" do
    get trial_url(trial)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_trial_url(trial)
    value(response).must_be :success?
  end

  it "updates trial" do
    patch trial_url(trial), params: { trial: { accuracy_rating: trial.accuracy_rating, name: trial.name } }
    must_redirect_to trial_path(trial)
  end

  it "destroys trial" do
    expect {
      delete trial_url(trial)
    }.must_change "Trial.count", -1

    must_redirect_to trials_path
  end
end
