RezTailor API

Database Objects:
- Users: Sign up, sign in, sign out, change password, get user or users.
- Documents: Users have many documents.
- Sections: Each document has many sections. In addition, each section can act as a parent for other sections.
- Versions: Each document also has many versions.
- Tags: Tags associate sections and versions. When a tag associates a section and a version, it is de-emphasized in that version's view.


Route End-Points:

Prefix    Verb   URI Pattern                    Controller#Action
    users GET    /users(.:format)               users#index
     user GET    /users/:id(.:format)           users#show
  sign_up POST   /sign-up(.:format)             users#signup
  sign_in POST   /sign-in(.:format)             users#signin
          DELETE /sign-out/:id(.:format)        users#signout
          PATCH  /change-password/:id(.:format) users#changepw
documents GET    /documents(.:format)           documents#index
          POST   /documents(.:format)           documents#create
 document GET    /documents/:id(.:format)       documents#show
          PATCH  /documents/:id(.:format)       documents#update
          PUT    /documents/:id(.:format)       documents#update
          DELETE /documents/:id(.:format)       documents#destroy
 sections GET    /sections(.:format)            sections#index
          POST   /sections(.:format)            sections#create
  section GET    /sections/:id(.:format)        sections#show
          PATCH  /sections/:id(.:format)        sections#update
          PUT    /sections/:id(.:format)        sections#update
          DELETE /sections/:id(.:format)        sections#destroy
 versions GET    /versions(.:format)            versions#index
          POST   /versions(.:format)            versions#create
  version GET    /versions/:id(.:format)        versions#show
          PATCH  /versions/:id(.:format)        versions#update
          PUT    /versions/:id(.:format)        versions#update
          DELETE /versions/:id(.:format)        versions#destroy
     tags GET    /tags(.:format)                tags#index
          POST   /tags(.:format)                tags#create
      tag GET    /tags/:id(.:format)            tags#show
          DELETE /tags/:id(.:format)            tags#destroy


Link to Front-End Repo:
<https://github.com/soynog/resume-tailor-frontend/>
