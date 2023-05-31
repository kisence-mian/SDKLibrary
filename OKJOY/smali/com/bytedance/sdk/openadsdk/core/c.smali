.class public Lcom/bytedance/sdk/openadsdk/core/c;
.super Ljava/lang/Object;
.source "AdInfoFactory.java"


# direct methods
.method public static a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bytedance/sdk/openadsdk/core/d/a;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 30
    if-nez p0, :cond_4

    .line 54
    :cond_3
    :goto_3
    return-object v0

    .line 34
    :cond_4
    :try_start_4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;-><init>()V

    .line 35
    const-string v2, "request_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Ljava/lang/String;)V

    .line 36
    const-string v2, "ret"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(I)V

    .line 37
    const-string v2, "message"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()I

    move-result v2

    if-nez v2, :cond_3

    .line 41
    const-string v2, "creatives"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 42
    if-eqz v3, :cond_4f

    .line 43
    const/4 v2, 0x0

    :goto_33
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4f

    .line 44
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v4

    .line 45
    if-eqz v4, :cond_4c

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 46
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4c} :catch_51

    .line 43
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_4f
    move-object v0, v1

    .line 50
    goto :goto_3

    .line 51
    :catch_51
    move-exception v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 59
    if-nez p0, :cond_4

    .line 62
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    goto :goto_3
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/d/b;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 443
    if-nez p0, :cond_4

    .line 449
    :cond_3
    :goto_3
    return v0

    .line 446
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 449
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/d/f;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 415
    if-nez p0, :cond_5

    .line 426
    :cond_4
    :goto_4
    return v0

    .line 419
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_19
    move v0, v1

    .line 420
    goto :goto_4

    .line 422
    :cond_1b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->c()I

    move-result v2

    if-eq v2, v0, :cond_4

    .line 423
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->c()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 424
    goto :goto_4
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 356
    .line 357
    if-nez p0, :cond_72

    move v0, v1

    .line 360
    :goto_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v2, :cond_1a

    .line 410
    :cond_19
    :goto_19
    return v1

    .line 363
    :cond_1a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/f;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 367
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v2

    packed-switch v2, :pswitch_data_74

    .line 388
    :cond_2b
    :goto_2b
    if-nez v0, :cond_53

    move v1, v0

    .line 389
    goto :goto_19

    .line 370
    :pswitch_2f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move v0, v1

    .line 371
    goto :goto_2b

    .line 375
    :pswitch_3b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/b;)Z

    move-result v2

    if-nez v2, :cond_2b

    move v0, v1

    .line 376
    goto :goto_2b

    .line 380
    :pswitch_47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move v0, v1

    .line 381
    goto :goto_2b

    .line 392
    :cond_53
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v2

    sparse-switch v2, :sswitch_data_80

    :cond_5a
    move v1, v0

    goto :goto_19

    .line 397
    :sswitch_5c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_5a

    goto :goto_19

    .line 403
    :sswitch_67
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/r;)Z

    move-result v2

    if-nez v2, :cond_5a

    goto :goto_19

    :cond_72
    move v0, v2

    goto :goto_5

    .line 367
    :pswitch_data_74
    .packed-switch 0x2
        :pswitch_2f
        :pswitch_2f
        :pswitch_3b
        :pswitch_47
    .end packed-switch

    .line 392
    :sswitch_data_80
    .sparse-switch
        0x2 -> :sswitch_5c
        0x3 -> :sswitch_5c
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_67
        0xf -> :sswitch_67
        0x10 -> :sswitch_5c
    .end sparse-switch
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/d/r;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 430
    if-nez p0, :cond_4

    .line 439
    :cond_3
    :goto_3
    return v0

    .line 433
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 436
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 439
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static a(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/j;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 453
    if-nez p0, :cond_5

    move v0, v1

    .line 467
    :goto_4
    return v0

    .line 456
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_d

    move v0, v1

    .line 457
    goto :goto_4

    .line 459
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 460
    if-nez v0, :cond_21

    move v0, v1

    .line 461
    goto :goto_4

    .line 463
    :cond_21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    .line 464
    goto :goto_4

    .line 467
    :cond_2d
    const/4 v0, 0x1

    goto :goto_4
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 16

    .prologue
    const-wide/16 v6, 0x0

    const/4 v14, 0x0

    .line 208
    if-nez p0, :cond_7

    .line 209
    const/4 v0, 0x0

    .line 239
    :goto_6
    return-object v0

    .line 211
    :cond_7
    const-string v0, "mCodeId"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v1, "mImgAcceptedWidth"

    invoke-virtual {p0, v1, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 213
    const-string v2, "mImgAcceptedHeight"

    invoke-virtual {p0, v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 214
    const-string v3, "mExpressViewAcceptedWidth"

    invoke-virtual {p0, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 215
    const-string v4, "mExpressViewAcceptedHeight"

    invoke-virtual {p0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 216
    const-string v5, "mAdCount"

    const/4 v6, 0x6

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 217
    const-string v6, "mSupportDeepLink"

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 218
    const-string v7, "mRewardName"

    const-string v8, ""

    invoke-virtual {p0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 219
    const-string v8, "mRewardAmount"

    invoke-virtual {p0, v8, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 220
    const-string v9, "mMediaExtra"

    const-string v10, ""

    invoke-virtual {p0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 221
    const-string v10, "mUserID"

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 222
    const-string v11, "mOrientation"

    const/4 v12, 0x2

    invoke-virtual {p0, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 223
    const-string v12, "mNativeAdType"

    invoke-virtual {p0, v12, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 224
    const-string v13, "mIsAutoPlay"

    invoke-virtual {p0, v13, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 225
    new-instance v14, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v14}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 226
    invoke-virtual {v14, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 228
    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v9}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0, v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0, v13}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    goto/16 :goto_6
.end method

.method public static b(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 67
    if-nez p0, :cond_6

    .line 68
    const/4 v0, 0x0

    .line 204
    :goto_5
    return-object v0

    .line 70
    :cond_6
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;-><init>()V

    .line 71
    const-string v0, "interaction_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->i(I)V

    .line 72
    const-string v0, "target_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c(Ljava/lang/String;)V

    .line 73
    const-string v0, "ad_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->h(Ljava/lang/String;)V

    .line 74
    const-string v0, "source"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(Ljava/lang/String;)V

    .line 75
    const-string v0, "dislike_control"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->l(I)V

    .line 76
    const-string v0, "play_bar_show_time"

    const/16 v3, -0xc8

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->h(I)V

    .line 77
    const-string v0, "is_playable"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Z)V

    .line 78
    const-string v0, "playable_type"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(I)V

    .line 79
    const-string v0, "playable_style"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Ljava/lang/String;)V

    .line 80
    const-string v0, "icon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    const-string v3, "screenshot"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(Z)V

    .line 82
    const-string v3, "play_bar_style"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->f(I)V

    .line 83
    const-string v3, "market_url"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->j(Ljava/lang/String;)V

    .line 84
    const-string v3, "video_adaptation"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->d(I)V

    .line 85
    const-string v3, "feed_video_opentype"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c(I)V

    .line 86
    const-string v3, "session_params"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Lorg/json/JSONObject;)V

    .line 87
    if-eqz v0, :cond_c1

    .line 88
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/d/j;-><init>()V

    .line 89
    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a(Ljava/lang/String;)V

    .line 90
    const-string v4, "height"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b(I)V

    .line 91
    const-string v4, "width"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a(I)V

    .line 92
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 96
    :cond_c1
    const-string v0, "cover_image"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_ec

    .line 98
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/d/j;-><init>()V

    .line 99
    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a(Ljava/lang/String;)V

    .line 100
    const-string v4, "height"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b(I)V

    .line 101
    const-string v4, "width"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a(I)V

    .line 102
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(Lcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 105
    :cond_ec
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 106
    if-eqz v3, :cond_125

    move v0, v1

    .line 107
    :goto_f5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_125

    .line 108
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/d/j;-><init>()V

    .line 109
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 110
    const-string v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a(Ljava/lang/String;)V

    .line 111
    const-string v6, "height"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b(I)V

    .line 112
    const-string v6, "width"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a(I)V

    .line 113
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c(Lcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_f5

    .line 116
    :cond_125
    const-string v0, "show_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 117
    if-eqz v3, :cond_142

    move v0, v1

    .line 118
    :goto_12e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_142

    .line 119
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->H()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_12e

    .line 122
    :cond_142
    const-string v0, "click_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 123
    if-eqz v3, :cond_15f

    move v0, v1

    .line 124
    :goto_14b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_15f

    .line 125
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->I()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_14b

    .line 129
    :cond_15f
    const-string v0, "click_area"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_19f

    .line 131
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/d/d;-><init>()V

    .line 132
    const-string v4, "click_upper_content_area"

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/bytedance/sdk/openadsdk/core/d/d;->a:Z

    .line 133
    const-string v4, "click_upper_non_content_area"

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/bytedance/sdk/openadsdk/core/d/d;->b:Z

    .line 134
    const-string v4, "click_lower_content_area"

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/bytedance/sdk/openadsdk/core/d/d;->c:Z

    .line 135
    const-string v4, "click_lower_non_content_area"

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/bytedance/sdk/openadsdk/core/d/d;->d:Z

    .line 136
    const-string v4, "click_button_area"

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/bytedance/sdk/openadsdk/core/d/d;->e:Z

    .line 137
    const-string v4, "click_video_area"

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v3, Lcom/bytedance/sdk/openadsdk/core/d/d;->f:Z

    .line 138
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    .line 142
    :cond_19f
    const-string v0, "adslot"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_235

    .line 144
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 145
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 151
    :goto_1ae
    const-string v0, "intercept_flag"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->g(I)V

    .line 153
    const-string v0, "phone_num"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->d(Ljava/lang/String;)V

    .line 154
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e(Ljava/lang/String;)V

    .line 155
    const-string v0, "description"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->f(Ljava/lang/String;)V

    .line 156
    const-string v0, "button_text"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->g(Ljava/lang/String;)V

    .line 157
    const-string v0, "ad_logo"

    invoke-virtual {p0, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e(I)V

    .line 158
    const-string v0, "ext"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->i(Ljava/lang/String;)V

    .line 159
    const-string v0, "image_mode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->j(I)V

    .line 160
    const-string v0, "app"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 161
    const-string v3, "deep_link"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 162
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/b;)V

    .line 163
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/c;->f(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/f;)V

    .line 164
    const-string v0, "filter_words"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 165
    if-eqz v3, :cond_23a

    move v0, v1

    .line 166
    :goto_219
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_23a

    .line 167
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 168
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/c;->c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v4

    .line 169
    if-eqz v4, :cond_232

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v5

    if-eqz v5, :cond_232

    .line 170
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    .line 166
    :cond_232
    add-int/lit8 v0, v0, 0x1

    goto :goto_219

    .line 147
    :cond_235
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto/16 :goto_1ae

    .line 174
    :cond_23a
    const-string v0, "count_down"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->k(I)V

    .line 175
    const-string v0, "expiration_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(J)V

    .line 176
    const-string v0, "video"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_25b

    .line 178
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->g(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/r;)V

    .line 181
    :cond_25b
    const-string v0, "download_conf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_26a

    .line 183
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->e(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/g;)V

    .line 186
    :cond_26a
    const-string v0, "media_ext"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->h(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Ljava/util/Map;)V

    .line 189
    const-string v0, "tpl_info"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_2c6

    .line 191
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;-><init>()V

    .line 192
    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->b(Ljava/lang/String;)V

    .line 193
    const-string v4, "md5"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->c(Ljava/lang/String;)V

    .line 194
    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->d(Ljava/lang/String;)V

    .line 195
    const-string v4, "data"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->e(Ljava/lang/String;)V

    .line 196
    const-string v4, "diff_data"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->f(Ljava/lang/String;)V

    .line 197
    const-string v4, "dynamic_creative"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->g(Ljava/lang/String;)V

    .line 198
    const-string v4, "version"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->a(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/k$a;)V

    .line 202
    :cond_2c6
    const-string v0, "if_block_lp"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(I)V

    move-object v0, v2

    .line 204
    goto/16 :goto_5
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 243
    if-nez p0, :cond_4

    .line 269
    :goto_3
    return-object v0

    .line 248
    :cond_4
    :try_start_4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>()V

    .line 249
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setId(Ljava/lang/String;)V

    .line 250
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setName(Ljava/lang/String;)V

    .line 251
    const-string v2, "is_selected"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setIsSelected(Z)V

    .line 252
    const-string v2, "options"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 254
    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4f

    .line 255
    const/4 v2, 0x0

    :goto_33
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4f

    .line 256
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 257
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/c;->c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v4

    .line 259
    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 260
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/FilterWord;->addOption(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4c} :catch_51

    .line 255
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_4f
    move-object v0, v1

    .line 265
    goto :goto_3

    .line 266
    :catch_51
    move-exception v1

    goto :goto_3
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/b;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 274
    if-nez p0, :cond_4

    .line 275
    const/4 v0, 0x0

    .line 285
    :goto_3
    return-object v0

    .line 277
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;-><init>()V

    .line 278
    const-string v1, "app_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c(Ljava/lang/String;)V

    .line 279
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d(Ljava/lang/String;)V

    .line 280
    const-string v1, "download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b(Ljava/lang/String;)V

    .line 281
    const-string v1, "score"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a(I)V

    .line 282
    const-string v1, "comment_num"

    const/16 v2, 0x1ad6

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b(I)V

    .line 283
    const-string v1, "app_size"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c(I)V

    .line 284
    const-string v1, "quick_app_url"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static e(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/g;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 290
    if-nez p0, :cond_6

    .line 291
    const/4 v0, 0x0

    .line 302
    :goto_5
    return-object v0

    .line 294
    :cond_6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;-><init>()V

    .line 295
    const-string v1, "auto_open"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/g;->d(I)V

    .line 296
    const-string v1, "download_mode"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/g;->e(I)V

    .line 297
    const-string v1, "support_multiple"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c(I)V

    .line 298
    const-string v1, "auto_control"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/g;->f(I)V

    .line 299
    const-string v1, "download_type"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b(I)V

    .line 300
    const-string v1, "if_suspend_download"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a(I)V

    goto :goto_5
.end method

.method private static f(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/f;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 307
    if-nez p0, :cond_4

    .line 308
    const/4 v0, 0x0

    .line 314
    :goto_3
    return-object v0

    .line 310
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;-><init>()V

    .line 311
    const-string v1, "deeplink_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/f;->a(Ljava/lang/String;)V

    .line 312
    const-string v1, "fallback_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/f;->b(Ljava/lang/String;)V

    .line 313
    const-string v1, "fallback_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/f;->a(I)V

    goto :goto_3
.end method

.method private static g(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/r;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 319
    if-nez p0, :cond_5

    .line 320
    const/4 v0, 0x0

    .line 335
    :goto_4
    return-object v0

    .line 322
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/r;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;-><init>()V

    .line 323
    const-string v1, "cover_height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(I)V

    .line 324
    const-string v1, "cover_width"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b(I)V

    .line 325
    const-string v1, "resolution"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(Ljava/lang/String;)V

    .line 326
    const-string v1, "size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(J)V

    .line 327
    const-string v1, "video_duration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(D)V

    .line 328
    const-string v1, "cover_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b(Ljava/lang/String;)V

    .line 329
    const-string v1, "video_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c(Ljava/lang/String;)V

    .line 330
    const-string v1, "endcard"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->d(Ljava/lang/String;)V

    .line 331
    const-string v1, "playable_download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->e(Ljava/lang/String;)V

    .line 332
    const-string v1, "file_hash"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f(Ljava/lang/String;)V

    .line 333
    const-string v1, "if_playable_loading_show"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c(I)V

    .line 334
    const-string v1, "remove_loading_page_type"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->d(I)V

    goto :goto_4
.end method

.method private static h(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    if-nez p0, :cond_4

    .line 340
    const/4 v0, 0x0

    .line 352
    :goto_3
    return-object v0

    .line 342
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 343
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 344
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 345
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 349
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 350
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_27
    move-object v0, v1

    .line 352
    goto :goto_3
.end method
