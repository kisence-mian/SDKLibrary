.class public Lcom/sigmob/sdk/rewardVideoAd/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/sigmob/sdk/rewardVideoAd/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-direct {v0}, Lcom/sigmob/sdk/rewardVideoAd/e;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/c;->a:Lcom/sigmob/sdk/rewardVideoAd/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/c;->a:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-virtual {v0, p2, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Landroid/app/Activity;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/c;->a:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/rewardVideoAd/d;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/c;->a:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/rewardVideoAd/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/c;->a:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
