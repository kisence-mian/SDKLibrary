.class final Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->onReward(Lcom/anythink/core/api/ATAdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;

.field final synthetic val$adInfo:Lcom/anythink/core/api/ATAdInfo;


# direct methods
.method constructor <init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 3

    .line 151
    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$9;->this$1:Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;

    iput-object p2, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$9;->val$adInfo:Lcom/anythink/core/api/ATAdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$9;->this$1:Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;

    iget-object v0, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    iget-object v0, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_13

    .line 155
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$9;->this$1:Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;

    iget-object v0, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    iget-object v0, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$9;->val$adInfo:Lcom/anythink/core/api/ATAdInfo;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onReward(Lcom/anythink/core/api/ATAdInfo;)V

    .line 157
    :cond_13
    return-void
.end method
