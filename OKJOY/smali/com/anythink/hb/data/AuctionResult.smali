.class public Lcom/anythink/hb/data/AuctionResult;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/anythink/hb/data/BiddingResponse;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anythink/hb/data/BiddingResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/hb/data/AuctionResult;->a:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/hb/data/AuctionResult;->b:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/hb/data/AuctionResult;->c:Lcom/anythink/hb/data/BiddingResponse;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/hb/data/AuctionResult;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getOtherBidders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/hb/data/BiddingResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/anythink/hb/data/AuctionResult;->d:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/hb/data/AuctionResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/hb/data/AuctionResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWinner()Lcom/anythink/hb/data/BiddingResponse;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/anythink/hb/data/AuctionResult;->c:Lcom/anythink/hb/data/BiddingResponse;

    return-object v0
.end method

.method public setOtherBidders(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/hb/data/BiddingResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/anythink/hb/data/AuctionResult;->d:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/anythink/hb/data/AuctionResult;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/anythink/hb/data/AuctionResult;->b:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setWinner(Lcom/anythink/hb/data/BiddingResponse;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/anythink/hb/data/AuctionResult;->c:Lcom/anythink/hb/data/BiddingResponse;

    .line 44
    return-void
.end method
