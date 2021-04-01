.class public Lcom/anythink/hb/data/BiddingResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/anythink/hb/data/BiddingResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Class;

.field private b:D

.field private c:Ljava/lang/Object;

.field private d:Lcom/anythink/hb/Bidder;

.field private e:Lcom/anythink/hb/data/BidRequestInfo;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;DLjava/lang/Object;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V
    .registers 7

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/anythink/hb/data/BiddingResponse;->a:Ljava/lang/Class;

    .line 27
    iput-wide p2, p0, Lcom/anythink/hb/data/BiddingResponse;->b:D

    .line 28
    iput-object p4, p0, Lcom/anythink/hb/data/BiddingResponse;->c:Ljava/lang/Object;

    .line 29
    iput-object p5, p0, Lcom/anythink/hb/data/BiddingResponse;->d:Lcom/anythink/hb/Bidder;

    .line 30
    iput-object p6, p0, Lcom/anythink/hb/data/BiddingResponse;->e:Lcom/anythink/hb/data/BidRequestInfo;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V
    .registers 5

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/anythink/hb/data/BiddingResponse;->a:Ljava/lang/Class;

    .line 35
    iput-object p2, p0, Lcom/anythink/hb/data/BiddingResponse;->f:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/anythink/hb/data/BiddingResponse;->d:Lcom/anythink/hb/Bidder;

    .line 37
    iput-object p4, p0, Lcom/anythink/hb/data/BiddingResponse;->e:Lcom/anythink/hb/data/BidRequestInfo;

    .line 38
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/anythink/hb/data/BiddingResponse;)I
    .registers 6

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/anythink/hb/data/BiddingResponse;->b:D

    invoke-virtual {p1}, Lcom/anythink/hb/data/BiddingResponse;->getBiddingPriceUSD()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    .line 91
    const/4 v0, -0x1

    .line 95
    :goto_b
    return v0

    .line 92
    :cond_c
    iget-wide v0, p0, Lcom/anythink/hb/data/BiddingResponse;->b:D

    invoke-virtual {p1}, Lcom/anythink/hb/data/BiddingResponse;->getBiddingPriceUSD()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_18

    .line 93
    const/4 v0, 0x0

    goto :goto_b

    .line 95
    :cond_18
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 11
    check-cast p1, Lcom/anythink/hb/data/BiddingResponse;

    invoke-virtual {p0, p1}, Lcom/anythink/hb/data/BiddingResponse;->compareTo(Lcom/anythink/hb/data/BiddingResponse;)I

    move-result v0

    return v0
.end method

.method public getBidRequestInfo()Lcom/anythink/hb/data/BidRequestInfo;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/anythink/hb/data/BiddingResponse;->e:Lcom/anythink/hb/data/BidRequestInfo;

    return-object v0
.end method

.method public getBidder()Lcom/anythink/hb/Bidder;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/anythink/hb/data/BiddingResponse;->d:Lcom/anythink/hb/Bidder;

    return-object v0
.end method

.method public getBidderClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anythink/hb/data/BiddingResponse;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public getBiddingPriceUSD()D
    .registers 3

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/anythink/hb/data/BiddingResponse;->b:D

    return-wide v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/anythink/hb/data/BiddingResponse;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/anythink/hb/data/BiddingResponse;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public setBidRequestInfo(Lcom/anythink/hb/data/BidRequestInfo;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/anythink/hb/data/BiddingResponse;->e:Lcom/anythink/hb/data/BidRequestInfo;

    .line 86
    return-void
.end method

.method public setBidder(Lcom/anythink/hb/Bidder;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/anythink/hb/data/BiddingResponse;->d:Lcom/anythink/hb/Bidder;

    .line 70
    return-void
.end method

.method public setBidderClass(Ljava/lang/Class;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/anythink/hb/data/BiddingResponse;->a:Ljava/lang/Class;

    .line 46
    return-void
.end method

.method public setBiddingPriceUSD(D)V
    .registers 4

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/anythink/hb/data/BiddingResponse;->b:D

    .line 54
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/anythink/hb/data/BiddingResponse;->f:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPayload(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/anythink/hb/data/BiddingResponse;->c:Ljava/lang/Object;

    .line 62
    return-void
.end method
