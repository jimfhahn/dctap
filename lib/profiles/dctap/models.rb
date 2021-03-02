# frozen_string_literal: true

module Profiles
  module Dctap
    module Models
      # DRY Types
      module Types
        include Dry.Types()
      end

      # Base class for models.
      class Struct < Dry::Struct
        transform_keys(&:to_sym)

        schema schema.strict
      end
    end
  end
end
