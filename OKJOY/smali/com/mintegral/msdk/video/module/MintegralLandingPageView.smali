.class public Lcom/mintegral/msdk/video/module/MintegralLandingPageView;
.super Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;
.source "MintegralLandingPageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/video/module/MintegralLandingPageView$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected final f()Ljava/lang/String;
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_13

    .line 40
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-999"

    const-string v2, "-999"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/click/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public preLoadData()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;->f:Z

    if-eqz v0, :cond_f

    .line 49
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralLandingPageView$a;

    invoke-direct {v1, v2}, Lcom/mintegral/msdk/video/module/MintegralLandingPageView$a;-><init>(B)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setFilter(Lcom/mintegral/msdk/mtgjscommon/base/a;)V

    .line 51
    :cond_f
    invoke-super {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->preLoadData()V

    .line 52
    invoke-virtual {p0, v2}, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;->setVisibility(I)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;->setCloseVisible(I)V

    .line 54
    return-void
.end method

.method public webviewshow()V
    .registers 4

    .prologue
    .line 59
    :try_start_0
    const-string v0, "MintegralBaseView"

    const-string v1, "webviewshow"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v1, "webviewshow"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 64
    :goto_13
    return-void

    .line 62
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method
