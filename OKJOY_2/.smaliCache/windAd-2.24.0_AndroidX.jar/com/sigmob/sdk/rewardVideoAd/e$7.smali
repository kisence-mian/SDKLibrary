.class Lcom/sigmob/sdk/rewardVideoAd/e$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/rewardVideoAd/e;->c(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/sigmob/sdk/rewardVideoAd/e;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/rewardVideoAd/e;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$7;->d:Lcom/sigmob/sdk/rewardVideoAd/e;

    iput p2, p0, Lcom/sigmob/sdk/rewardVideoAd/e$7;->a:I

    iput-object p3, p0, Lcom/sigmob/sdk/rewardVideoAd/e$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/rewardVideoAd/e$7;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$7;->d:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-static {v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->e(Lcom/sigmob/sdk/rewardVideoAd/e;)Lcom/sigmob/sdk/rewardVideoAd/d;

    move-result-object v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$7;->a:I

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$7;->d:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-static {v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->e(Lcom/sigmob/sdk/rewardVideoAd/e;)Lcom/sigmob/sdk/rewardVideoAd/d;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$7;->a:I

    iget-object v2, p0, Lcom/sigmob/sdk/rewardVideoAd/e$7;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/rewardVideoAd/e$7;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/sdk/rewardVideoAd/d;->onVideoAdLoadError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :cond_1c
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$7;->d:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-static {v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->e(Lcom/sigmob/sdk/rewardVideoAd/e;)Lcom/sigmob/sdk/rewardVideoAd/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$7;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/d;->onVideoAdLoadSuccess(Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method
