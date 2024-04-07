```plantuml

@startuml

!theme plain

entity "Users" {
  *id: integer
  --
  *email: string
  *encrypted_password: string
  reset_password_token: string
  reset_password_sent_at: datetime
  remember_created_at: datetime
  created_at: datetime
  updated_at: datetime
}


entity "Documents" {
  *id: integer
  --
  user_id: integer
  *document_type: string
  *content: text
  *status: integer
  created_at: datetime
  updated_at: datetime
}

entity "Transcriptions" {
  *id: integer
  --
  document_id: integer
  *text: text
  created_at: datetime
  updated_at: datetime
}

Users ||--o{ Documents : owns
Documents ||--|{ Transcriptions : generates
@enduml
