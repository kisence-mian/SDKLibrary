.class public Lcom/facebook/bidding/FBAdBidResponse;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/facebook/bidding/a/f/a;


# direct methods
.method public constructor <init>(Lcom/facebook/bidding/a/f/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    return-void
.end method


# virtual methods
.method public getBidRequestId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    invoke-virtual {v0}, Lcom/facebook/bidding/a/f/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    invoke-virtual {v0}, Lcom/facebook/bidding/a/f/a;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    invoke-virtual {v0}, Lcom/facebook/bidding/a/f/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFBDebugHeader()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    invoke-virtual {v0}, Lcom/facebook/bidding/a/f/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpStatusCode()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    invoke-virtual {v0}, Lcom/facebook/bidding/a/f/a;->l()I

    move-result v0

    return v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    invoke-virtual {v0}, Lcom/facebook/bidding/a/f/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    invoke-virtual {v0}, Lcom/facebook/bidding/a/f/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    invoke-virtual {v0}, Lcom/facebook/bidding/a/f/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformAuctionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    invoke-virtual {v0}, Lcom/facebook/bidding/a/f/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()D
    .registers 3

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    invoke-virtual {v0}, Lcom/facebook/bidding/a/f/a;->g()D

    move-result-wide v0

    return-wide v0
.end method

.method public isSuccess()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    invoke-virtual {v0}, Lcom/facebook/bidding/a/f/a;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public notifyLoss()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    invoke-virtual {v0}, Lcom/facebook/bidding/a/f/a;->b()V

    return-void
.end method

.method public notifyWin()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidResponse;->a:Lcom/facebook/bidding/a/f/a;

    invoke-virtual {v0}, Lcom/facebook/bidding/a/f/a;->a()V

    return-void
.end method
