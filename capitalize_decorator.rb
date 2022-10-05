require './base_decorator'
class CapitalizeDeclorator < BaseDecorator
    def correct_name
        @nameable.correct_name.capitalize
    end
end