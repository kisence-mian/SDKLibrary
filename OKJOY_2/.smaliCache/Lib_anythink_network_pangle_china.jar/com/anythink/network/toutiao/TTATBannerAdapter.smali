.class public Lcom/anythink/network/toutiao/TTATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field c:Landroid/view/View;

.field d:I

.field e:I

.field f:I

.field g:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

.field h:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

.field i:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

.field j:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field private final k:Ljava/lang/String;

.field private l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->k:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->g:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    .line 101
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->h:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    .line 120
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->i:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    .line 154
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    return-void
.end method

.method static synthetic A(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic B(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic C(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 3

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 322
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_11

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_11
    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .registers 4

    .line 290
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 307
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 188
    nop

    .line 189
    const-string v1, "size"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 190
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 189
    :cond_16
    const-string v1, ""

    .line 193
    :goto_18
    nop

    .line 194
    const-string v2, "layout_type"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2f

    .line 195
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_30

    .line 194
    :cond_2f
    move v2, v4

    .line 198
    :goto_30
    nop

    .line 199
    const-string v3, "media_size"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 200
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_47

    .line 199
    :cond_46
    move p2, v4

    .line 203
    :goto_47
    nop

    .line 204
    nop

    .line 207
    const/16 v3, 0x64

    const/4 v5, 0x1

    const/16 v6, 0x258

    if-ne v2, v5, :cond_7b

    .line 208
    packed-switch p2, :pswitch_data_12e

    move p2, v4

    move v6, p2

    goto :goto_7a

    .line 242
    :pswitch_56
    nop

    .line 243
    const/16 p2, 0x1f4

    goto :goto_7a

    .line 238
    :pswitch_5a
    nop

    .line 239
    const/16 p2, 0x190

    .line 240
    goto :goto_a1

    .line 234
    :pswitch_5e
    nop

    .line 235
    const/16 p2, 0x184

    .line 236
    goto :goto_a1

    .line 230
    :pswitch_62
    nop

    .line 231
    const/16 p2, 0xc8

    .line 232
    goto :goto_a1

    .line 226
    :pswitch_66
    nop

    .line 227
    const/16 p2, 0x11e

    .line 228
    goto :goto_a1

    .line 222
    :pswitch_6a
    nop

    .line 223
    const/16 p2, 0xfa

    .line 224
    goto :goto_a1

    .line 218
    :pswitch_6e
    nop

    .line 219
    const/16 p2, 0x96

    .line 220
    goto :goto_a1

    .line 214
    :pswitch_72
    nop

    .line 215
    nop

    .line 216
    move p2, v3

    goto :goto_a1

    .line 210
    :pswitch_76
    nop

    .line 211
    const/16 p2, 0x5a

    .line 212
    goto :goto_a1

    .line 244
    :goto_7a
    goto :goto_a1

    .line 249
    :cond_7b
    :try_start_7b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_98

    .line 250
    const-string p2, "x"

    invoke-virtual {v1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 251
    aget-object v1, p2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_8d} :catch_9b

    .line 252
    :try_start_8d
    aget-object p2, p2, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_93} :catch_95

    move v6, v1

    goto :goto_9a

    .line 255
    :catch_95
    move-exception p2

    move v6, v1

    goto :goto_9d

    .line 249
    :cond_98
    move p2, v4

    move v6, p2

    .line 256
    :goto_9a
    goto :goto_a1

    .line 255
    :catch_9b
    move-exception p2

    move v6, v4

    :goto_9d
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move p2, v4

    .line 260
    :goto_a1
    if-eqz v6, :cond_a8

    if-nez p2, :cond_a6

    goto :goto_a8

    :cond_a6
    move v3, p2

    goto :goto_ab

    .line 261
    :cond_a8
    :goto_a8
    const/16 v6, 0x280

    .line 262
    nop

    .line 265
    :goto_ab
    iput v6, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:I

    .line 266
    iput v3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:I

    .line 269
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    if-eqz p2, :cond_d1

    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {p2}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_d1

    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {p2}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v1

    float-to-int p2, p2

    goto :goto_d2

    :cond_d1
    move p2, v4

    .line 270
    :goto_d2
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    if-eqz v1, :cond_f3

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v1}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_f3

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v1}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v4

    float-to-int v4, v1

    .line 272
    :cond_f3
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    .line 273
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 275
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 278
    if-ne v2, v5, :cond_123

    .line 279
    if-gtz p2, :cond_110

    div-int/lit8 v6, v6, 0x2

    int-to-float p2, v6

    goto :goto_111

    :cond_110
    int-to-float p2, p2

    :goto_111
    if-gtz v4, :cond_115

    const/4 v1, 0x0

    goto :goto_116

    :cond_115
    int-to-float v1, v4

    :goto_116
    invoke-virtual {v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 280
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    .line 281
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->i:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 282
    return-void

    .line 283
    :cond_123
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    .line 284
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->g:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V

    .line 286
    return-void

    nop

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .registers 4

    .line 1290
    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .registers 10

    .line 2186
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 2188
    nop

    .line 2189
    const-string v1, "size"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2190
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 2189
    :cond_16
    const-string v1, ""

    .line 2193
    :goto_18
    nop

    .line 2194
    const-string v2, "layout_type"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2f

    .line 2195
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_30

    .line 2194
    :cond_2f
    move v2, v4

    .line 2198
    :goto_30
    nop

    .line 2199
    const-string v3, "media_size"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 2200
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_47

    .line 2199
    :cond_46
    move p2, v4

    .line 2203
    :goto_47
    nop

    .line 2204
    nop

    .line 2207
    const/16 v3, 0x64

    const/4 v5, 0x1

    const/16 v6, 0x258

    if-ne v2, v5, :cond_7b

    .line 2208
    packed-switch p2, :pswitch_data_12e

    move p2, v4

    move v6, p2

    goto :goto_7a

    .line 2242
    :pswitch_56
    nop

    .line 2243
    const/16 p2, 0x1f4

    goto :goto_7a

    .line 2238
    :pswitch_5a
    nop

    .line 2239
    const/16 p2, 0x190

    .line 2240
    goto :goto_a1

    .line 2234
    :pswitch_5e
    nop

    .line 2235
    const/16 p2, 0x184

    .line 2236
    goto :goto_a1

    .line 2230
    :pswitch_62
    nop

    .line 2231
    const/16 p2, 0xc8

    .line 2232
    goto :goto_a1

    .line 2226
    :pswitch_66
    nop

    .line 2227
    const/16 p2, 0x11e

    .line 2228
    goto :goto_a1

    .line 2222
    :pswitch_6a
    nop

    .line 2223
    const/16 p2, 0xfa

    .line 2224
    goto :goto_a1

    .line 2218
    :pswitch_6e
    nop

    .line 2219
    const/16 p2, 0x96

    .line 2220
    goto :goto_a1

    .line 2214
    :pswitch_72
    nop

    .line 2215
    nop

    .line 2216
    move p2, v3

    goto :goto_a1

    .line 2210
    :pswitch_76
    nop

    .line 2211
    const/16 p2, 0x5a

    .line 2212
    goto :goto_a1

    .line 2244
    :goto_7a
    goto :goto_a1

    .line 2249
    :cond_7b
    :try_start_7b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_98

    .line 2250
    const-string p2, "x"

    invoke-virtual {v1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2251
    aget-object v1, p2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_8d} :catch_9b

    .line 2252
    :try_start_8d
    aget-object p2, p2, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_93} :catch_95

    move v6, v1

    goto :goto_9a

    .line 2255
    :catch_95
    move-exception p2

    move v6, v1

    goto :goto_9d

    .line 2249
    :cond_98
    move p2, v4

    move v6, p2

    .line 2256
    :goto_9a
    goto :goto_a1

    .line 2255
    :catch_9b
    move-exception p2

    move v6, v4

    :goto_9d
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move p2, v4

    .line 2260
    :goto_a1
    if-eqz v6, :cond_a8

    if-nez p2, :cond_a6

    goto :goto_a8

    :cond_a6
    move v3, p2

    goto :goto_ab

    .line 2261
    :cond_a8
    :goto_a8
    const/16 v6, 0x280

    .line 2262
    nop

    .line 2265
    :goto_ab
    iput v6, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:I

    .line 2266
    iput v3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:I

    .line 2269
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    if-eqz p2, :cond_d1

    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {p2}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_d1

    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {p2}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v1

    float-to-int p2, p2

    goto :goto_d2

    :cond_d1
    move p2, v4

    .line 2270
    :goto_d2
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    if-eqz v1, :cond_f3

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v1}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_f3

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v1}, Lcom/anythink/banner/api/ATBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v4

    float-to-int v4, v1

    .line 2272
    :cond_f3
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    .line 2273
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 2274
    invoke-virtual {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 2275
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 2278
    if-ne v2, v5, :cond_123

    .line 2279
    if-gtz p2, :cond_110

    div-int/lit8 v6, v6, 0x2

    int-to-float p2, v6

    goto :goto_111

    :cond_110
    int-to-float p2, p2

    :goto_111
    if-gtz v4, :cond_115

    const/4 v1, 0x0

    goto :goto_116

    :cond_115
    int-to-float v1, v4

    :goto_116
    invoke-virtual {v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 2280
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    .line 2281
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->i:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    invoke-interface {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 2282
    return-void

    .line 2283
    :cond_123
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    .line 2284
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->g:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    invoke-interface {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V

    .line 29
    return-void

    nop

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
    .end packed-switch
.end method

.method static synthetic b(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 2

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 317
    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static synthetic e(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic r(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic s(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic t(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic u(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic v(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic w(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic x(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic y(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic z(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Landroid/view/View;

    .line 379
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v1, :cond_11

    .line 380
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V

    .line 381
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 382
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 385
    :cond_11
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->h:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    .line 386
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->g:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    .line 387
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 388
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->i:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    .line 389
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b:Landroid/content/Context;

    .line 390
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Landroid/view/View;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 327
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 399
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 332
    const-string p3, "nw_rft"

    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    const-string v1, "slot_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a:Ljava/lang/String;

    .line 335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_62

    .line 342
    :cond_25
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_35

    .line 343
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_34

    .line 344
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, "Context must be activity."

    invoke-interface {p1, v1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_34
    return-void

    .line 349
    :cond_35
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b:Landroid/content/Context;

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->f:I

    .line 353
    :try_start_3a
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 354
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->f:I
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_51

    .line 358
    :cond_50
    goto :goto_55

    .line 357
    :catchall_51
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 360
    :goto_55
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object p3

    new-instance v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/network/toutiao/TTATBannerAdapter$6;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/toutiao/TTATInitManager$a;)V

    .line 373
    return-void

    .line 336
    :cond_62
    :goto_62
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_6d

    .line 337
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, "app_id or slot_id is empty!"

    invoke-interface {p1, v1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_6d
    return-void
.end method
