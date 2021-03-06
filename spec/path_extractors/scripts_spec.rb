require_relative '../spec_helper'

describe name_from_filename do
    include_examples 'path_extractor'

    def results
        [
            'http://test.com',
            'test',
            'test.com'
        ]
    end

    def text
        results.map { |u| "<script src='#{u}'>Stuff</script>" }.join
    end

    easy_test
end
