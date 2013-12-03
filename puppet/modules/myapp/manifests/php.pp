class myapp::php {
  include apt
	include ::php
  include ::php::apt
  include ::php::extension::xdebug

  class { 'php::cli':
    settings => {
      set => {
        'Date/date.timezone' => 'America/Los_Angeles',
      }
    }
  }

  Package['php5-cli'] -> Php::Extension <| |> -> Php::Config <| |>

  Apt::Source <| |> -> Package <| |>
}