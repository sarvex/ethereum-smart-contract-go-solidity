package main

import (
    "github.com/gin-gonic/gin"
    "github.com/rs/zerolog/log"
)

func main() {
    r := gin.Default()

    r.POST("/auction/start", startAuction)
    r.POST("/auction/end", endAuction)
    r.POST("/auction/withdraw", withdraw)
    r.POST("/bids", createBid)

    if err := r.Run(); err != nil {
        log.Err(err).Msg("Server exited")
    }
}

func startAuction(c *gin.Context) {
    //TODO
}

func endAuction(c *gin.Context) {
    //TODO
}

func withdraw(c *gin.Context) {
    //TODO
}

func createBid(c *gin.Context) {
    //TODO
}
