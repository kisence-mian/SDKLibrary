.class final Lcom/mintegral/msdk/mtgbanner/common/c/c$a;
.super Lcom/mintegral/msdk/mtgjscommon/b/a;
.source "BannerShowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lcom/mintegral/msdk/mtgbanner/common/c/c;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V
    .registers 2

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/b/a;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    .line 213
    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0, p3}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/mtgbanner/common/c/c;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    const/4 v1, 0x2

    invoke-static {v0, p3, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/mtgbanner/common/c/c;Ljava/lang/String;I)V

    .line 273
    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->j(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/iab/omid/library/mintegral/adsession/AdSession;

    move-result-object v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isActiveOm()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 219
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/mintegral/msdk/a/b;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/AdSession;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/mtgbanner/common/c/c;Lcom/iab/omid/library/mintegral/adsession/AdSession;)Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 220
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->j(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/iab/omid/library/mintegral/adsession/AdSession;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_d2

    move-result-object v0

    if-eqz v0, :cond_11f

    .line 222
    :try_start_33
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->j(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/iab/omid/library/mintegral/adsession/AdSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->k(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 224
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->j(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/iab/omid/library/mintegral/adsession/AdSession;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->k(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 226
    :cond_53
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->l(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 227
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->j(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/iab/omid/library/mintegral/adsession/AdSession;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->l(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 229
    :cond_6a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->j(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/iab/omid/library/mintegral/adsession/AdSession;

    move-result-object v0

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/mintegral/adsession/AdSession;)Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->j(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/iab/omid/library/mintegral/adsession/AdSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->start()V

    .line 231
    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->impressionOccurred()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_80} :catch_c7

    .line 235
    :goto_80
    :try_start_80
    const-string v0, "OMSDK"

    const-string v1, "adSession.start()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_87} :catch_d2

    .line 254
    :cond_87
    :goto_87
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    if-eqz v0, :cond_c6

    .line 255
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->m(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Z

    .line 258
    const-string v0, "WindVaneWebView"

    const-string v1, "BANNER onPageFinished"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v0, "BannerCallJS"

    const-string v1, "fireOnJSBridgeConnected"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :try_start_9e
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const-string v0, "onJSBridgeConnected"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a8} :catch_151

    .line 260
    :goto_a8
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->n(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Z

    .line 262
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isHasMtgTplMark()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 263
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    .line 264
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/mtgbanner/common/c/c;Ljava/lang/String;I)V

    .line 267
    :cond_c6
    return-void

    .line 232
    :catch_c7
    move-exception v0

    .line 233
    :try_start_c8
    const-string v1, "omsdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d1} :catch_d2

    goto :goto_80

    .line 245
    :catch_d2
    move-exception v0

    .line 246
    const-string v1, "OMSDK"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 248
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    .line 250
    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v3}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Ljava/lang/String;

    move-result-object v3

    .line 251
    new-instance v4, Lcom/mintegral/msdk/base/common/e/b;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fetch OM failed, exception"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_87

    .line 237
    :cond_11f
    :try_start_11f
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 238
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Ljava/lang/String;

    move-result-object v2

    .line 241
    new-instance v3, Lcom/mintegral/msdk/base/common/e/b;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    const-string v4, "fetch OM failed, context null"

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_14f} :catch_d2

    goto/16 :goto_87

    .line 1037
    :catch_151
    move-exception v0

    .line 1038
    const-string v1, "BannerCallJS"

    const-string v2, "fireOnJSBridgeConnected"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a8
.end method
