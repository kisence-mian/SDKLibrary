.class Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$2;
.super Ljava/lang/Object;
.source "RewardDislikeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)V

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;->c(Landroid/view/View;)V

    .line 112
    :cond_16
    return-void
.end method
