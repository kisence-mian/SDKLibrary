.class public interface abstract Lcom/anythink/hb/Bidder;
.super Ljava/lang/Object;


# virtual methods
.method public abstract bid(Lcom/anythink/hb/data/BidRequestInfo;Ljava/lang/String;JLcom/anythink/hb/callback/BiddingCallback;)V
.end method

.method public abstract getAdBidFormat(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAdsRender()Ljava/lang/Object;
.end method

.method public abstract getBidderClass()Ljava/lang/Class;
.end method

.method public abstract getBidderRequestInfo()Lcom/anythink/hb/data/BidRequestInfo;
.end method

.method public abstract init(Lcom/anythink/hb/data/HiBidContext;)V
.end method

.method public abstract onAuctionNotification(Lcom/anythink/hb/data/AuctionNotification;)V
.end method
