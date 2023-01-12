// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import "./controllers";
import "bootstrap";
// For client_side_validations
import '@client-side-validations/client-side-validations/src'
import '@client-side-validations/simple-form/src/index.bootstrap4';
require("jquery");
require(rails.validations);
require(rails.validations.simple_form.bootstrap4);
