.class final Lcom/mintegral/msdk/video/module/MintegralContainerView$2;
.super Lcom/mintegral/msdk/video/module/a/a/i;
.source "MintegralContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/video/module/MintegralContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralContainerView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralContainerView;Lcom/mintegral/msdk/video/module/a/a;)V
    .registers 3

    .prologue
    .line 589
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView$2;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-direct {p0, p2}, Lcom/mintegral/msdk/video/module/a/a/i;-><init>(Lcom/mintegral/msdk/video/module/a/a;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 6

    .prologue
    .line 592
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/i;->a(ILjava/lang/Object;)V

    .line 593
    const/16 v0, 0x64

    if-ne p1, v0, :cond_52

    .line 594
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView$2;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->webviewshow()V

    .line 595
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView$2;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView$2;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 597
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 598
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView$2;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView$2;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView$2;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_53

    sget v0, Lcom/mintegral/msdk/base/entity/q;->a:I

    :goto_42
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->a(I)V

    .line 601
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView$2;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView$2;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-static {v2}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a(Lcom/mintegral/msdk/video/module/MintegralContainerView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/base/common/e/a;->b(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 603
    :cond_52
    return-void

    .line 600
    :cond_53
    sget v0, Lcom/mintegral/msdk/base/entity/q;->b:I

    goto :goto_42
.end method
