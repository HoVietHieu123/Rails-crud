import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

// css
import "bootstrap"
import "bootstrap/dist/css/bootstrap.min.css"
import "../assets/stylesheets/sb-admin-2.min"
import "../assets/stylesheets/dataTables.bootstrap4.min.css"
import "../assets/stylesheets/customs"

// js
import "bootstrap/dist/js/bootstrap.bundle.min.js"
import "../assets/javascripts/jquery.easing.min"
import "../assets/javascripts/sb-admin-2.min"

// datepicker
import "bootstrap-datepicker/dist/css/bootstrap-datepicker.min"
import "bootstrap-datepicker/dist/js/bootstrap-datepicker.min"
import "../assets/javascripts/datepicker"

// font-awesome
import "../assets/vendor/all"

Rails.start()
ActiveStorage.start()
