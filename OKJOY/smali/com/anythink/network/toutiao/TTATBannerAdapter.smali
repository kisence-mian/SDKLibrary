.class public Lcom/anythink/network/toutiao/TTATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

.field d:Landroid/view/View;

.field e:I

.field f:I

.field g:I

.field h:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

.field i:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

.field j:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

.field k:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field private final l:Ljava/lang/String;

.field private m:Lcom/bytedance/sdk/openadsdk/TTBannerAd;

.field private n:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->l:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->h:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    .line 101
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->i:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    .line 120
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    .line 154
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->n:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->n:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .registers 4

    .prologue
    .line 352
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$6;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$6;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 364
    return-void
.end method

.method private a(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/banner/api/ATBannerView;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x64

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x258

    .line 248
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v6

    .line 250
    const-string v0, ""

    .line 251
    const-string v1, "size"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 252
    const-string v0, "size"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_1e
    const-string v1, "layout_type"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 257
    const-string v1, "layout_type"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 261
    :goto_34
    const-string v5, "media_size"

    invoke-interface {p3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_110

    .line 262
    const-string v5, "media_size"

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 269
    :goto_4a
    if-ne v1, v8, :cond_d8

    .line 270
    packed-switch v5, :pswitch_data_116

    :cond_4f
    move v0, v2

    move v3, v2

    .line 322
    :goto_51
    if-eqz v3, :cond_55

    if-nez v0, :cond_59

    .line 323
    :cond_55
    const/16 v0, 0x280

    move v3, v0

    move v0, v4

    .line 327
    :cond_59
    iput v3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:I

    .line 328
    iput v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->f:I

    .line 331
    invoke-virtual {p1}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_fc

    invoke-virtual {p1}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 332
    :goto_76
    invoke-virtual {p1}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_8f

    invoke-virtual {p1}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 334
    :cond_8f
    invoke-interface {v6, p2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v5

    .line 335
    new-instance v6, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v7, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    .line 336
    invoke-virtual {v6, v3, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 337
    invoke-virtual {v6, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 340
    if-ne v1, v8, :cond_104

    .line 341
    if-gtz v4, :cond_ff

    div-int/lit8 v0, v3, 0x2

    int-to-float v0, v0

    move v1, v0

    :goto_ac
    if-gtz v2, :cond_102

    const/4 v0, 0x0

    :goto_af
    invoke-virtual {v6, v1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 342
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    invoke-interface {v5, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 348
    :goto_bb
    return-void

    .line 273
    :pswitch_bc
    const/16 v0, 0x5a

    .line 274
    goto :goto_51

    :pswitch_bf
    move v0, v4

    .line 278
    goto :goto_51

    .line 281
    :pswitch_c1
    const/16 v0, 0x96

    .line 282
    goto :goto_51

    .line 285
    :pswitch_c4
    const/16 v0, 0xfa

    .line 286
    goto :goto_51

    .line 289
    :pswitch_c7
    const/16 v0, 0x11e

    .line 290
    goto :goto_51

    .line 293
    :pswitch_ca
    const/16 v0, 0xc8

    .line 294
    goto :goto_51

    .line 297
    :pswitch_cd
    const/16 v0, 0x184

    .line 298
    goto :goto_51

    .line 301
    :pswitch_d0
    const/16 v0, 0x190

    .line 302
    goto/16 :goto_51

    .line 305
    :pswitch_d4
    const/16 v0, 0x1f4

    goto/16 :goto_51

    .line 311
    :cond_d8
    :try_start_d8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 312
    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 313
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_ea} :catch_f4

    move-result v3

    .line 314
    const/4 v5, 0x1

    :try_start_ec
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f1} :catch_10e

    move-result v0

    goto/16 :goto_51

    .line 317
    :catch_f4
    move-exception v0

    move v3, v2

    :goto_f6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto/16 :goto_51

    :cond_fc
    move v4, v2

    .line 331
    goto/16 :goto_76

    .line 341
    :cond_ff
    int-to-float v0, v4

    move v1, v0

    goto :goto_ac

    :cond_102
    int-to-float v0, v2

    goto :goto_af

    .line 345
    :cond_104
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->h:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    invoke-interface {v5, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V

    goto :goto_bb

    .line 317
    :catch_10e
    move-exception v0

    goto :goto_f6

    :cond_110
    move v5, v2

    goto/16 :goto_4a

    :cond_113
    move v1, v2

    goto/16 :goto_34

    .line 270
    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_bf
        :pswitch_c1
        :pswitch_c4
        :pswitch_c7
        :pswitch_ca
        :pswitch_cd
        :pswitch_d0
        :pswitch_d4
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .registers 4

    .prologue
    .line 1352
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$6;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$6;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;)V
    .registers 13

    .prologue
    const/16 v4, 0x64

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x258

    .line 2248
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v6

    .line 2250
    const-string v0, ""

    .line 2251
    const-string v1, "size"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2252
    const-string v0, "size"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2256
    :cond_1e
    const-string v1, "layout_type"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 2257
    const-string v1, "layout_type"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2261
    :goto_34
    const-string v5, "media_size"

    invoke-interface {p3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_110

    .line 2262
    const-string v5, "media_size"

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2269
    :goto_4a
    if-ne v1, v8, :cond_d8

    .line 2270
    packed-switch v5, :pswitch_data_116

    :cond_4f
    move v0, v2

    move v3, v2

    .line 2322
    :goto_51
    if-eqz v3, :cond_55

    if-nez v0, :cond_59

    .line 2323
    :cond_55
    const/16 v0, 0x280

    move v3, v0

    move v0, v4

    .line 2327
    :cond_59
    iput v3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:I

    .line 2328
    iput v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->f:I

    .line 2331
    invoke-virtual {p1}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_fc

    invoke-virtual {p1}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 2332
    :goto_76
    invoke-virtual {p1}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_8f

    invoke-virtual {p1}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 2334
    :cond_8f
    invoke-interface {v6, p2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v5

    .line 2335
    new-instance v6, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v7, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    .line 2336
    invoke-virtual {v6, v3, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 2337
    invoke-virtual {v6, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 2340
    if-ne v1, v8, :cond_104

    .line 2341
    if-gtz v4, :cond_ff

    div-int/lit8 v0, v3, 0x2

    int-to-float v0, v0

    move v1, v0

    :goto_ac
    if-gtz v2, :cond_102

    const/4 v0, 0x0

    :goto_af
    invoke-virtual {v6, v1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 2342
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 2343
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    invoke-interface {v5, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 2344
    :goto_bb
    return-void

    .line 2273
    :pswitch_bc
    const/16 v0, 0x5a

    .line 2274
    goto :goto_51

    :pswitch_bf
    move v0, v4

    .line 2278
    goto :goto_51

    .line 2281
    :pswitch_c1
    const/16 v0, 0x96

    .line 2282
    goto :goto_51

    .line 2285
    :pswitch_c4
    const/16 v0, 0xfa

    .line 2286
    goto :goto_51

    .line 2289
    :pswitch_c7
    const/16 v0, 0x11e

    .line 2290
    goto :goto_51

    .line 2293
    :pswitch_ca
    const/16 v0, 0xc8

    .line 2294
    goto :goto_51

    .line 2297
    :pswitch_cd
    const/16 v0, 0x184

    .line 2298
    goto :goto_51

    .line 2301
    :pswitch_d0
    const/16 v0, 0x190

    .line 2302
    goto/16 :goto_51

    .line 2305
    :pswitch_d4
    const/16 v0, 0x1f4

    goto/16 :goto_51

    .line 2311
    :cond_d8
    :try_start_d8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 2312
    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2313
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_ea} :catch_f4

    move-result v3

    .line 2314
    const/4 v5, 0x1

    :try_start_ec
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f1} :catch_10e

    move-result v0

    goto/16 :goto_51

    .line 2317
    :catch_f4
    move-exception v0

    move v3, v2

    :goto_f6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto/16 :goto_51

    :cond_fc
    move v4, v2

    .line 2331
    goto/16 :goto_76

    .line 2341
    :cond_ff
    int-to-float v0, v4

    move v1, v0

    goto :goto_ac

    :cond_102
    int-to-float v0, v2

    goto :goto_af

    .line 2345
    :cond_104
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 2346
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->h:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    invoke-interface {v5, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V

    goto :goto_bb

    .line 2317
    :catch_10e
    move-exception v0

    goto :goto_f6

    :cond_110
    move v5, v2

    goto/16 :goto_4a

    :cond_113
    move v1, v2

    goto/16 :goto_34

    .line 2270
    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_bf
        :pswitch_c1
        :pswitch_c4
        :pswitch_c7
        :pswitch_ca
        :pswitch_cd
        :pswitch_d0
        :pswitch_d4
    .end packed-switch
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 384
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public clean()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 375
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->m:Lcom/bytedance/sdk/openadsdk/TTBannerAd;

    .line 376
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    .line 377
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->n:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_e

    .line 378
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->n:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 380
    :cond_e
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 394
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    invoke-static {}, Lcom/anythink/network/toutiao/TTATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadBannerAd(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/banner/api/ATBannerView;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/banner/unitgroup/api/CustomBannerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b:Landroid/content/Context;

    .line 203
    iput-object p5, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    .line 205
    if-nez p3, :cond_1a

    .line 206
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_19

    .line 207
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "This placement\'s params in server is null!"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    .line 245
    :cond_19
    :goto_19
    return-void

    .line 212
    :cond_1a
    const-string v0, "app_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    const-string v1, "slot_id"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a:Ljava/lang/String;

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 216
    :cond_3a
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_19

    .line 217
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "app_id or slot_id is empty!"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_19

    .line 222
    :cond_4e
    instance-of v0, p2, Landroid/app/Activity;

    if-nez v0, :cond_66

    .line 223
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_19

    .line 224
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "Context must be activity."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_19

    .line 230
    :cond_66
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->g:I

    .line 232
    :try_start_69
    const-string v0, "nw_rft"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 233
    const-string v0, "nw_rft"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->g:I
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_83} :catch_90

    .line 239
    :cond_83
    :goto_83
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/toutiao/TTATInitManager$a;)V

    goto :goto_19

    .line 236
    :catch_90
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_83
.end method
