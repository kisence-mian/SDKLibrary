.class Lcom/sigmob/sdk/rewardVideoAd/e$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/rewardVideoAd/e;->i(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/rewardVideoAd/e;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/rewardVideoAd/e;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$12;->a:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$12;->a:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-static {v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->d(Lcom/sigmob/sdk/rewardVideoAd/e;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method
