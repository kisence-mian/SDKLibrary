.class Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast$2;
.super Ljava/lang/Object;
.source "RewardDislikeToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;->setVisibility(I)V

    .line 88
    return-void
.end method
