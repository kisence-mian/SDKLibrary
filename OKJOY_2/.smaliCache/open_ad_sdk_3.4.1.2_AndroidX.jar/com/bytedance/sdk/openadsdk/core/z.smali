.class public Lcom/bytedance/sdk/openadsdk/core/z;
.super Ljava/lang/Object;
.source "WebHelper.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/z;->a:Z

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;ZLjava/util/Map;ZZ)Landroid/content/Intent;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "I",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 353
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result p10

    if-eqz p10, :cond_61

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object p10

    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p10

    if-nez p10, :cond_61

    if-nez p4, :cond_14

    if-eqz p5, :cond_61

    .line 354
    :cond_14
    new-instance p10, Landroid/content/Intent;

    const-class v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-direct {p10, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    invoke-static {p2, p7}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Z)Z

    move-result p7

    const-string v0, "ad_pending_download"

    invoke-virtual {p10, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object p7

    .line 357
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    if-eqz p7, :cond_60

    .line 358
    nop

    .line 359
    const-string p1, "?"

    invoke-virtual {p7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p7, "&orientation=portrait"

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_60

    .line 362
    :cond_4d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p7, "?orientation=portrait"

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 365
    :cond_60
    :goto_60
    goto :goto_92

    :cond_61
    instance-of p7, p4, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz p7, :cond_6d

    .line 366
    new-instance p10, Landroid/content/Intent;

    const-class p7, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-direct {p10, p0, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_92

    .line 368
    :cond_6d
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p7

    if-eqz p7, :cond_8b

    sget-boolean p7, Lcom/bytedance/sdk/openadsdk/core/z;->a:Z

    if-nez p7, :cond_8b

    .line 369
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)Z

    move-result p7

    if-nez p7, :cond_8b

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p7

    if-eqz p7, :cond_8b

    .line 371
    new-instance p10, Landroid/content/Intent;

    const-class p7, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-direct {p10, p0, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_92

    .line 373
    :cond_8b
    new-instance p10, Landroid/content/Intent;

    const-class p7, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-direct {p10, p0, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    :goto_92
    const-string p7, "url"

    invoke-virtual {p10, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Y()Ljava/lang/String;

    move-result-object p1

    const-string p7, "gecko_id"

    invoke-virtual {p10, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object p1

    const-string p7, "web_title"

    invoke-virtual {p10, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const/16 p1, 0xd54

    const-string p7, "sdk_version"

    invoke-virtual {p10, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p1

    const-string p7, "adid"

    invoke-virtual {p10, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p1

    const-string p7, "log_extra"

    invoke-virtual {p10, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object p1

    const/4 p7, 0x0

    if-nez p1, :cond_cb

    move-object p1, p7

    goto :goto_d3

    :cond_cb
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object p1

    .line 382
    :goto_d3
    const-string v0, "icon_url"

    invoke-virtual {p10, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string p1, "event_tag"

    invoke-virtual {p10, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string p1, "source"

    invoke-virtual {p10, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_eb

    .line 386
    const/high16 p1, 0x10000000

    invoke-virtual {p10, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    :cond_eb
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/k;->e(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p1

    if-eqz p1, :cond_10a

    .line 391
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "multi_process_materialmeta"

    invoke-virtual {p10, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_118

    .line 393
    :cond_10a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/u;->g()V

    .line 394
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 397
    :goto_118
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    if-eqz p1, :cond_1ed

    .line 398
    nop

    .line 399
    const-string p1, "multi_process_data"

    if-eqz p4, :cond_13a

    .line 400
    instance-of p3, p4, Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;

    if-eqz p3, :cond_12d

    .line 401
    check-cast p4, Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;

    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;->e()Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    move-result-object p7

    .line 403
    :cond_12d
    if-eqz p7, :cond_13a

    .line 404
    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p10, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    :cond_13a
    if-eqz p5, :cond_14d

    .line 408
    invoke-interface {p5}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    move-result-object p7

    .line 409
    if-eqz p7, :cond_14d

    .line 410
    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p10, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    :cond_14d
    if-eqz p7, :cond_176

    .line 414
    iget-boolean p3, p7, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->d:Z

    const-string p4, "video_is_auto_play"

    invoke-virtual {p10, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 415
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "videoDataModel="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a()Lorg/json/JSONObject;

    move-result-object p4

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "videoDataModel"

    invoke-static {p4, p3}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_176
    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->a(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_1ed

    if-nez p7, :cond_180

    if-eqz p9, :cond_1ed

    .line 424
    :cond_180
    if-eqz p7, :cond_18e

    .line 426
    :try_start_182
    iget-wide p3, p7, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->g:J

    long-to-float p1, p3

    iget-wide p3, p7, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->e:J

    long-to-float p3, p3

    div-float/2addr p1, p3

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    goto :goto_1ae

    .line 429
    :cond_18e
    const/16 p3, 0x64

    .line 430
    new-instance p4, Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    invoke-direct {p4}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;-><init>()V

    .line 431
    const-wide/16 p5, 0x64

    iput-wide p5, p4, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->g:J

    .line 432
    const/4 p5, 0x1

    iput-boolean p5, p4, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a:Z

    .line 433
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->j(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p5

    iput-boolean p5, p4, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->d:Z

    .line 434
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a()Lorg/json/JSONObject;

    move-result-object p4

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p10, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move p1, p3

    .line 437
    :goto_1ae
    if-nez p8, :cond_1b5

    .line 438
    new-instance p8, Ljava/util/HashMap;

    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    .line 440
    :cond_1b5
    const-string p3, "play_percent"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p8, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->X()I

    move-result p3

    if-nez p3, :cond_1cf

    .line 442
    new-instance p1, Landroid/content/ComponentName;

    const-class p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p10, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1eb

    .line 443
    :cond_1cf
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->X()I

    move-result p3

    if-lez p3, :cond_1eb

    .line 444
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->X()I

    move-result p3

    if-le p1, p3, :cond_1eb

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->j(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    if-eqz p1, :cond_1eb

    .line 445
    new-instance p1, Landroid/content/ComponentName;

    const-class p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p10, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1eb
    .catchall {:try_start_182 .. :try_end_1eb} :catchall_1ec

    .line 449
    :cond_1eb
    :goto_1eb
    goto :goto_1ed

    .line 448
    :catchall_1ec
    move-exception p0

    .line 452
    :cond_1ed
    :goto_1ed
    return-object p10
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Intent;JLjava/lang/String;)V
    .registers 16

    .line 230
    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    if-nez p0, :cond_7

    goto :goto_29

    .line 233
    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ax()Z

    move-result v0

    .line 234
    if-nez v0, :cond_e

    .line 235
    return-void

    .line 237
    :cond_e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->c()Lcom/bytedance/sdk/openadsdk/utils/a;

    move-result-object v0

    .line 238
    if-nez v0, :cond_19

    .line 239
    return-void

    .line 241
    :cond_19
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/z$2;

    move-object v1, v9

    move-wide v2, p3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p5

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/z$2;-><init>(JLandroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Intent;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/a;)V

    invoke-virtual {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Lcom/bytedance/sdk/openadsdk/utils/a$a;)V

    .line 281
    return-void

    .line 231
    :cond_29
    :goto_29
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/z;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 52
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/z;->a:Z

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;ZLjava/util/Map;ZZ)Z
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "I",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 59
    move-object/from16 v12, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    const/4 v13, 0x0

    if-eqz v12, :cond_1bd

    if-eqz v8, :cond_1bd

    const/4 v0, -0x1

    move/from16 v7, p2

    if-ne v7, v0, :cond_12

    goto/16 :goto_1bd

    .line 62
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v10

    .line 64
    invoke-static/range {p5 .. p5}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    if-nez p10, :cond_29

    if-nez p7, :cond_29

    if-nez v10, :cond_29

    .line 65
    invoke-static/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 66
    return v13

    .line 70
    :cond_29
    const-string v14, "android.intent.action.VIEW"

    const/high16 v15, 0x10000000

    const/4 v6, 0x0

    const/4 v4, 0x1

    if-eqz v10, :cond_15e

    .line 71
    const-string v0, "deepLink"

    const-string v1, "WebHelper \u542b\u6709deeplink\u94fe\u63a5\u5c1d\u8bd5deeplink\u8c03\u8d77 deepLink != null "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v16

    .line 73
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_159

    .line 74
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 76
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "open_url_app"

    const-string v2, "deeplink_fail_realtime"

    if-eqz v0, :cond_a8

    .line 80
    invoke-static {v12, v5}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aw()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 83
    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Z

    .line 85
    :cond_6b
    invoke-virtual {v5, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 88
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v0, v3

    move-object v3, v5

    move v14, v4

    move-object v15, v5

    move-wide v4, v10

    move-object v10, v6

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Intent;JLjava/lang/String;)V

    .line 89
    new-instance v11, Lcom/bytedance/sdk/openadsdk/core/z$1;

    move-object v1, v11

    move-object/from16 v3, p5

    move-object/from16 v4, p0

    move/from16 v5, p2

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/z$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Landroid/content/Context;IZLjava/util/Map;)V

    invoke-static {v12, v15, v11}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 104
    invoke-static {v12, v8, v9, v0, v10}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k;->a()Lcom/bytedance/sdk/openadsdk/c/k;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v13}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Z)V

    .line 106
    return v14

    .line 108
    :cond_9f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8, v9, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    move v11, v4

    goto :goto_fe

    .line 111
    :cond_a8
    move-object v0, v3

    move-object v3, v5

    invoke-virtual {v3, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 115
    nop

    .line 117
    :try_start_b2
    instance-of v1, v12, Landroid/app/Activity;

    if-nez v1, :cond_b9

    .line 118
    invoke-virtual {v3, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    :cond_b9
    invoke-static {v12, v8, v9, v0, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aw()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 124
    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Z

    move-result v0
    :try_end_c6
    .catchall {:try_start_b2 .. :try_end_c6} :catchall_ef

    move/from16 v19, v0

    goto :goto_cb

    .line 123
    :cond_c9
    move/from16 v19, v13

    .line 126
    :goto_cb
    :try_start_cb
    invoke-virtual {v12, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_eb

    .line 129
    move-object/from16 v1, p0

    move-object v5, v2

    move-object/from16 v2, p1

    move v11, v4

    move-object v15, v5

    move-wide/from16 v4, v17

    move-object/from16 v6, p5

    :try_start_d9
    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Intent;JLjava/lang/String;)V

    .line 131
    const-string v0, "deeplink_success_realtime"

    invoke-static {v12, v8, v9, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k;->a()Lcom/bytedance/sdk/openadsdk/c/k;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v13}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Z)V
    :try_end_e8
    .catchall {:try_start_d9 .. :try_end_e8} :catchall_e9

    .line 134
    return v11

    .line 135
    :catchall_e9
    move-exception v0

    goto :goto_f4

    :catchall_eb
    move-exception v0

    move-object v15, v2

    move v11, v4

    goto :goto_f4

    :catchall_ef
    move-exception v0

    move-object v15, v2

    move v11, v4

    move/from16 v19, v13

    .line 136
    :goto_f4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8, v9, v15}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-eqz v19, :cond_fe

    .line 138
    return v13

    .line 144
    :cond_fe
    :goto_fe
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c()I

    move-result v0

    const-string v1, "open_fallback_url"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_143

    .line 145
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_141

    .line 146
    if-eqz p6, :cond_13f

    .line 147
    nop

    .line 149
    invoke-interface/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->j()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 150
    move v13, v11

    .line 153
    :cond_117
    if-nez v13, :cond_127

    invoke-interface/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->h()Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-interface/range {p6 .. p7}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 154
    move v4, v11

    goto :goto_128

    .line 157
    :cond_127
    move v4, v13

    :goto_128
    if-nez v4, :cond_131

    invoke-interface/range {p6 .. p7}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 158
    move v4, v11

    .line 161
    :cond_131
    if-nez v4, :cond_13a

    invoke-interface/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->i()Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 162
    move v4, v11

    .line 164
    :cond_13a
    const/4 v15, 0x0

    invoke-static {v12, v8, v9, v1, v15}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    return v4

    .line 146
    :cond_13f
    const/4 v15, 0x0

    goto :goto_153

    .line 145
    :cond_141
    const/4 v15, 0x0

    goto :goto_144

    .line 144
    :cond_143
    const/4 v15, 0x0

    .line 167
    :goto_144
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c()I

    move-result v0

    if-ne v0, v11, :cond_14f

    .line 168
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b()Ljava/lang/String;

    move-result-object v16

    goto :goto_153

    .line 170
    :cond_14f
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->W()Ljava/lang/String;

    move-result-object v16

    .line 172
    :goto_153
    invoke-static {v12, v8, v9, v1, v15}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 173
    move-object/from16 v2, v16

    goto :goto_165

    .line 73
    :cond_159
    move v11, v4

    move-object v15, v6

    move-object/from16 v2, v16

    goto :goto_165

    .line 176
    :cond_15e
    move v11, v4

    move-object v15, v6

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->W()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 179
    :goto_165
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_172

    goto :goto_173

    .line 202
    :cond_172
    return v13

    .line 180
    :cond_173
    :goto_173
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19e

    .line 181
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_181

    .line 182
    return v13

    .line 184
    :cond_181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    :try_start_186
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_18d} :catch_19c

    .line 190
    nop

    .line 191
    instance-of v1, v12, Landroid/app/Activity;

    if-nez v1, :cond_197

    .line 192
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    :cond_197
    invoke-static {v12, v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 195
    move v14, v11

    goto :goto_1bc

    .line 188
    :catch_19c
    move-exception v0

    .line 189
    return v13

    .line 196
    :cond_19e
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move v14, v11

    move v11, v0

    invoke-static/range {v1 .. v11}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;ZLjava/util/Map;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 197
    invoke-static {v12, v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 198
    sput-boolean v13, Lcom/bytedance/sdk/openadsdk/core/z;->a:Z

    .line 200
    :goto_1bc
    return v14

    .line 60
    :cond_1bd
    :goto_1bd
    return v13
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;ILjava/lang/String;ZLjava/util/Map;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 210
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    :try_start_e
    invoke-static/range {v1 .. v11}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;ZLjava/util/Map;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 211
    const/4 v1, 0x0

    move-object v2, p0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_19

    .line 214
    goto :goto_1b

    .line 212
    :catchall_19
    move-exception v0

    .line 213
    const/4 v0, 0x0

    .line 215
    :goto_1b
    return v0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)Z
    .registers 3

    .line 331
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 332
    return v0

    .line 334
    :cond_4
    instance-of v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;

    if-nez v1, :cond_9

    .line 335
    return v0

    .line 339
    :cond_9
    :try_start_9
    check-cast p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;->g()Z

    move-result p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    return p0

    .line 340
    :catchall_10
    move-exception p0

    .line 341
    return v0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/d/l;Z)Z
    .registers 4

    .line 456
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 457
    return v0

    .line 459
    :cond_4
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_e

    goto :goto_17

    .line 462
    :cond_e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result p0

    if-nez p0, :cond_15

    .line 463
    return v0

    .line 465
    :cond_15
    const/4 p0, 0x1

    return p0

    .line 460
    :cond_17
    :goto_17
    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 3

    .line 219
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 220
    return v1

    .line 222
    :cond_8
    const-string v0, "embeded_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "embeded_ad_landingpage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1a

    .line 225
    :cond_19
    return v1

    .line 223
    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 11

    .line 284
    if-eqz p1, :cond_4b

    if-eqz p0, :cond_4b

    if-nez p2, :cond_7

    goto :goto_4b

    .line 287
    :cond_7
    nop

    .line 288
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 289
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1b

    .line 288
    :cond_18
    const-string v0, ""

    move-object v2, v0

    .line 291
    :goto_1b
    nop

    .line 292
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 293
    const-string v0, "\u662f\u5426\u7acb\u5373\u6253\u5f00\u5e94\u7528"

    move-object v3, v0

    goto :goto_3a

    .line 295
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u7acb\u5373\u6253\u5f00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 297
    :goto_3a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v1

    .line 298
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/z$3;

    invoke-direct {v6, p0, p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/z$3;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Landroid/content/Intent;)V

    const-string v4, "\u7acb\u5373\u6253\u5f00"

    const-string v5, "\u9000\u51fa"

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    .line 328
    return-void

    .line 285
    :cond_4b
    :goto_4b
    return-void
.end method
