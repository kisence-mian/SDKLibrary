.class final Lcom/anythink/hb/bidder/MtgBidder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mintegral/msdk/mtgbid/out/BidListennning;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/hb/bidder/MtgBidder;->bid(Lcom/anythink/hb/data/BidRequestInfo;Ljava/lang/String;JLcom/anythink/hb/callback/BiddingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/hb/callback/BiddingCallback;

.field final synthetic b:Lcom/anythink/hb/bidder/MtgBidder;


# direct methods
.method constructor <init>(Lcom/anythink/hb/bidder/MtgBidder;Lcom/anythink/hb/callback/BiddingCallback;)V
    .registers 3

    .prologue
    .line 144
    iput-object p1, p0, Lcom/anythink/hb/bidder/MtgBidder$1;->b:Lcom/anythink/hb/bidder/MtgBidder;

    iput-object p2, p0, Lcom/anythink/hb/bidder/MtgBidder$1;->a:Lcom/anythink/hb/callback/BiddingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 147
    new-instance v0, Lcom/anythink/hb/data/BiddingResponse;

    const-class v1, Lcom/anythink/hb/bidder/MtgBidder;

    iget-object v2, p0, Lcom/anythink/hb/bidder/MtgBidder$1;->b:Lcom/anythink/hb/bidder/MtgBidder;

    iget-object v3, p0, Lcom/anythink/hb/bidder/MtgBidder$1;->b:Lcom/anythink/hb/bidder/MtgBidder;

    .line 148
    invoke-static {v3}, Lcom/anythink/hb/bidder/MtgBidder;->a(Lcom/anythink/hb/bidder/MtgBidder;)Lcom/anythink/hb/data/BidRequestInfo;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/anythink/hb/data/BiddingResponse;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V

    .line 149
    iget-object v1, p0, Lcom/anythink/hb/bidder/MtgBidder$1;->a:Lcom/anythink/hb/callback/BiddingCallback;

    if-eqz v1, :cond_18

    .line 150
    iget-object v1, p0, Lcom/anythink/hb/bidder/MtgBidder$1;->a:Lcom/anythink/hb/callback/BiddingCallback;

    invoke-interface {v1, v0}, Lcom/anythink/hb/callback/BiddingCallback;->onBiddingResponse(Lcom/anythink/hb/data/BiddingResponse;)V

    .line 152
    :cond_18
    return-void
.end method

.method public final onSuccessed(Lcom/mintegral/msdk/mtgbid/out/BidResponsed;)V
    .registers 9

    .prologue
    .line 157
    if-eqz p1, :cond_2c

    .line 158
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder$1;->b:Lcom/anythink/hb/bidder/MtgBidder;

    invoke-static {v0, p1}, Lcom/anythink/hb/bidder/MtgBidder;->a(Lcom/anythink/hb/bidder/MtgBidder;Lcom/mintegral/msdk/mtgbid/out/BidResponsed;)Lcom/mintegral/msdk/mtgbid/out/BidResponsed;

    .line 161
    new-instance v0, Lcom/anythink/hb/data/BiddingResponse;

    const-class v1, Lcom/anythink/hb/bidder/MtgBidder;

    .line 162
    invoke-virtual {p1}, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->getBidToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/hb/bidder/MtgBidder$1;->b:Lcom/anythink/hb/bidder/MtgBidder;

    iget-object v6, p0, Lcom/anythink/hb/bidder/MtgBidder$1;->b:Lcom/anythink/hb/bidder/MtgBidder;

    .line 163
    invoke-static {v6}, Lcom/anythink/hb/bidder/MtgBidder;->a(Lcom/anythink/hb/bidder/MtgBidder;)Lcom/anythink/hb/data/BidRequestInfo;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/anythink/hb/data/BiddingResponse;-><init>(Ljava/lang/Class;DLjava/lang/Object;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V

    .line 168
    :goto_22
    iget-object v1, p0, Lcom/anythink/hb/bidder/MtgBidder$1;->a:Lcom/anythink/hb/callback/BiddingCallback;

    if-eqz v1, :cond_2b

    .line 169
    iget-object v1, p0, Lcom/anythink/hb/bidder/MtgBidder$1;->a:Lcom/anythink/hb/callback/BiddingCallback;

    invoke-interface {v1, v0}, Lcom/anythink/hb/callback/BiddingCallback;->onBiddingResponse(Lcom/anythink/hb/data/BiddingResponse;)V

    .line 171
    :cond_2b
    return-void

    .line 165
    :cond_2c
    new-instance v0, Lcom/anythink/hb/data/BiddingResponse;

    const-class v1, Lcom/anythink/hb/bidder/FacebookBidder;

    const-string v2, "Mintegral bid response is NULL"

    iget-object v3, p0, Lcom/anythink/hb/bidder/MtgBidder$1;->b:Lcom/anythink/hb/bidder/MtgBidder;

    iget-object v4, p0, Lcom/anythink/hb/bidder/MtgBidder$1;->b:Lcom/anythink/hb/bidder/MtgBidder;

    .line 166
    invoke-static {v4}, Lcom/anythink/hb/bidder/MtgBidder;->a(Lcom/anythink/hb/bidder/MtgBidder;)Lcom/anythink/hb/data/BidRequestInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/hb/data/BiddingResponse;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V

    goto :goto_22
.end method
