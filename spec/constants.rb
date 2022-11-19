module RspecConstants
    HEADERS = {
        'Content-Type':'application/json',
        'X-Platform': '',
        'Accept': 'application/vnd.dai_musica.v1+json',
        'Access-Control-Allow-Origin': '*'
    }

    def self.headers
        return HEADERS
    end
    
end