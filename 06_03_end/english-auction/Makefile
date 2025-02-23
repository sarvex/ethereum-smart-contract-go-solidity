.PHONY:

#deploy-nft:
#	forge create --rpc-url localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 src/MyNFT.sol:MyNFT --constructor-args "0xa0Ee7A142d267C1f36714E4a8F75612F20a79720"

deploy-nft:
	forge create --rpc-url localhost:8545 --unlocked --from 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 src/MyNFT.sol:MyNFT --constructor-args 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
forge create --rpc-url https://eth-sepolia.g.alchemy.com/v2/Z6L3lhjpLhUyaAfoFyBku4ix8nrgor8x --private-key

mint-nft:
	cast send 0x5FbDB2315678afecb367f032d93F642f64180aa3 --unlocked --from 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 "safeMint(address,uint256)" 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 1

approve-nft:
	cast send 0x5FbDB2315678afecb367f032d93F642f64180aa3 --unlocked --from 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 "approve(address,uint256)" 0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0 1

#deploy-auction:
#	forge create --rpc-url localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 src/EnglishAuction.sol:EnglishAuction --constructor-args "0x5FbDB2315678afecb367f032d93F642f64180aa3" 1

deploy-auction:
	forge create --rpc-url localhost:8545 --unlocked --from 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 src/EnglishAuction.sol:EnglishAuction --constructor-args "0x5FbDB2315678afecb367f032d93F642f64180aa3" 1
    forge create --rpc-url https://eth-sepolia.g.alchemy.com/v2/Z6L3lhjpLhUyaAfoFyBku4ix8nrgor8x --private-key src/EnglishAuction.sol:EnglishAuction --constructor-args 0x0AEa3b12C6c357B5CB27195667cAEfbC0bdd8E8c 1

start-auction:
	cast send 0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0 --unlocked --from 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 "start(uint,uint)" 1 100

