.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;
.super Ljava/lang/Object;
.source "RewardVideoListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;->onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;ZILjava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 109
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->f:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->a:Z

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->b:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->c:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->d:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->f:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->f:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->a:Z

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->b:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->c:Ljava/lang/String;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->d:I

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d$7;->e:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V

    .line 115
    :cond_1b
    return-void
.end method
