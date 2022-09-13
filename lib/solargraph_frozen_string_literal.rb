require 'solargraph'

class FrozenStringReporter < Solargraph::Diagnostics::Base
  def diagnose source, _api_map
    return [] if source.code.empty? || source.code.start_with?('# frozen_string_literal:')
    [
      {
        range: Solargraph::Range.from_to(0, 0, 0, source.code.lines[0].length).to_hash,
        severity: Solargraph::Diagnostics::Severities::WARNING,
        source: 'FrozenString',
        message: 'File does not start with frozen_string_literal.'
      }
    ]
  end
end

Solargraph::Diagnostics.register 'frozen-string', FrozenStringReporter
