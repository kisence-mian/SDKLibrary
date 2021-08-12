.class public Lcom/anythink/network/toutiao/TTATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 3

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 352
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

.method static synthetic a(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;II)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 97
    move-object/from16 v7, p0

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v2

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 104
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_fb

    .line 106
    nop

    .line 107
    const-string v11, "tt_image_width"

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    .line 108
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_50

    .line 109
    :cond_37
    const-string v11, "key_width"

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_44

    .line 110
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_50

    .line 111
    :cond_44
    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4f

    .line 112
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_50

    .line 111
    :cond_4f
    move-object v11, v8

    .line 115
    :goto_50
    nop

    .line 116
    const-string v12, "tt_image_height"

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5e

    .line 117
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_77

    .line 118
    :cond_5e
    const-string v12, "key_height"

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6b

    .line 119
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_77

    .line 120
    :cond_6b
    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_76

    .line 121
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_77

    .line 120
    :cond_76
    move-object v12, v8

    .line 124
    :goto_77
    const-string v13, "tt_can_interrupt_video"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 125
    const-string v14, "tt_video_play_btn_bitmap"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 126
    const-string v15, "tt_video_play_btn_SIZE"

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 128
    if-ne v1, v10, :cond_92

    .line 129
    const/16 v0, 0x2b2

    .line 130
    const/16 v1, 0x184

    move v4, v0

    move v5, v1

    goto :goto_c5

    .line 131
    :cond_92
    if-ne v1, v6, :cond_9b

    .line 132
    const/16 v0, 0xe4

    .line 133
    const/16 v1, 0x96

    move v4, v0

    move v5, v1

    goto :goto_c5

    .line 136
    :cond_9b
    :try_start_9b
    instance-of v0, v11, Ljava/lang/Integer;

    if-nez v0, :cond_a3

    instance-of v0, v11, Ljava/lang/String;

    if-eqz v0, :cond_ab

    .line 137
    :cond_a3
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ab} :catch_ac

    .line 141
    :cond_ab
    goto :goto_b0

    .line 140
    :catch_ac
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    :goto_b0
    :try_start_b0
    instance-of v0, v12, Ljava/lang/Integer;

    if-nez v0, :cond_b8

    instance-of v0, v12, Ljava/lang/String;

    if-eqz v0, :cond_c0

    .line 144
    :cond_b8
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c0} :catch_c1

    .line 148
    :cond_c0
    goto :goto_c5

    .line 147
    :catch_c1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    :goto_c5
    instance-of v0, v13, Ljava/lang/Boolean;

    if-eqz v0, :cond_d2

    .line 152
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_d3

    .line 151
    :cond_d2
    move v0, v9

    .line 155
    :goto_d3
    instance-of v1, v14, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_da

    .line 156
    move-object v8, v14

    check-cast v8, Landroid/graphics/Bitmap;

    .line 159
    :cond_da
    instance-of v1, v15, Ljava/lang/Integer;

    if-eqz v1, :cond_f2

    .line 160
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v4

    move v4, v0

    move/from16 v0, v16

    move-object/from16 v17, v8

    move v8, v1

    move v1, v5

    move-object/from16 v5, v17

    goto :goto_100

    .line 159
    :cond_f2
    move v1, v5

    move-object v5, v8

    move v8, v9

    move/from16 v16, v4

    move v4, v0

    move/from16 v0, v16

    goto :goto_100

    .line 104
    :cond_fb
    move v0, v4

    move v1, v5

    move-object v5, v8

    move v4, v9

    move v8, v4

    .line 164
    :goto_100
    nop

    .line 165
    nop

    .line 166
    nop

    .line 169
    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v11

    .line 170
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v12, v7, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    .line 172
    if-lez v0, :cond_11a

    if-lez v1, :cond_11a

    .line 173
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    goto :goto_121

    .line 175
    :cond_11a
    const/16 v12, 0x280

    const/16 v13, 0x140

    invoke-virtual {v2, v12, v13}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 177
    :goto_121
    move/from16 v12, p3

    invoke-virtual {v2, v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 178
    invoke-virtual {v2, v10}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 182
    iget-object v12, v7, Lcom/anythink/network/toutiao/TTATAdapter;->c:Ljava/lang/String;

    const-string v13, "0"

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_15e

    iget-object v12, v7, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_15e

    .line 183
    iget-object v5, v7, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    const-string v6, "load Native Express Ad"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v3, v1}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 186
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/toutiao/TTATAdapter$2;

    invoke-direct {v1, v7, v3, v4}, Lcom/anythink/network/toutiao/TTATAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Z)V

    invoke-interface {v11, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 205
    return-void

    .line 209
    :cond_15e
    iget-object v12, v7, Lcom/anythink/network/toutiao/TTATAdapter;->c:Ljava/lang/String;

    const-string v14, "1"

    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_193

    iget-object v12, v7, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_193

    .line 210
    iget-object v5, v7, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    const-string v6, "load Native Express Video"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v3, v1}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 213
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/toutiao/TTATAdapter$3;

    invoke-direct {v1, v7, v3, v4}, Lcom/anythink/network/toutiao/TTATAdapter$3;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Z)V

    invoke-interface {v11, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadExpressDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 232
    return-void

    .line 237
    :cond_193
    iget-object v0, v7, Lcom/anythink/network/toutiao/TTATAdapter;->c:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    packed-switch v12, :pswitch_data_226

    :cond_19d
    goto :goto_1c1

    :pswitch_19e
    const-string v9, "3"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    const/4 v9, 0x3

    goto :goto_1c2

    :pswitch_1a8
    const-string v9, "2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    move v9, v6

    goto :goto_1c2

    :pswitch_1b2
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    move v9, v10

    goto :goto_1c2

    :pswitch_1ba
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    goto :goto_1c2

    :goto_1c1
    move v9, v1

    :goto_1c2
    packed-switch v9, :pswitch_data_232

    .line 343
    iget-object v0, v7, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz v0, :cond_225

    .line 344
    iget-object v0, v7, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string v1, ""

    const-string v2, "The Native type is not exit."

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_225

    .line 317
    :pswitch_1d3
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 318
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    new-instance v9, Lcom/anythink/network/toutiao/TTATAdapter$7;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$7;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v11, v0, v9}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    .line 341
    return-void

    .line 291
    :pswitch_1e9
    invoke-virtual {v2, v10}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 292
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    new-instance v9, Lcom/anythink/network/toutiao/TTATAdapter$6;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$6;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v11, v0, v9}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    .line 315
    return-void

    .line 265
    :pswitch_1ff
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    new-instance v9, Lcom/anythink/network/toutiao/TTATAdapter$5;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$5;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v11, v0, v9}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V

    .line 288
    return-void

    .line 239
    :pswitch_212
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    new-instance v9, Lcom/anythink/network/toutiao/TTATAdapter$4;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$4;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v11, v0, v9}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    .line 263
    return-void

    .line 348
    :cond_225
    :goto_225
    return-void

    :pswitch_data_226
    .packed-switch 0x30
        :pswitch_1ba
        :pswitch_1b2
        :pswitch_1a8
        :pswitch_19e
    .end packed-switch

    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_212
        :pswitch_1ff
        :pswitch_1e9
        :pswitch_1d3
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;II)V
    .registers 22

    .line 34
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move/from16 v1, p4

    .line 1097
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v4

    .line 1099
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1100
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1101
    nop

    .line 1102
    nop

    .line 1103
    nop

    .line 1104
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_f3

    .line 1106
    nop

    .line 1107
    const-string v11, "tt_image_width"

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    .line 1108
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_50

    .line 1109
    :cond_37
    const-string v11, "key_width"

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_44

    .line 1110
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_50

    .line 1111
    :cond_44
    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4f

    .line 1112
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_50

    .line 1111
    :cond_4f
    move-object v11, v8

    .line 1115
    :goto_50
    nop

    .line 1116
    const-string v12, "tt_image_height"

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5e

    .line 1117
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_77

    .line 1118
    :cond_5e
    const-string v12, "key_height"

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6b

    .line 1119
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_77

    .line 1120
    :cond_6b
    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_76

    .line 1121
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_77

    .line 1120
    :cond_76
    move-object v12, v8

    .line 1124
    :goto_77
    const-string v13, "tt_can_interrupt_video"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1125
    const-string v14, "tt_video_play_btn_bitmap"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1126
    const-string v15, "tt_video_play_btn_SIZE"

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 1128
    if-ne v1, v10, :cond_92

    .line 1129
    const/16 v0, 0x2b2

    .line 1130
    const/16 v1, 0x184

    move v5, v0

    move v6, v1

    goto :goto_c5

    .line 1131
    :cond_92
    if-ne v1, v7, :cond_9b

    .line 1132
    const/16 v0, 0xe4

    .line 1133
    const/16 v1, 0x96

    move v5, v0

    move v6, v1

    goto :goto_c5

    .line 1136
    :cond_9b
    :try_start_9b
    instance-of v0, v11, Ljava/lang/Integer;

    if-nez v0, :cond_a3

    instance-of v0, v11, Ljava/lang/String;

    if-eqz v0, :cond_ab

    .line 1137
    :cond_a3
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ab} :catch_ac

    .line 1141
    :cond_ab
    goto :goto_b0

    .line 1140
    :catch_ac
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1143
    :goto_b0
    :try_start_b0
    instance-of v0, v12, Ljava/lang/Integer;

    if-nez v0, :cond_b8

    instance-of v0, v12, Ljava/lang/String;

    if-eqz v0, :cond_c0

    .line 1144
    :cond_b8
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c0} :catch_c1

    .line 1148
    :cond_c0
    goto :goto_c5

    .line 1147
    :catch_c1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1151
    :goto_c5
    instance-of v0, v13, Ljava/lang/Boolean;

    if-eqz v0, :cond_d2

    .line 1152
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_d3

    .line 1151
    :cond_d2
    move v0, v9

    .line 1155
    :goto_d3
    instance-of v1, v14, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_da

    .line 1156
    move-object v8, v14

    check-cast v8, Landroid/graphics/Bitmap;

    .line 1159
    :cond_da
    instance-of v1, v15, Ljava/lang/Integer;

    if-eqz v1, :cond_ee

    .line 1160
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v6

    move v6, v1

    move v1, v5

    move-object v5, v8

    move/from16 v8, v16

    goto :goto_f8

    .line 1159
    :cond_ee
    move v1, v5

    move-object v5, v8

    move v8, v6

    move v6, v9

    goto :goto_f8

    .line 1104
    :cond_f3
    move v1, v5

    move-object v5, v8

    move v0, v9

    move v8, v6

    move v6, v0

    .line 1164
    :goto_f8
    nop

    .line 1165
    nop

    .line 1166
    nop

    .line 1169
    invoke-interface {v4, v3}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v11

    .line 1170
    new-instance v4, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v12, v2, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v4

    .line 1172
    if-lez v1, :cond_112

    if-lez v8, :cond_112

    .line 1173
    invoke-virtual {v4, v1, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    goto :goto_119

    .line 1175
    :cond_112
    const/16 v12, 0x280

    const/16 v13, 0x140

    invoke-virtual {v4, v12, v13}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1177
    :goto_119
    move/from16 v12, p3

    invoke-virtual {v4, v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1178
    invoke-virtual {v4, v10}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1182
    iget-object v12, v2, Lcom/anythink/network/toutiao/TTATAdapter;->c:Ljava/lang/String;

    const-string v13, "0"

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_156

    iget-object v12, v2, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_156

    .line 1183
    iget-object v5, v2, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    const-string v6, "load Native Express Ad"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    int-to-float v1, v1

    invoke-static {v3, v1}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v5, v8

    invoke-static {v3, v5}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v1, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1186
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    new-instance v4, Lcom/anythink/network/toutiao/TTATAdapter$2;

    invoke-direct {v4, v2, v3, v0}, Lcom/anythink/network/toutiao/TTATAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Z)V

    invoke-interface {v11, v1, v4}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 1205
    return-void

    .line 1209
    :cond_156
    iget-object v12, v2, Lcom/anythink/network/toutiao/TTATAdapter;->c:Ljava/lang/String;

    const-string v14, "1"

    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_18b

    iget-object v12, v2, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_18b

    .line 1210
    iget-object v5, v2, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    const-string v6, "load Native Express Video"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    int-to-float v1, v1

    invoke-static {v3, v1}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v5, v8

    invoke-static {v3, v5}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v1, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1213
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    new-instance v4, Lcom/anythink/network/toutiao/TTATAdapter$3;

    invoke-direct {v4, v2, v3, v0}, Lcom/anythink/network/toutiao/TTATAdapter$3;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Z)V

    invoke-interface {v11, v1, v4}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadExpressDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 1232
    return-void

    .line 1237
    :cond_18b
    iget-object v1, v2, Lcom/anythink/network/toutiao/TTATAdapter;->c:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v12

    packed-switch v12, :pswitch_data_21e

    :cond_195
    goto :goto_1b9

    :pswitch_196
    const-string v9, "3"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_195

    const/4 v9, 0x3

    goto :goto_1ba

    :pswitch_1a0
    const-string v9, "2"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_195

    move v9, v7

    goto :goto_1ba

    :pswitch_1aa
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_195

    move v9, v10

    goto :goto_1ba

    :pswitch_1b2
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_195

    goto :goto_1ba

    :goto_1b9
    move v9, v8

    :goto_1ba
    packed-switch v9, :pswitch_data_22a

    .line 1343
    iget-object v0, v2, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz v0, :cond_21d

    .line 1344
    iget-object v0, v2, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string v1, ""

    const-string v2, "The Native type is not exit."

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21d

    .line 1317
    :pswitch_1cb
    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1318
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v7

    new-instance v8, Lcom/anythink/network/toutiao/TTATAdapter$7;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$7;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v11, v7, v8}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    .line 1341
    return-void

    .line 1291
    :pswitch_1e1
    invoke-virtual {v4, v10}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1292
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v7

    new-instance v8, Lcom/anythink/network/toutiao/TTATAdapter$6;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$6;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v11, v7, v8}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    .line 1315
    return-void

    .line 1265
    :pswitch_1f7
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v7

    new-instance v8, Lcom/anythink/network/toutiao/TTATAdapter$5;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$5;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v11, v7, v8}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V

    .line 1288
    return-void

    .line 1239
    :pswitch_20a
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v7

    new-instance v8, Lcom/anythink/network/toutiao/TTATAdapter$4;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$4;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v11, v7, v8}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    .line 1263
    return-void

    .line 34
    :cond_21d
    :goto_21d
    return-void

    :pswitch_data_21e
    .packed-switch 0x30
        :pswitch_1b2
        :pswitch_1aa
        :pswitch_1a0
        :pswitch_196
    .end packed-switch

    :pswitch_data_22a
    .packed-switch 0x0
        :pswitch_20a
        :pswitch_1f7
        :pswitch_1e1
        :pswitch_1cb
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATAdapter;Ljava/util/List;)V
    .registers 6

    .line 1356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1358
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 1359
    new-instance v3, Lcom/anythink/network/toutiao/TTATAdapter$8;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/anythink/network/toutiao/TTATAdapter$8;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;[ILjava/util/List;Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V

    .line 2041
    iput-object v3, v2, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 2042
    iget-object v3, v2, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v3, :cond_2f

    .line 2043
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 1400
    :cond_2f
    goto :goto_13

    .line 34
    :cond_30
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/network/toutiao/TTATNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 357
    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 358
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    .line 359
    new-instance v3, Lcom/anythink/network/toutiao/TTATAdapter$8;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/anythink/network/toutiao/TTATAdapter$8;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;[ILjava/util/List;Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V

    .line 1041
    iput-object v3, v2, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 1042
    iget-object v3, v2, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v3, :cond_2f

    .line 1043
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 400
    :cond_2f
    goto :goto_13

    .line 401
    :cond_30
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic r(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic s(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic t(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic u(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic v(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic w(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic x(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic y(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic z(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 1

    .line 411
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 405
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 420
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 13
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

    .line 48
    const-string v0, "media_size"

    const-string v1, "app_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    const-string v2, "slot_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8a

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto/16 :goto_8a

    .line 58
    :cond_24
    const-string v1, "1"

    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    .line 60
    const-string v1, "layout_type"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 61
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    goto :goto_3d

    .line 64
    :cond_39
    const-string v1, "0"

    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    .line 67
    :goto_3d
    const/4 v1, 0x1

    .line 69
    :try_start_3e
    const-string v2, "request_ad_num"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4c} :catch_4e

    .line 71
    move v7, v1

    goto :goto_50

    .line 70
    :catch_4e
    move-exception v2

    move v7, v1

    .line 73
    :goto_50
    const-string v1, "is_video"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 74
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Ljava/lang/String;

    .line 77
    :cond_62
    const/4 v1, 0x0

    .line 79
    :try_start_63
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 80
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_75} :catch_77

    .line 84
    :cond_75
    move v8, v1

    goto :goto_79

    .line 82
    :catch_77
    move-exception v0

    move v8, v1

    .line 88
    :goto_79
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/toutiao/TTATAdapter$1;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/anythink/network/toutiao/TTATAdapter$1;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;II)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/toutiao/TTATInitManager$a;)V

    .line 94
    return-void

    .line 52
    :cond_8a
    :goto_8a
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_97

    .line 53
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, ""

    const-string p3, "toutiao app_id or slot_id is empty!"

    invoke-interface {p1, p2, p3}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_97
    return-void
.end method
