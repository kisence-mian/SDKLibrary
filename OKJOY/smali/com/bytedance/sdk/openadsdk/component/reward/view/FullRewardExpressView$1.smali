.class Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$1;
.super Ljava/lang/Object;
.source "FullRewardExpressView.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;I)Z
    .registers 6

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l()V

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->a(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 51
    const/4 v0, 0x1

    return v0
.end method
