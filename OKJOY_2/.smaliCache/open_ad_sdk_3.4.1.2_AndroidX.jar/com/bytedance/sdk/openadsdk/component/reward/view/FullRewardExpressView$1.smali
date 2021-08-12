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

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;I)Z
    .registers 5

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l()V

    .line 52
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;-><init>(Landroid/content/Context;)V

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;

    .line 53
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->a(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_21

    .line 56
    nop

    .line 57
    const/4 p1, 0x1

    return p1

    .line 54
    :catch_21
    move-exception p1

    .line 55
    const/4 p1, 0x0

    return p1
.end method
