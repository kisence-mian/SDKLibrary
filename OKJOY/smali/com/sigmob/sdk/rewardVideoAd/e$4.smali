.class Lcom/sigmob/sdk/rewardVideoAd/e$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/SigmobError;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/sigmob/sdk/rewardVideoAd/e;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$4;->c:Lcom/sigmob/sdk/rewardVideoAd/e;

    iput-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/e$4;->a:Lcom/sigmob/sdk/base/models/SigmobError;

    iput-object p3, p0, Lcom/sigmob/sdk/rewardVideoAd/e$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$4;->c:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-static {v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->e(Lcom/sigmob/sdk/rewardVideoAd/e;)Lcom/sigmob/sdk/rewardVideoAd/d;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$4;->a:Lcom/sigmob/sdk/base/models/SigmobError;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$4;->c:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-static {v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->e(Lcom/sigmob/sdk/rewardVideoAd/e;)Lcom/sigmob/sdk/rewardVideoAd/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$4;->a:Lcom/sigmob/sdk/base/models/SigmobError;

    iget-object v2, p0, Lcom/sigmob/sdk/rewardVideoAd/e$4;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/rewardVideoAd/d;->onVideoAdPlayError(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    :cond_19
    return-void
.end method
