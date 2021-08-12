.class Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$3;
.super Ljava/lang/Object;
.source "RewardDislikeDialogNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 125
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->c(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 126
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a(Z)V

    .line 127
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->c(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;->a()V

    .line 129
    :cond_17
    return-void
.end method
