.class Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$6;
.super Ljava/lang/Object;
.source "TTRewardVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)V
    .registers 2

    .prologue
    .line 608
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$6;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 611
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 612
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$6;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    const-string v1, "onRewardVerify"

    const-string v2, ""

    invoke-static {v0, v1, v3, v3, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;Ljava/lang/String;ZILjava/lang/String;)V

    .line 618
    :cond_10
    :goto_10
    return-void

    .line 614
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$6;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_10

    .line 615
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$6;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    const-string v1, ""

    invoke-interface {v0, v3, v3, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onRewardVerify(ZILjava/lang/String;)V

    goto :goto_10
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/q$c;)V
    .registers 7

    .prologue
    .line 622
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/q$c;->c:Lcom/bytedance/sdk/openadsdk/core/d/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->a()I

    move-result v0

    .line 623
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/q$c;->c:Lcom/bytedance/sdk/openadsdk/core/d/q;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/q;->b()Ljava/lang/String;

    move-result-object v1

    .line 624
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 625
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$6;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    const-string v3, "onRewardVerify"

    iget-boolean v4, p1, Lcom/bytedance/sdk/openadsdk/core/q$c;->b:Z

    invoke-static {v2, v3, v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;Ljava/lang/String;ZILjava/lang/String;)V

    .line 631
    :cond_1b
    :goto_1b
    return-void

    .line 627
    :cond_1c
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$6;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v2, :cond_1b

    .line 628
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$6;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    iget-boolean v3, p1, Lcom/bytedance/sdk/openadsdk/core/q$c;->b:Z

    invoke-interface {v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onRewardVerify(ZILjava/lang/String;)V

    goto :goto_1b
.end method
