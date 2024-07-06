
module nft_sui_tutorial::nft_sui_tutorial {
    use sui::object::UID;
    use sui::tx_context::TxContext;
    use std::string::String;

    public struct NFT has key, store {
        id: UID,
        name: String,
        description: String,
    }

    public entry fun mint(name: String, description: String, ctx: &mut TxContext) {
        //create the new NFT
        let nft = NFT {
            id: object::new(ctx),
            name,
            description,
        };
        //mint and send nft to caller
        let sender = tx_context::sender(ctx);
        transfer::public_transfer(nft, sender);
    }

    //function transfers nft to another address
    public entry fun transfer(nft:NFT, recipient:address) {
        transfer::public_transfer(nft, recipient);
    }
}
