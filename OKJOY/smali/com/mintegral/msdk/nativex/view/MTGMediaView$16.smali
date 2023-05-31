.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;
.super Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;
.source "MTGMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V
    .registers 3

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-direct {p0, p2}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;-><init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 11

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1914
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNvT2()I

    move-result v0

    .line 1915
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->e(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z

    move-result v1

    if-eqz v1, :cond_ff

    if-eq v0, v2, :cond_1a

    if-ne v0, v3, :cond_ff

    .line 1916
    :cond_1a
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object v7

    .line 1917
    if-eqz v7, :cond_fa

    .line 1918
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->u(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Landroid/view/View;

    move-result-object v1

    .line 1919
    if-nez v1, :cond_2e

    .line 1920
    invoke-super {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;->a()V

    .line 1950
    :goto_2d
    return-void

    .line 1923
    :cond_2e
    if-ne v0, v2, :cond_ac

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 1924
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Landroid/content/Context;)Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Landroid/view/View;Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;)V

    .line 1925
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    .line 2055
    if-eqz v1, :cond_93

    :try_start_62
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    if-eqz v3, :cond_93

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/j;->o()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 2056
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/j;->o()[Ljava/lang/String;

    move-result-object v8

    .line 2057
    array-length v9, v8

    move v6, v5

    :goto_7c
    if-ge v6, v9, :cond_93

    aget-object v3, v8, v6

    .line 2058
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8b

    .line 2059
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_8b} :catch_8f

    .line 2057
    :cond_8b
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_7c

    .line 2064
    :catch_8f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1937
    :cond_93
    :goto_93
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->x(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->webViewShow(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 1938
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->z(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->orientation(Z)V

    goto :goto_2d

    .line 1926
    :cond_ac
    if-ne v0, v3, :cond_f5

    .line 1927
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Landroid/content/Context;)Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Landroid/view/View;Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;)V

    .line 1928
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v6

    .line 1929
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 1930
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->x(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-virtual {v3}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getAddNVT2ToNoticeURL()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1931
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->loadUrl(Ljava/lang/String;)V

    goto :goto_93

    .line 1934
    :cond_f5
    invoke-super {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;->a()V

    goto/16 :goto_2d

    .line 1944
    :cond_fa
    invoke-super {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;->a()V

    goto/16 :goto_2d

    .line 1947
    :cond_ff
    invoke-super {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;->a()V

    goto/16 :goto_2d
.end method
