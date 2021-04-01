.class public Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;
.super Landroid/app/Activity;
.source "MTGInterstitialActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgjscommon/mraid/b;


# static fields
.field public static final INTENT_CAMAPIGN:Ljava/lang/String; = "campaign"

.field public static final INTENT_UNIT_ID:Ljava/lang/String; = "unitId"

.field public static final WATI_JS_INVOKE:J = 0x7d0L

.field public static final WEB_LOAD_TIME:J = 0x3a98L


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Ljava/lang/Runnable;

.field private c:Z

.field private d:Z

.field private e:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/mintegral/msdk/interstitial/c/a$c;

.field private i:Z

.field private j:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

.field private k:J

.field private l:Z

.field private m:Z

.field public mIsMtgPage:Z

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mUnitid:Ljava/lang/String;

.field private n:Landroid/os/Handler;

.field private o:Lcom/mintegral/msdk/click/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->c:Z

    .line 70
    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->d:Z

    .line 87
    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mIsMtgPage:Z

    .line 101
    new-instance v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$1;-><init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->n:Landroid/os/Handler;

    .line 325
    new-instance v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$7;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$7;-><init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->a:Ljava/lang/Runnable;

    .line 355
    new-instance v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$8;-><init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->b:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_18

    .line 390
    const-string v1, "unitId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 391
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 395
    :cond_18
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 396
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->j:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    .line 397
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->j:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->c()V

    .line 398
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->j:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    new-instance v1, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$9;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$9;-><init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->a(Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;)V

    .line 406
    :cond_3a
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;ILjava/lang/String;)V
    .registers 9

    .prologue
    .line 62
    .line 2291
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2292
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 2293
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 2294
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 2296
    invoke-virtual {v1, p1}, Lcom/mintegral/msdk/base/entity/q;->c(I)V

    .line 2297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->k:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->p(Ljava/lang/String;)V

    .line 2298
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->f(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {v1, p2}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 2306
    const-string v0, "5"

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 2308
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_58

    sget v0, Lcom/mintegral/msdk/base/entity/q;->a:I

    :goto_4b
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->a(I)V

    .line 2309
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/base/common/e/a;->c(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    :cond_57
    return-void

    .line 2308
    :cond_58
    sget v0, Lcom/mintegral/msdk/base/entity/q;->b:I

    goto :goto_4b
.end method

.method static synthetic a(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/interstitial/c/a$c;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h:Lcom/mintegral/msdk/interstitial/c/a$c;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 419
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/interstitial/c/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lcom/mintegral/msdk/interstitial/c/a;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 420
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 421
    sget-object v0, Lcom/mintegral/msdk/interstitial/c/a;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/interstitial/c/a$c;

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h:Lcom/mintegral/msdk/interstitial/c/a$c;

    .line 422
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "mShowIntersInnerListener \u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 427
    :cond_29
    :goto_29
    return-void

    .line 425
    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method private c()V
    .registers 7

    .prologue
    .line 553
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    .line 554
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_3a

    .line 555
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 556
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->b(Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->l:Z

    .line 559
    :cond_3a
    return-void
.end method

.method static synthetic c(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V
    .registers 9

    .prologue
    .line 62
    .line 2728
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 2729
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2730
    const-string v0, "UNDEFINED"

    .line 2731
    packed-switch v1, :pswitch_data_ac

    .line 2742
    :goto_1b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2744
    :try_start_20
    const-string v2, "orientation"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2745
    const-string v0, "locked"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2c} :catch_a6

    .line 2750
    :goto_2c
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->n(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 2751
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->o(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 2753
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2754
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2755
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    .line 2756
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    .line 2758
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2759
    const-string v6, "placementType"

    const-string v7, "Interstitial"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2760
    const-string v6, "state"

    const-string v7, "default"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2761
    const-string v6, "viewable"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2762
    const-string v6, "currentAppOrientation"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2764
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->b(Landroid/webkit/WebView;FF)V

    .line 2765
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {v0, v4, v3}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;FF)V

    .line 2766
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {v0, v5}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    .line 2768
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->j:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    invoke-virtual {v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->a()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;D)V

    .line 2769
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;)V

    .line 62
    :cond_99
    return-void

    .line 2733
    :pswitch_9a
    const-string v0, "undefined"

    goto/16 :goto_1b

    .line 2736
    :pswitch_9e
    const-string v0, "portrait"

    goto/16 :goto_1b

    .line 2739
    :pswitch_a2
    const-string v0, "landscape"

    goto/16 :goto_1b

    .line 2747
    :catch_a6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    .line 2731
    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_9e
        :pswitch_a2
    .end packed-switch
.end method

.method static synthetic f(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->d:Z

    return v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->c:Z

    return v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    return-object v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method static synthetic j(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    .line 2797
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2798
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 2799
    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v3

    .line 2798
    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2802
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 2803
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 2804
    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v3

    .line 2803
    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2807
    :cond_44
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const-string v2, "interstitial"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/a/c;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 2809
    invoke-static {p0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v0

    .line 2810
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/m;->b(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method static synthetic k(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->c:Z

    return v0
.end method

.method static synthetic l(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->d:Z

    return v0
.end method

.method static synthetic m(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V
    .registers 4

    .prologue
    .line 3316
    :try_start_0
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 3317
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 3318
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 3319
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget v0, Lcom/mintegral/msdk/base/entity/q;->a:I

    :goto_21
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->a(I)V

    .line 3320
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/base/common/e/a;->b(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 3323
    :goto_2d
    return-void

    .line 3319
    :cond_2e
    sget v0, Lcom/mintegral/msdk/base/entity/q;->b:I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_21

    .line 3322
    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method static synthetic n(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V
    .registers 3

    .prologue
    .line 62
    .line 3777
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3778
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    new-instance v1, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;-><init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->post(Ljava/lang/Runnable;)Z

    .line 62
    :cond_16
    return-void
.end method


# virtual methods
.method public clickTracking()V
    .registers 4

    .prologue
    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 670
    :cond_c
    :goto_c
    return-void

    .line 611
    :cond_d
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->onIntersClick()V

    .line 613
    new-instance v0, Lcom/mintegral/msdk/click/a;

    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->o:Lcom/mintegral/msdk/click/a;

    .line 614
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->o:Lcom/mintegral/msdk/click/a;

    new-instance v1, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$3;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$3;-><init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 665
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->o:Lcom/mintegral/msdk/click/a;

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_c

    .line 668
    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public close()V
    .registers 1

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->finish()V

    .line 699
    return-void
.end method

.method public expand(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 722
    return-void
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 531
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 532
    iget-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->l:Z

    if-nez v0, :cond_a

    .line 533
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->c()V

    .line 535
    :cond_a
    iget-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->m:Z

    if-nez v0, :cond_11

    .line 536
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->reportPlayableClosed()V

    .line 538
    :cond_11
    return-void
.end method

.method public getIntersUnitSetting()Lcom/mintegral/msdk/c/d;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 582
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    .line 596
    :cond_a
    :goto_a
    return-object v0

    .line 586
    :cond_b
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    .line 588
    if-nez v0, :cond_a

    .line 589
    const-string v0, "MTGInterstitialActivity"

    const-string v2, "\u83b7\u53d6\u9ed8\u8ba4\u7684unitsetting"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->e(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2c

    move-result-object v0

    goto :goto_a

    .line 594
    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 596
    goto :goto_a
.end method

.method public getMraidCampaign()Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method public goneWebView()V
    .registers 2

    .prologue
    .line 453
    :try_start_0
    new-instance v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$11;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$11;-><init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 466
    :goto_8
    return-void

    .line 464
    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public hideLoading()V
    .registers 2

    .prologue
    .line 489
    :try_start_0
    new-instance v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$2;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$2;-><init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 502
    :goto_8
    return-void

    .line 500
    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public initView()V
    .registers 4

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_interstitial_wv"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 410
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_interstitial_pb"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 411
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_interstitial_iv_close"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->g:Landroid/widget/ImageView;

    .line 412
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->requestWindowFeature(I)Z

    .line 112
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_interstitial_activity"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 113
    const/4 v1, -0x1

    if-eq v0, v1, :cond_fe

    .line 115
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->setContentView(I)V

    .line 116
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->initView()V

    .line 1152
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->a()V

    .line 1162
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$5;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$5;-><init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_51

    .line 1171
    new-instance v0, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1172
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;->setTitle(Ljava/lang/String;)V

    .line 1173
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setCampaignId(Ljava/lang/String;)V

    .line 1174
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1155
    :cond_51
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->b()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_54} :catch_f9

    .line 1181
    :try_start_54
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 1183
    :cond_6c
    const-string v0, "MTGInterstitialActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->goneWebView()V

    .line 1187
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    new-instance v1, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$6;-><init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V

    .line 1269
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    .line 1270
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1271
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_d3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:////"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1277
    :cond_d3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->k:J

    .line 1278
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1287
    :cond_e7
    :goto_e7
    return-void

    .line 1281
    :cond_e8
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h:Lcom/mintegral/msdk/interstitial/c/a$c;

    if-eqz v0, :cond_e7

    .line 1282
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h:Lcom/mintegral/msdk/interstitial/c/a$c;

    const-string v1, "offerwall htmlurl is null"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/interstitial/c/a$c;->a(Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_f3} :catch_f4

    goto :goto_e7

    .line 1286
    :catch_f4
    move-exception v0

    :try_start_f5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_f8} :catch_f9

    goto :goto_e7

    .line 129
    :catch_f9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e7

    .line 120
    :cond_fe
    :try_start_fe
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->a()V

    .line 121
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->b()V

    .line 122
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h:Lcom/mintegral/msdk/interstitial/c/a$c;

    if-eqz v0, :cond_10f

    .line 123
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h:Lcom/mintegral/msdk/interstitial/c/a$c;

    const-string v1, "not found resource"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/interstitial/c/a$c;->a(Ljava/lang/String;)V

    .line 125
    :cond_10f
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->finish()V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_112} :catch_f9

    goto :goto_e7
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 506
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 509
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h:Lcom/mintegral/msdk/interstitial/c/a$c;

    if-eqz v0, :cond_c

    .line 510
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h:Lcom/mintegral/msdk/interstitial/c/a$c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/c/a$c;->b()V

    .line 513
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->o:Lcom/mintegral/msdk/click/a;

    if-eqz v0, :cond_15

    .line 514
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->o:Lcom/mintegral/msdk/click/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/a;->a()V

    .line 517
    :cond_15
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->j:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    if-eqz v0, :cond_1e

    .line 518
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->j:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->d()V

    .line 521
    :cond_1e
    iget-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->l:Z

    if-nez v0, :cond_25

    .line 522
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->c()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_26

    .line 527
    :cond_25
    :goto_25
    return-void

    .line 525
    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public onIntersClick()V
    .registers 2

    .prologue
    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h:Lcom/mintegral/msdk/interstitial/c/a$c;

    if-eqz v0, :cond_9

    .line 567
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h:Lcom/mintegral/msdk/interstitial/c/a$c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/c/a$c;->c()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 572
    :cond_9
    :goto_9
    return-void

    .line 570
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 145
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 147
    :cond_19
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 137
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 139
    :cond_19
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 676
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 677
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getMraidCampaign()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v4

    .line 1690
    if-eqz v4, :cond_2c

    .line 1691
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    .line 1692
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v5

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 680
    :cond_2c
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->clickTracking()V

    .line 682
    return-void
.end method

.method public reportPlayableClosed()V
    .registers 7

    .prologue
    .line 542
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_41

    .line 543
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v5

    .line 544
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000061"

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 545
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 546
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_42

    sget v1, Lcom/mintegral/msdk/base/entity/q;->a:I

    :goto_2e
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->a(I)V

    .line 547
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/e/a;->d(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->m:Z

    .line 550
    :cond_41
    return-void

    .line 546
    :cond_42
    sget v1, Lcom/mintegral/msdk/base/entity/q;->b:I

    goto :goto_2e
.end method

.method public showLoading()V
    .registers 2

    .prologue
    .line 471
    :try_start_0
    new-instance v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$12;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$12;-><init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 484
    :goto_8
    return-void

    .line 482
    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public showWebView()V
    .registers 2

    .prologue
    .line 431
    :try_start_0
    new-instance v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$10;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$10;-><init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 448
    :goto_8
    return-void

    .line 446
    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public unload()V
    .registers 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->close()V

    .line 704
    return-void
.end method

.method public useCustomClose(Z)V
    .registers 6

    .prologue
    .line 713
    if-eqz p1, :cond_e

    .line 714
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 719
    :goto_d
    return-void

    .line 716
    :cond_e
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->g:Landroid/widget/ImageView;

    .line 717
    invoke-virtual {p0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mintegral_interstitial_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 716
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d
.end method
