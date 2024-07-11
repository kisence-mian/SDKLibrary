.class Lcom/bytedance/sdk/openadsdk/core/e/a$1;
.super Ljava/lang/Object;
.source "TTNativeAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/e/a;->getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/e/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .registers 3

    .line 301
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$1;->b:Lcom/bytedance/sdk/openadsdk/core/e/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendDislikeSource(Ljava/lang/String;)V
    .registers 2

    .line 305
    return-void
.end method

.method public setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 2

    .line 322
    return-void
.end method

.method public setIsInteractionAd()V
    .registers 1

    .line 327
    return-void
.end method

.method public showDislikeDialog()V
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 309
    :goto_1b
    if-eqz v0, :cond_22

    .line 310
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->show()V

    .line 312
    :cond_22
    return-void
.end method

.method public showDislikeDialog(I)V
    .registers 2

    .line 317
    return-void
.end method
