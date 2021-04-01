.class public Lcom/mintegral/msdk/mtgbid/out/BidManager;
.super Ljava/lang/Object;
.source "BidManager.java"


# instance fields
.field private a:Lcom/mintegral/msdk/mtgbid/common/a/b;

.field private b:Lcom/mintegral/msdk/mtgbid/out/BidListennning;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/mtgbid/out/CommonBidRequestParams;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mintegral/msdk/mtgbid/out/CommonBidRequestParams;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    if-nez p1, :cond_2f

    const-string v0, ""

    move-object v1, v0

    :goto_5
    if-nez p1, :cond_35

    const-string v0, ""

    :goto_9
    invoke-direct {p0, v1, v0}, Lcom/mintegral/msdk/mtgbid/out/BidManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    instance-of v0, p1, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;

    if-eqz v0, :cond_2e

    .line 43
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbid/out/BidManager;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    move-object v0, p1

    check-cast v0, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;->getHeight()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a(J)V

    .line 44
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidManager;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    check-cast p1, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;

    invoke-virtual {p1}, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;->getWeigh()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/mintegral/msdk/mtgbid/common/a/b;->b(J)V

    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidManager;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a()V

    .line 47
    :cond_2e
    return-void

    .line 40
    :cond_2f
    invoke-virtual {p1}, Lcom/mintegral/msdk/mtgbid/out/CommonBidRequestParams;->getmUnitId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_5

    :cond_35
    invoke-virtual {p1}, Lcom/mintegral/msdk/mtgbid/out/CommonBidRequestParams;->getmFloorPrice()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 25
    const-string v0, "0"

    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/mtgbid/out/BidManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-direct {v0, p1, p2}, Lcom/mintegral/msdk/mtgbid/common/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidManager;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    .line 36
    return-void
.end method

.method public static getBuyerUid(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    invoke-static {p0}, Lcom/mintegral/msdk/mtgbid/common/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bid()V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidManager;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    if-eqz v0, :cond_a

    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidManager;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbid/common/a/b;->b()V

    .line 57
    :cond_9
    :goto_9
    return-void

    .line 55
    :cond_a
    const-string v0, "you need init the class :BidManager"

    .line 1115
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbid/out/BidManager;->b:Lcom/mintegral/msdk/mtgbid/out/BidListennning;

    if-eqz v1, :cond_9

    .line 1116
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbid/out/BidManager;->b:Lcom/mintegral/msdk/mtgbid/out/BidListennning;

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/mtgbid/out/BidListennning;->onFailed(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public setBidListener(Lcom/mintegral/msdk/mtgbid/out/BidListennning;)V
    .registers 3

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/out/BidManager;->b:Lcom/mintegral/msdk/mtgbid/out/BidListennning;

    .line 74
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidManager;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    if-eqz v0, :cond_b

    .line 75
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidManager;->a:Lcom/mintegral/msdk/mtgbid/common/a/b;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a(Lcom/mintegral/msdk/mtgbid/out/BidListennning;)V

    .line 77
    :cond_b
    return-void
.end method
