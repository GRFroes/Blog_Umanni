// Importando o Turbo (parte do Hotwire)
import "@hotwired/turbo-rails"

import "controllers"

import "channels"

import Rails from "@rails/ujs"
Rails.start()

import { createConsumer } from "@rails/actioncable"
const consumer = createConsumer()
