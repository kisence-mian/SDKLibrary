.class Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$4;
.super Ljava/lang/Object;
.source "RewardDislikeDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 147
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$4;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$4;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 152
    :try_start_8
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 153
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$4;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;->a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1b} :catch_21

    .line 157
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$4;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b()V

    .line 158
    return-void

    .line 154
    :catch_21
    move-exception v0

    goto :goto_1b
.end method
