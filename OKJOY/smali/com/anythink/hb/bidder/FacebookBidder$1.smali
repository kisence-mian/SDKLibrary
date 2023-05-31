.class final Lcom/anythink/hb/bidder/FacebookBidder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/bidding/FBAdBidRequest$BidResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/hb/bidder/FacebookBidder;->bid(Lcom/anythink/hb/data/BidRequestInfo;Ljava/lang/String;JLcom/anythink/hb/callback/BiddingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/hb/callback/BiddingCallback;

.field final synthetic b:Lcom/anythink/hb/bidder/FacebookBidder;


# direct methods
.method constructor <init>(Lcom/anythink/hb/bidder/FacebookBidder;Lcom/anythink/hb/callback/BiddingCallback;)V
    .registers 3

    .prologue
    .line 115
    iput-object p1, p0, Lcom/anythink/hb/bidder/FacebookBidder$1;->b:Lcom/anythink/hb/bidder/FacebookBidder;

    iput-object p2, p0, Lcom/anythink/hb/bidder/FacebookBidder$1;->a:Lcom/anythink/hb/callback/BiddingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleBidResponse(Lcom/facebook/bidding/FBAdBidResponse;)V
    .registers 9

    .prologue
    .line 119
    if-eqz p1, :cond_46

    .line 120
    iget-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder$1;->b:Lcom/anythink/hb/bidder/FacebookBidder;

    invoke-static {v0, p1}, Lcom/anythink/hb/bidder/FacebookBidder;->a(Lcom/anythink/hb/bidder/FacebookBidder;Lcom/facebook/bidding/FBAdBidResponse;)Lcom/facebook/bidding/FBAdBidResponse;

    .line 122
    invoke-virtual {p1}, Lcom/facebook/bidding/FBAdBidResponse;->isSuccess()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 124
    new-instance v0, Lcom/anythink/hb/data/BiddingResponse;

    const-class v1, Lcom/anythink/hb/bidder/FacebookBidder;

    .line 125
    invoke-virtual {p1}, Lcom/facebook/bidding/FBAdBidResponse;->getPrice()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/facebook/bidding/FBAdBidResponse;->getPayload()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/hb/bidder/FacebookBidder$1;->b:Lcom/anythink/hb/bidder/FacebookBidder;

    iget-object v6, p0, Lcom/anythink/hb/bidder/FacebookBidder$1;->b:Lcom/anythink/hb/bidder/FacebookBidder;

    invoke-static {v6}, Lcom/anythink/hb/bidder/FacebookBidder;->a(Lcom/anythink/hb/bidder/FacebookBidder;)Lcom/anythink/hb/data/BidRequestInfo;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/anythink/hb/data/BiddingResponse;-><init>(Ljava/lang/Class;DLjava/lang/Object;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V

    .line 134
    :goto_28
    iget-object v1, p0, Lcom/anythink/hb/bidder/FacebookBidder$1;->a:Lcom/anythink/hb/callback/BiddingCallback;

    if-eqz v1, :cond_31

    .line 135
    iget-object v1, p0, Lcom/anythink/hb/bidder/FacebookBidder$1;->a:Lcom/anythink/hb/callback/BiddingCallback;

    invoke-interface {v1, v0}, Lcom/anythink/hb/callback/BiddingCallback;->onBiddingResponse(Lcom/anythink/hb/data/BiddingResponse;)V

    .line 137
    :cond_31
    return-void

    .line 127
    :cond_32
    new-instance v0, Lcom/anythink/hb/data/BiddingResponse;

    const-class v1, Lcom/anythink/hb/bidder/FacebookBidder;

    .line 128
    invoke-virtual {p1}, Lcom/facebook/bidding/FBAdBidResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/hb/bidder/FacebookBidder$1;->b:Lcom/anythink/hb/bidder/FacebookBidder;

    iget-object v4, p0, Lcom/anythink/hb/bidder/FacebookBidder$1;->b:Lcom/anythink/hb/bidder/FacebookBidder;

    invoke-static {v4}, Lcom/anythink/hb/bidder/FacebookBidder;->a(Lcom/anythink/hb/bidder/FacebookBidder;)Lcom/anythink/hb/data/BidRequestInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/hb/data/BiddingResponse;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V

    goto :goto_28

    .line 131
    :cond_46
    new-instance v0, Lcom/anythink/hb/data/BiddingResponse;

    const-class v1, Lcom/anythink/hb/bidder/FacebookBidder;

    const-string v2, "Facebook bid response is NULL"

    iget-object v3, p0, Lcom/anythink/hb/bidder/FacebookBidder$1;->b:Lcom/anythink/hb/bidder/FacebookBidder;

    iget-object v4, p0, Lcom/anythink/hb/bidder/FacebookBidder$1;->b:Lcom/anythink/hb/bidder/FacebookBidder;

    .line 132
    invoke-static {v4}, Lcom/anythink/hb/bidder/FacebookBidder;->a(Lcom/anythink/hb/bidder/FacebookBidder;)Lcom/anythink/hb/data/BidRequestInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/hb/data/BiddingResponse;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V

    goto :goto_28
.end method
