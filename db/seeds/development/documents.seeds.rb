# frozen_string_literal: true

after 'development:users' do
  notify __FILE__

  lotr_quotes = {
    en: [
      "Even the smallest light can pierce the darkest shadow.",
      "The path of a hero is paved with both triumph and sacrifice.",
      "In the face of great evil, true friendship becomes our mightiest weapon.",
      "The wisdom of ages sleeps in the roots of ancient trees.",
      "Hope is the fire that burns brightest in the depths of winter."
    ],
    cs: [
      "I to nejmenší světlo může protnout nejhlubší stín.",
      "Cesta hrdiny je dlážděná jak vítězstvím, tak obětí.",
      "Tváří v tvář velkému zlu se pravé přátelství stává naší nejmocnější zbraní.",
      "Moudrost věků spí v kořenech prastarých stromů.",
      "Naděje je oheň, který hoří nejjasněji v hloubkách zimy."
    ]
  }

  User.find_each.with_index do |user, i|
    5.times do |j|
      seed Document,
           { title: "Document title #{i * 10 + j}" },
           { document_type: %w[pdf text link].sample,
             content: lotr_quotes[:en][j],
             status: Document::STATUS[j % 4],
             user: user }
    end

    5.times do |j|
      seed Document,
           { title: "Document title #{i * 100 + j}" },
           { document_type: %w[pdf text link].sample,
             content: lotr_quotes[:cs][j],
             status: Document::STATUS[j % 4],
             user: user }
    end
  end
end
