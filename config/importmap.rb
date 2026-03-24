# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@launchdarkly/js-client-sdk", to: "https://cdn.jsdelivr.net/npm/@launchdarkly/js-client-sdk@4.4.1/dist/index.js"
