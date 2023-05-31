.class public Lcom/anythink/network/toutiao/TTATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

.field d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 335
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_11

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_11
    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;II)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v8

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v7, 0x0

    .line 107
    if-eqz p2, :cond_1d4

    .line 108
    const-string v1, "tt_image_width"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 109
    const-string v1, "tt_image_height"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 110
    const-string v1, "tt_can_interrupt_video"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 111
    const-string v1, "tt_video_play_btn_bitmap"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    const-string v11, "tt_video_play_btn_SIZE"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 114
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_c3

    .line 115
    const/16 v3, 0x2b2

    .line 116
    const/16 v2, 0x184

    .line 138
    :goto_4e
    instance-of v4, v10, Ljava/lang/Boolean;

    if-eqz v4, :cond_1ce

    .line 139
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 142
    :goto_5a
    instance-of v5, v1, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1cb

    .line 143
    check-cast v1, Landroid/graphics/Bitmap;

    .line 146
    :goto_60
    instance-of v5, v11, Ljava/lang/Integer;

    if-eqz v5, :cond_1c7

    .line 147
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object v5, v1

    .line 156
    :goto_6d
    invoke-interface {v8, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v7

    .line 157
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v8, p0, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v8

    .line 159
    if-lez v3, :cond_ff

    if-lez v2, :cond_ff

    .line 160
    invoke-virtual {v8, v3, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 164
    :goto_83
    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 165
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 169
    const-string v1, "0"

    iget-object v9, p0, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_108

    const-string v1, "0"

    iget-object v9, p0, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_108

    .line 170
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->e:Ljava/lang/String;

    const-string v5, "load Native Express Ad"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    int-to-float v1, v3

    invoke-static {p1, v1}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 173
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    new-instance v2, Lcom/anythink/network/toutiao/TTATAdapter$2;

    invoke-direct {v2, p0, p1, v4}, Lcom/anythink/network/toutiao/TTATAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Z)V

    invoke-interface {v7, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 331
    :cond_c2
    :goto_c2
    return-void

    .line 117
    :cond_c3
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_cd

    .line 118
    const/16 v3, 0xe4

    .line 119
    const/16 v2, 0x96

    goto :goto_4e

    .line 122
    :cond_cd
    :try_start_cd
    instance-of v12, v4, Ljava/lang/Integer;

    if-nez v12, :cond_d5

    instance-of v12, v4, Ljava/lang/String;

    if-eqz v12, :cond_dd

    .line 123
    :cond_d5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_dc} :catch_f1

    move-result v2

    :cond_dd
    move v4, v2

    .line 129
    :goto_de
    :try_start_de
    instance-of v2, v9, Ljava/lang/Integer;

    if-nez v2, :cond_e6

    instance-of v2, v9, Ljava/lang/String;

    if-eqz v2, :cond_1d1

    .line 130
    :cond_e6
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_ed} :catch_f7

    move-result v2

    :goto_ee
    move v3, v4

    .line 134
    goto/16 :goto_4e

    .line 126
    :catch_f1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v2

    goto :goto_de

    .line 133
    :catch_f7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    move v3, v4

    goto/16 :goto_4e

    .line 162
    :cond_ff
    const/16 v1, 0x280

    const/16 v9, 0x140

    invoke-virtual {v8, v1, v9}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    goto/16 :goto_83

    .line 198
    :cond_108
    const-string v1, "1"

    iget-object v9, p0, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_135

    .line 199
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->e:Ljava/lang/String;

    const-string v5, "load Native Express Video"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    int-to-float v1, v3

    invoke-static {p1, v1}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 202
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    new-instance v2, Lcom/anythink/network/toutiao/TTATAdapter$3;

    invoke-direct {v2, p0, p1, v4}, Lcom/anythink/network/toutiao/TTATAdapter$3;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Z)V

    invoke-interface {v7, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadExpressDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    goto :goto_c2

    .line 228
    :cond_135
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_1dc

    :cond_13f
    :goto_13f
    packed-switch v1, :pswitch_data_1e8

    .line 326
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v1, :cond_c2

    .line 327
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    const-string v2, "4001"

    const-string v3, ""

    const-string v4, "The Native type is not exit."

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    goto/16 :goto_c2

    .line 228
    :pswitch_157
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    const/4 v1, 0x0

    goto :goto_13f

    :pswitch_161
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    const/4 v1, 0x1

    goto :goto_13f

    :pswitch_16b
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    const/4 v1, 0x2

    goto :goto_13f

    :pswitch_175
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    const/4 v1, 0x3

    goto :goto_13f

    .line 230
    :pswitch_17f
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v8

    new-instance v1, Lcom/anythink/network/toutiao/TTATAdapter$4;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$4;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v7, v8, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    goto/16 :goto_c2

    .line 254
    :pswitch_18f
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v8

    new-instance v1, Lcom/anythink/network/toutiao/TTATAdapter$5;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$5;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v7, v8, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V

    goto/16 :goto_c2

    .line 278
    :pswitch_19f
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 279
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v8

    new-instance v1, Lcom/anythink/network/toutiao/TTATAdapter$6;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$6;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v7, v8, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    goto/16 :goto_c2

    .line 302
    :pswitch_1b3
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 303
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v8

    new-instance v1, Lcom/anythink/network/toutiao/TTATAdapter$7;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$7;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v7, v8, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    goto/16 :goto_c2

    :cond_1c7
    move v6, v7

    move-object v5, v1

    goto/16 :goto_6d

    :cond_1cb
    move-object v1, v6

    goto/16 :goto_60

    :cond_1ce
    move v4, v5

    goto/16 :goto_5a

    :cond_1d1
    move v2, v3

    goto/16 :goto_ee

    :cond_1d4
    move v4, v5

    move-object v5, v6

    move v6, v7

    move v13, v3

    move v3, v2

    move v2, v13

    goto/16 :goto_6d

    .line 228
    :pswitch_data_1dc
    .packed-switch 0x30
        :pswitch_157
        :pswitch_161
        :pswitch_16b
        :pswitch_175
    .end packed-switch

    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_17f
        :pswitch_18f
        :pswitch_19f
        :pswitch_1b3
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;II)V
    .registers 19

    .prologue
    .line 25
    .line 1100
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v8

    .line 1102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1104
    const/4 v5, 0x0

    .line 1105
    const/4 v6, 0x0

    .line 1106
    const/4 v7, 0x0

    .line 1107
    if-eqz p2, :cond_1d4

    .line 1108
    const-string v1, "tt_image_width"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1109
    const-string v1, "tt_image_height"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1110
    const-string v1, "tt_can_interrupt_video"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1111
    const-string v1, "tt_video_play_btn_bitmap"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1112
    const-string v11, "tt_video_play_btn_SIZE"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1114
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_c3

    .line 1115
    const/16 v3, 0x2b2

    .line 1116
    const/16 v2, 0x184

    .line 1138
    :goto_4e
    instance-of v4, v10, Ljava/lang/Boolean;

    if-eqz v4, :cond_1ce

    .line 1139
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1142
    :goto_5a
    instance-of v5, v1, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1cb

    .line 1143
    check-cast v1, Landroid/graphics/Bitmap;

    .line 1146
    :goto_60
    instance-of v5, v11, Ljava/lang/Integer;

    if-eqz v5, :cond_1c7

    .line 1147
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object v5, v1

    .line 1156
    :goto_6d
    invoke-interface {v8, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v7

    .line 1157
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v8, p0, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v8

    .line 1159
    if-lez v3, :cond_ff

    if-lez v2, :cond_ff

    .line 1160
    invoke-virtual {v8, v3, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1164
    :goto_83
    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1165
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1169
    const-string v1, "0"

    iget-object v9, p0, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_108

    const-string v1, "0"

    iget-object v9, p0, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_108

    .line 1170
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->e:Ljava/lang/String;

    const-string v5, "load Native Express Ad"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    int-to-float v1, v3

    invoke-static {p1, v1}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1173
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    new-instance v2, Lcom/anythink/network/toutiao/TTATAdapter$2;

    invoke-direct {v2, p0, p1, v4}, Lcom/anythink/network/toutiao/TTATAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Z)V

    invoke-interface {v7, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 1324
    :cond_c2
    :goto_c2
    return-void

    .line 1117
    :cond_c3
    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_cd

    .line 1118
    const/16 v3, 0xe4

    .line 1119
    const/16 v2, 0x96

    goto :goto_4e

    .line 1122
    :cond_cd
    :try_start_cd
    instance-of v12, v4, Ljava/lang/Integer;

    if-nez v12, :cond_d5

    instance-of v12, v4, Ljava/lang/String;

    if-eqz v12, :cond_dd

    .line 1123
    :cond_d5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_dc} :catch_f1

    move-result v2

    :cond_dd
    move v4, v2

    .line 1129
    :goto_de
    :try_start_de
    instance-of v2, v9, Ljava/lang/Integer;

    if-nez v2, :cond_e6

    instance-of v2, v9, Ljava/lang/String;

    if-eqz v2, :cond_1d1

    .line 1130
    :cond_e6
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_ed} :catch_f7

    move-result v2

    :goto_ee
    move v3, v4

    .line 1134
    goto/16 :goto_4e

    .line 1126
    :catch_f1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v2

    goto :goto_de

    .line 1133
    :catch_f7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    move v3, v4

    goto/16 :goto_4e

    .line 1162
    :cond_ff
    const/16 v1, 0x280

    const/16 v9, 0x140

    invoke-virtual {v8, v1, v9}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    goto/16 :goto_83

    .line 1198
    :cond_108
    const-string v1, "1"

    iget-object v9, p0, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_135

    .line 1199
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->e:Ljava/lang/String;

    const-string v5, "load Native Express Video"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    int-to-float v1, v3

    invoke-static {p1, v1}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1202
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    new-instance v2, Lcom/anythink/network/toutiao/TTATAdapter$3;

    invoke-direct {v2, p0, p1, v4}, Lcom/anythink/network/toutiao/TTATAdapter$3;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Z)V

    invoke-interface {v7, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadExpressDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    goto :goto_c2

    .line 1228
    :cond_135
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_1dc

    :cond_13f
    :goto_13f
    packed-switch v1, :pswitch_data_1e8

    .line 1326
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v1, :cond_c2

    .line 1327
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    const-string v2, "4001"

    const-string v3, ""

    const-string v4, "The Native type is not exit."

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    goto/16 :goto_c2

    .line 1228
    :pswitch_157
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    const/4 v1, 0x0

    goto :goto_13f

    :pswitch_161
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    const/4 v1, 0x1

    goto :goto_13f

    :pswitch_16b
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    const/4 v1, 0x2

    goto :goto_13f

    :pswitch_175
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    const/4 v1, 0x3

    goto :goto_13f

    .line 1230
    :pswitch_17f
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v8

    new-instance v1, Lcom/anythink/network/toutiao/TTATAdapter$4;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$4;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v7, v8, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    goto/16 :goto_c2

    .line 1254
    :pswitch_18f
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v8

    new-instance v1, Lcom/anythink/network/toutiao/TTATAdapter$5;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$5;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v7, v8, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V

    goto/16 :goto_c2

    .line 1278
    :pswitch_19f
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1279
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v8

    new-instance v1, Lcom/anythink/network/toutiao/TTATAdapter$6;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$6;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v7, v8, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    goto/16 :goto_c2

    .line 1302
    :pswitch_1b3
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1303
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v8

    new-instance v1, Lcom/anythink/network/toutiao/TTATAdapter$7;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/toutiao/TTATAdapter$7;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V

    invoke-interface {v7, v8, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    goto/16 :goto_c2

    :cond_1c7
    move v6, v7

    move-object v5, v1

    goto/16 :goto_6d

    :cond_1cb
    move-object v1, v6

    goto/16 :goto_60

    :cond_1ce
    move v4, v5

    goto/16 :goto_5a

    :cond_1d1
    move v2, v3

    goto/16 :goto_ee

    :cond_1d4
    move v4, v5

    move-object v5, v6

    move v6, v7

    move v13, v3

    move v3, v2

    move v2, v13

    goto/16 :goto_6d

    .line 1228
    :pswitch_data_1dc
    .packed-switch 0x30
        :pswitch_157
        :pswitch_161
        :pswitch_16b
        :pswitch_175
    .end packed-switch

    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_17f
        :pswitch_18f
        :pswitch_19f
        :pswitch_1b3
    .end packed-switch
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 346
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 340
    invoke-static {}, Lcom/anythink/network/toutiao/TTATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadNativeAd(Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    .line 43
    if-nez p3, :cond_14

    .line 44
    if-eqz p2, :cond_13

    .line 45
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "This placement\'s params in server is null!"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 97
    :cond_13
    :goto_13
    return-void

    .line 50
    :cond_14
    const-string v0, "app_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    const-string v1, "slot_id"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 54
    :cond_34
    if-eqz p2, :cond_13

    .line 55
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "toutiao app_id or slot_id is empty!"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_13

    .line 60
    :cond_44
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    .line 62
    const-string v0, "layout_type"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 63
    const-string v0, "layout_type"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    .line 67
    :cond_5a
    const/4 v0, 0x1

    .line 69
    if-eqz p3, :cond_6b

    .line 70
    :try_start_5d
    sget-object v1, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->AD_REQUEST_NUM:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6a} :catch_a9

    move-result v0

    :cond_6b
    move v4, v0

    .line 76
    :goto_6c
    const-string v0, "is_video"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 77
    const-string v0, "is_video"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    .line 80
    :cond_80
    const/4 v0, 0x0

    .line 82
    :try_start_81
    const-string v1, "media_size"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 83
    const-string v1, "media_size"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_96} :catch_af

    move-result v0

    :cond_97
    move v5, v0

    .line 91
    :goto_98
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v6

    new-instance v0, Lcom/anythink/network/toutiao/TTATAdapter$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/network/toutiao/TTATAdapter$1;-><init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;II)V

    invoke-virtual {v6, p1, p3, v0}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/toutiao/TTATInitManager$a;)V

    goto/16 :goto_13

    .line 73
    :catch_a9
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v0

    goto :goto_6c

    :catch_af
    move-exception v1

    move v5, v0

    goto :goto_98
.end method
