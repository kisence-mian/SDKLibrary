.class Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$3;
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
    .line 116
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

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
    .line 121
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 122
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 124
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    .line 126
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 127
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;->a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    .line 143
    :cond_26
    :goto_26
    return-void

    .line 131
    :catch_27
    move-exception v0

    .line 135
    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 137
    :try_start_30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->R()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-interface {v1, p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;->a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_49} :catch_4f

    .line 142
    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b()V

    goto :goto_26

    .line 138
    :catch_4f
    move-exception v0

    goto :goto_49
.end method
