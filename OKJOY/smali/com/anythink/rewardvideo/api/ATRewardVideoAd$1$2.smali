.class final Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;

.field final synthetic val$errorCode:Lcom/anythink/core/api/AdError;


# direct methods
.method constructor <init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 46
    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$2;->this$1:Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;

    iput-object p2, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$2;->val$errorCode:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$2;->this$1:Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;

    iget-object v0, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    iget-object v0, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_13

    .line 50
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$2;->this$1:Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;

    iget-object v0, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    iget-object v0, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$2;->val$errorCode:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V

    .line 52
    :cond_13
    return-void
.end method
