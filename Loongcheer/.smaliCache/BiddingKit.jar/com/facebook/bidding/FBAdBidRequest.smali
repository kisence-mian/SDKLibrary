.class public Lcom/facebook/bidding/FBAdBidRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/bidding/FBAdBidRequest$BidResponseCallback;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/facebook/bidding/FBAdBidFormat;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/facebook/bidding/FBAdBidAuctionType;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/bidding/FBAdBidFormat;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->g:Z

    sget-object v0, Lcom/facebook/bidding/FBAdBidAuctionType;->FIRST_PRICE:Lcom/facebook/bidding/FBAdBidAuctionType;

    iput-object v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->h:Lcom/facebook/bidding/FBAdBidAuctionType;

    const-string v0, "FB Ad Impression"

    iput-object v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/bidding/FBAdBidRequest;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/bidding/FBAdBidRequest;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/bidding/FBAdBidRequest;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/bidding/FBAdBidRequest;->d:Lcom/facebook/bidding/FBAdBidFormat;

    invoke-static {}, Lcom/facebook/bidding/a/d/a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/bidding/FBAdBidRequest;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdFormat()Lcom/facebook/bidding/FBAdBidFormat;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->d:Lcom/facebook/bidding/FBAdBidFormat;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAuctionType()Lcom/facebook/bidding/FBAdBidAuctionType;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->h:Lcom/facebook/bidding/FBAdBidAuctionType;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getCoppa()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->i:Z

    return v0
.end method

.method public getDnt()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->f:Z

    return v0
.end method

.method public getFBBid(Lcom/facebook/bidding/FBAdBidRequest$BidResponseCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/bidding/a/b;->a(Lcom/facebook/bidding/FBAdBidRequest;Lcom/facebook/bidding/FBAdBidRequest$BidResponseCallback;)V

    return-void
.end method

.method public getImpressionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformAuctionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->k:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->b:Ljava/lang/String;

    :goto_7
    return-object v0
.end method

.method public getTestMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->g:Z

    return v0
.end method

.method public getTimeoutMS()I
    .registers 2

    iget v0, p0, Lcom/facebook/bidding/FBAdBidRequest;->e:I

    return v0
.end method

.method public withAuctionType(Lcom/facebook/bidding/FBAdBidAuctionType;)Lcom/facebook/bidding/FBAdBidRequest;
    .registers 2

    iput-object p1, p0, Lcom/facebook/bidding/FBAdBidRequest;->h:Lcom/facebook/bidding/FBAdBidAuctionType;

    return-object p0
.end method

.method public withCoppa(Z)Lcom/facebook/bidding/FBAdBidRequest;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/bidding/FBAdBidRequest;->i:Z

    return-object p0
.end method

.method public withDnt(Z)Lcom/facebook/bidding/FBAdBidRequest;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/bidding/FBAdBidRequest;->f:Z

    return-object p0
.end method

.method public withImpressionId(Ljava/lang/String;)Lcom/facebook/bidding/FBAdBidRequest;
    .registers 2

    iput-object p1, p0, Lcom/facebook/bidding/FBAdBidRequest;->l:Ljava/lang/String;

    return-object p0
.end method

.method public withPlatformId(Ljava/lang/String;)Lcom/facebook/bidding/FBAdBidRequest;
    .registers 2

    iput-object p1, p0, Lcom/facebook/bidding/FBAdBidRequest;->k:Ljava/lang/String;

    return-object p0
.end method

.method public withTestMode(Z)Lcom/facebook/bidding/FBAdBidRequest;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/bidding/FBAdBidRequest;->g:Z

    return-object p0
.end method

.method public withTimeoutMS(I)Lcom/facebook/bidding/FBAdBidRequest;
    .registers 2

    iput p1, p0, Lcom/facebook/bidding/FBAdBidRequest;->e:I

    return-object p0
.end method
