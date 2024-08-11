# frozen_string_literal: true

require "rails_helper"

RSpec.describe DocumentsController, type: "controller" do
  let(:user) { create(:user) }
  let(:document) { create(:document, user:) }

  before do
    sign_in user
  end

  describe "GET #index" do
    it "assigns @documents and renders the index template" do
      document
      get :index

      expect(assigns(:documents)).to eq([document])
      expect(response).to have_http_status(:ok)
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "renders the show template" do
      get :show, params: { id: document.id }
      expect(response).to render_template("show")
    end
  end

  describe "GET #new" do
    it "assigns a new document to @document" do
      get :new
      expect(assigns(:document)).to be_a_new(Document)
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new document" do
        expect do
          post :create, params: { document: attributes_for(:document) }
        end.to change(Document, :count).by(1)
        expect(response).to redirect_to(Document.last)
        expect(flash[:notice]).to eq "Document was successfully created."
      end

      context "with invalid attributes" do
        # TODO; add example for invalid attributes when added
      end
    end
  end

  describe "PUT #update" do
    context "with valid attributes" do
      it "updates the document and redirects" do
        put :update, params: { id: document.id, document: { title: "Updated Title" } }
        document.reload
        expect(document.title).to eq("Updated Title")
        expect(response).to redirect_to(document)
      end
    end

    context "with invalid attributes" do
      # TODO; add example for invalid attributes when added
    end
  end

  describe "DELETE #destroy" do
    it "deletes the document" do
      document
      expect do
        delete :destroy, params: { id: document.id }
      end.to change(Document, :count).by(-1)
      expect(response).to redirect_to(documents_url)
    end
  end
end
