package popularquran

class PlayerController {

    static navigationScope = 'player'

    def index() {}

    def play() { [id: params.id, referrer:params.referrer] }

    // TODO get stats
}
