package main

import (
    "github.com/ethereum/go-ethereum/common"
    "github.com/ethereum/go-ethereum/ethclient"
    "github.com/gin-gonic/gin"
    "github.com/rs/zerolog/log"

    contract "api/auction"
)

const (
    NodeURL         = ""
    ContractAddress = ""
    ChainID         = 0
)

func main() {
    r := gin.Default()

    conn, err := ethclient.Dial(NodeURL)
    if err != nil {
        log.Err(err).Msg("Fail to initialise the eth client")
        return
    }

    auction, err := contract.NewAuction(common.HexToAddress(ContractAddress), conn)
    if err != nil {
        log.Err(err).Msg("Fail to initialise the contract")
        return
    }

    h := NewHandler(auction)

    r.POST("/auction/start", h.startAuction)
    r.POST("/auction/end", h.endAuction)
    r.POST("/auction/withdraw", h.withdraw)
    r.POST("/bids", h.createBid)

    if err := r.Run(); err != nil {
        log.Err(err).Msg("Server exited")
    }
}
