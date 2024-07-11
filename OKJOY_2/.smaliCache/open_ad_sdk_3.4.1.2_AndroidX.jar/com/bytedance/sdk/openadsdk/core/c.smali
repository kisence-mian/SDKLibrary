.class public Lcom/bytedance/sdk/openadsdk/core/c;
.super Ljava/lang/Object;
.source "AdInfoFactory.java"


# direct methods
.method public static a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)Lcom/bytedance/sdk/openadsdk/core/d/a;
    .registers 8

    .line 33
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 34
    return-object v0

    .line 37
    :cond_4
    :try_start_4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;-><init>()V

    .line 38
    const-string v2, "request_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Ljava/lang/String;)V

    .line 39
    const-string v2, "ret"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(I)V

    .line 40
    const-string v2, "message"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 42
    return-object v0

    .line 44
    :cond_2b
    const-string v2, "creatives"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 45
    if-eqz p0, :cond_50

    .line 46
    const/4 v2, 0x0

    :goto_34
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_50

    .line 47
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v3

    .line 48
    if-eqz v3, :cond_4d

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 49
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_51

    .line 46
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 53
    :cond_50
    return-object v1

    .line 54
    :catchall_51
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 2

    .line 62
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 63
    return-object v0

    .line 65
    :cond_4
    invoke-static {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/d/b;)Z
    .registers 2

    .line 530
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 531
    return v0

    .line 533
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 534
    return v0

    .line 536
    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/d/g;)Z
    .registers 4

    .line 502
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 503
    return v0

    .line 506
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_29

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_29

    .line 509
    :cond_1a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c()I

    move-result v1

    if-eq v1, v0, :cond_28

    .line 510
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_28

    .line 511
    return v2

    .line 513
    :cond_28
    return v0

    .line 507
    :cond_29
    :goto_29
    return v2
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 5

    .line 443
    nop

    .line 444
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_7

    .line 445
    move v2, v1

    goto :goto_8

    .line 444
    :cond_7
    move v2, v0

    .line 447
    :goto_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_76

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v0, :cond_1d

    goto :goto_76

    .line 450
    :cond_1d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/g;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 451
    return v1

    .line 454
    :cond_28
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    packed-switch v0, :pswitch_data_78

    goto :goto_53

    .line 467
    :pswitch_30
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 468
    move v2, v1

    goto :goto_53

    .line 462
    :pswitch_3c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/b;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 463
    move v2, v1

    goto :goto_53

    .line 457
    :pswitch_48
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 458
    move v2, v1

    .line 475
    :cond_53
    :goto_53
    if-nez v2, :cond_56

    .line 476
    return v2

    .line 479
    :cond_56
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v0

    sparse-switch v0, :sswitch_data_84

    goto :goto_74

    .line 490
    :sswitch_5e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/t;)Z

    move-result p0

    if-nez p0, :cond_74

    .line 491
    goto :goto_75

    .line 484
    :sswitch_69
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_74

    .line 485
    goto :goto_75

    .line 497
    :cond_74
    :goto_74
    move v1, v2

    :goto_75
    return v1

    .line 448
    :cond_76
    :goto_76
    return v1

    nop

    :pswitch_data_78
    .packed-switch 0x2
        :pswitch_48
        :pswitch_48
        :pswitch_3c
        :pswitch_30
    .end packed-switch

    :sswitch_data_84
    .sparse-switch
        0x2 -> :sswitch_69
        0x3 -> :sswitch_69
        0x4 -> :sswitch_69
        0x5 -> :sswitch_5e
        0xf -> :sswitch_5e
        0x10 -> :sswitch_69
    .end sparse-switch
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/d/t;)Z
    .registers 3

    .line 517
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 518
    return v0

    .line 520
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 521
    return v0

    .line 523
    :cond_f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 524
    return v0

    .line 526
    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            ">;)Z"
        }
    .end annotation

    .line 540
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 541
    return v0

    .line 543
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_b

    .line 544
    return v0

    .line 546
    :cond_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 547
    if-nez v1, :cond_1e

    .line 548
    return v0

    .line 550
    :cond_1e
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 551
    return v0

    .line 553
    :cond_29
    goto :goto_f

    .line 554
    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/c;
    .registers 7

    .line 366
    if-nez p0, :cond_4

    .line 367
    const/4 p0, 0x0

    return-object p0

    .line 369
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;-><init>()V

    .line 370
    const-string v1, "developer_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/c;->b(Ljava/lang/String;)V

    .line 371
    const-string v1, "app_version"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/c;->a(Ljava/lang/String;)V

    .line 372
    const-string v1, "permissions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 373
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4c

    .line 374
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/c;->a(Lorg/json/JSONArray;)V

    .line 375
    const/4 v2, 0x0

    :goto_2d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 376
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 377
    if-nez v3, :cond_3a

    .line 378
    goto :goto_49

    .line 380
    :cond_3a
    const-string v4, "permission_name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 381
    const-string v5, "permission_desc"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 385
    :cond_4c
    const-string v1, "privacy_policy_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/c;->c(Ljava/lang/String;)V

    .line 386
    const-string v1, "app_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/c;->e(Ljava/lang/String;)V

    .line 387
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->d(Ljava/lang/String;)V

    .line 388
    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 13

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;-><init>()V

    .line 74
    const-string v1, "interaction_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n(I)V

    .line 75
    const-string v1, "target_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->f(Ljava/lang/String;)V

    .line 76
    const-string v1, "use_media_video_player"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(I)V

    .line 77
    const-string v1, "playable"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lorg/json/JSONObject;)V

    .line 78
    const/4 v1, -0x1

    const-string v3, "landing_scroll_percentage"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->o(I)V

    .line 79
    const-string v1, "gecko_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->g(Ljava/lang/String;)V

    .line 80
    const-string v1, "ad_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->l(Ljava/lang/String;)V

    .line 81
    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->e(Ljava/lang/String;)V

    .line 82
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->o(Ljava/lang/String;)V

    .line 83
    const-string v1, "dislike_control"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->u(I)V

    .line 84
    const/16 v1, -0xc8

    const-string v3, "play_bar_show_time"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->k(I)V

    .line 85
    const-string v1, "is_playable"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Z)V

    .line 86
    const-string v1, "playable_type"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->e(I)V

    .line 87
    const-string v1, "playable_style"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Ljava/lang/String;)V

    .line 88
    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 89
    const-string v3, "screenshot"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Z)V

    .line 90
    const-string v3, "play_bar_style"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i(I)V

    .line 91
    const-string v3, "market_url"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n(Ljava/lang/String;)V

    .line 92
    const-string v3, "video_adaptation"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->g(I)V

    .line 93
    const-string v3, "feed_video_opentype"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->f(I)V

    .line 94
    const-string v3, "session_params"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lorg/json/JSONObject;)V

    .line 97
    nop

    .line 98
    const/4 v3, 0x1

    if-eqz p2, :cond_d0

    .line 99
    iget p2, p2, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    goto :goto_d1

    .line 98
    :cond_d0
    move p2, v3

    .line 101
    :goto_d1
    const-string v5, "render_control"

    invoke-virtual {p0, v5, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(I)V

    .line 103
    const-string p2, "width"

    const-string v5, "height"

    const-string v6, "url"

    if-eqz v1, :cond_ff

    .line 104
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/d/k;-><init>()V

    .line 105
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(I)V

    .line 107
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(I)V

    .line 108
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 112
    :cond_ff
    const-string v1, "reward_data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_119

    .line 114
    const-string v7, "reward_amount"

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(I)V

    .line 115
    const-string v7, "reward_name"

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Ljava/lang/String;)V

    .line 119
    :cond_119
    const-string v1, "cover_image"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_13e

    .line 121
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/d/k;-><init>()V

    .line 122
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(I)V

    .line 124
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(I)V

    .line 125
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 128
    :cond_13e
    const-string v1, "image"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_17b

    .line 130
    move v4, v2

    :goto_147
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_17b

    .line 131
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/d/k;-><init>()V

    .line 132
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 133
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(I)V

    .line 135
    invoke-virtual {v8, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(I)V

    .line 136
    const-string v9, "duration"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(D)V

    .line 137
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_147

    .line 140
    :cond_17b
    const-string p2, "show_url"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 141
    if-eqz p2, :cond_198

    .line 142
    move v1, v2

    :goto_184
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_198

    .line 143
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ab()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_184

    .line 146
    :cond_198
    const-string p2, "click_url"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 147
    if-eqz p2, :cond_1b5

    .line 148
    move v1, v2

    :goto_1a1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1b5

    .line 149
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ac()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a1

    .line 153
    :cond_1b5
    const-string p2, "click_area"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 154
    if-eqz p2, :cond_1f5

    .line 155
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/e;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/d/e;-><init>()V

    .line 156
    const-string v4, "click_upper_content_area"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/core/d/e;->a:Z

    .line 157
    const-string v4, "click_upper_non_content_area"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/core/d/e;->b:Z

    .line 158
    const-string v4, "click_lower_content_area"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/core/d/e;->c:Z

    .line 159
    const-string v4, "click_lower_non_content_area"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/core/d/e;->d:Z

    .line 160
    const-string v4, "click_button_area"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/core/d/e;->e:Z

    .line 161
    const-string v4, "click_video_area"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, v1, Lcom/bytedance/sdk/openadsdk/core/d/e;->f:Z

    .line 162
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/d/e;)V

    .line 166
    :cond_1f5
    const-string p2, "adslot"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 167
    if-eqz p2, :cond_205

    .line 168
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/c;->c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 169
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 170
    goto :goto_208

    .line 171
    :cond_205
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 175
    :goto_208
    const-string p1, "intercept_flag"

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->j(I)V

    .line 177
    const-string p1, "phone_num"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->h(Ljava/lang/String;)V

    .line 178
    const-string p1, "title"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i(Ljava/lang/String;)V

    .line 179
    const-string p1, "description"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->j(Ljava/lang/String;)V

    .line 180
    const-string p1, "button_text"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->k(Ljava/lang/String;)V

    .line 181
    const-string p1, "ad_logo"

    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->h(I)V

    .line 182
    const-string p1, "ext"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->m(Ljava/lang/String;)V

    .line 183
    const-string p1, "image_mode"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->p(I)V

    .line 184
    const-string p1, "app"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 185
    const-string p2, "deep_link"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 186
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/c;->e(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/d/b;)V

    .line 187
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/c;->g(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/d/g;)V

    .line 188
    const-string p1, "filter_words"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 189
    if-eqz p1, :cond_28f

    .line 190
    move p2, v2

    :goto_273
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_28f

    .line 191
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 192
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_28c

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v4

    if-eqz v4, :cond_28c

    .line 194
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    .line 190
    :cond_28c
    add-int/lit8 p2, p2, 0x1

    goto :goto_273

    .line 199
    :cond_28f
    const-string p1, "personalization_prompts"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 200
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->parseFromJson(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    move-result-object p1

    .line 201
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;)V

    .line 203
    const-string p1, "count_down"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->q(I)V

    .line 204
    const-string p1, "expiration_time"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(J)V

    .line 205
    const-string p1, "video"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 206
    if-eqz p1, :cond_2bd

    .line 207
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/c;->h(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/d/t;)V

    .line 210
    :cond_2bd
    const-string p1, "download_conf"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 211
    if-eqz p1, :cond_2cc

    .line 212
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/c;->f(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 216
    :cond_2cc
    const-string p1, "if_both_open"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->r(I)V

    .line 217
    const-string p1, "if_double_deeplink"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->s(I)V

    .line 220
    const-string p1, "app_manage"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 221
    if-eqz p1, :cond_2f4

    .line 222
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/c;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/d/c;)V

    .line 223
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d(Ljava/lang/String;)V

    .line 226
    :cond_2f4
    const-string p1, "media_ext"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 227
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/c;->i(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Ljava/util/Map;)V

    .line 228
    const-string p1, "landing_page_type"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->t(I)V

    .line 229
    const-string p1, "tpl_info"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 230
    if-eqz p1, :cond_357

    .line 231
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;-><init>()V

    .line 232
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->b(Ljava/lang/String;)V

    .line 233
    const-string v1, "md5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->c(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->d(Ljava/lang/String;)V

    .line 235
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->e(Ljava/lang/String;)V

    .line 236
    const-string v1, "diff_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->f(Ljava/lang/String;)V

    .line 237
    const-string v1, "dynamic_creative"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->g(Ljava/lang/String;)V

    .line 238
    const-string v1, "version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->a(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/d/l$a;)V

    .line 241
    :cond_357
    const-string p1, "middle_tpl_info"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 242
    if-eqz p1, :cond_3a6

    .line 243
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;-><init>()V

    .line 244
    const-string v1, "middle_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->b(Ljava/lang/String;)V

    .line 245
    const-string v1, "middle_md5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->c(Ljava/lang/String;)V

    .line 246
    const-string v1, "middle_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->d(Ljava/lang/String;)V

    .line 247
    const-string v1, "middle_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->e(Ljava/lang/String;)V

    .line 248
    const-string v1, "middle_diff_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->f(Ljava/lang/String;)V

    .line 249
    const-string v1, "middle_dynamic_creative"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->g(Ljava/lang/String;)V

    .line 250
    const-string v1, "middle_version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->a(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/l$a;)V

    .line 254
    :cond_3a6
    const-string p1, "if_block_lp"

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d(I)V

    .line 255
    const-string p1, "cache_sort"

    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->l(I)V

    .line 256
    const-string p1, "if_sp_cache"

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->m(I)V

    .line 257
    return-object v0
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 16

    .line 261
    if-nez p0, :cond_4

    .line 262
    const/4 p0, 0x0

    return-object p0

    .line 264
    :cond_4
    const-string v0, "mCodeId"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v2, "mImgAcceptedWidth"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 266
    const-string v4, "mImgAcceptedHeight"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 267
    const-string v5, "mExpressViewAcceptedWidth"

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 268
    const-string v8, "mExpressViewAcceptedHeight"

    invoke-virtual {p0, v8, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 269
    const/4 v7, 0x6

    const-string v8, "mAdCount"

    invoke-virtual {p0, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 270
    const/4 v8, 0x1

    const-string v9, "mSupportDeepLink"

    invoke-virtual {p0, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 271
    const-string v9, "mRewardName"

    invoke-virtual {p0, v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 272
    const-string v10, "mRewardAmount"

    invoke-virtual {p0, v10, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 273
    const-string v11, "mMediaExtra"

    invoke-virtual {p0, v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 274
    const-string v12, "mUserID"

    invoke-virtual {p0, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    const/4 v12, 0x2

    const-string v13, "mOrientation"

    invoke-virtual {p0, v13, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 276
    const-string v13, "mNativeAdType"

    invoke-virtual {p0, v13, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 277
    const-string v14, "mIsAutoPlay"

    invoke-virtual {p0, v14, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 278
    new-instance v3, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 279
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0, v2, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0, v5, v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v9}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0, v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0, v13}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p0

    .line 291
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p0

    .line 292
    return-object p0
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;
    .registers 6

    .line 296
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 297
    return-object v0

    .line 301
    :cond_4
    :try_start_4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>()V

    .line 302
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setId(Ljava/lang/String;)V

    .line 303
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setName(Ljava/lang/String;)V

    .line 304
    const-string v2, "is_selected"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setIsSelected(Z)V

    .line 305
    const-string v2, "options"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 307
    if-eqz p0, :cond_4f

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4f

    .line 308
    const/4 v2, 0x0

    :goto_33
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 309
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 310
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v3

    .line 312
    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 313
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/FilterWord;->addOption(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_50

    .line 308
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 318
    :cond_4f
    return-object v1

    .line 319
    :catchall_50
    move-exception p0

    .line 322
    return-object v0
.end method

.method private static e(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/b;
    .registers 4

    .line 327
    if-nez p0, :cond_4

    .line 328
    const/4 p0, 0x0

    return-object p0

    .line 330
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;-><init>()V

    .line 331
    const-string v1, "app_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c(Ljava/lang/String;)V

    .line 332
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d(Ljava/lang/String;)V

    .line 333
    const-string v1, "download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b(Ljava/lang/String;)V

    .line 334
    const/4 v1, 0x4

    const-string v2, "score"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a(I)V

    .line 335
    const/16 v1, 0x1ad6

    const-string v2, "comment_num"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b(I)V

    .line 336
    const/4 v1, 0x0

    const-string v2, "app_size"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c(I)V

    .line 337
    const-string v1, "quick_app_url"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a(Ljava/lang/String;)V

    .line 338
    return-object v0
.end method

.method private static f(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/h;
    .registers 6

    .line 343
    if-nez p0, :cond_4

    .line 344
    const/4 p0, 0x0

    return-object p0

    .line 347
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;-><init>()V

    .line 348
    const-string v1, "auto_open"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c(I)V

    .line 349
    const-string v1, "download_mode"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d(I)V

    .line 350
    const-string v1, "auto_control"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->e(I)V

    .line 351
    const-string v1, "auto_control_choose"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->i(I)V

    .line 352
    const/16 v1, 0x12c

    const-string v4, "auto_control_time"

    invoke-virtual {p0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->j(I)V

    .line 353
    const/4 v1, -0x1

    const-string v4, "download_type"

    invoke-virtual {p0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->b(I)V

    .line 354
    const-string v1, "if_suspend_download"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->a(I)V

    .line 356
    const-string v1, "if_send_click"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->k(I)V

    .line 358
    const-string v1, "dl_popup"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->f(I)V

    .line 359
    const-string v1, "market_popup"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->g(I)V

    .line 360
    const-string v1, "if_pop_lp"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->h(I)V

    .line 361
    return-object v0
.end method

.method private static g(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/g;
    .registers 3

    .line 393
    if-nez p0, :cond_4

    .line 394
    const/4 p0, 0x0

    return-object p0

    .line 396
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;-><init>()V

    .line 397
    const-string v1, "deeplink_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a(Ljava/lang/String;)V

    .line 398
    const-string v1, "fallback_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b(Ljava/lang/String;)V

    .line 399
    const-string v1, "fallback_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a(I)V

    .line 400
    return-object v0
.end method

.method private static h(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/t;
    .registers 4

    .line 405
    if-nez p0, :cond_4

    .line 406
    const/4 p0, 0x0

    return-object p0

    .line 408
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/t;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;-><init>()V

    .line 409
    const-string v1, "cover_height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->b(I)V

    .line 410
    const-string v1, "cover_width"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->c(I)V

    .line 411
    const-string v1, "resolution"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->a(Ljava/lang/String;)V

    .line 412
    const-string v1, "size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/t;->a(J)V

    .line 413
    const-string v1, "video_duration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/t;->a(D)V

    .line 414
    const-string v1, "cover_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->b(Ljava/lang/String;)V

    .line 415
    const-string v1, "video_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->c(Ljava/lang/String;)V

    .line 416
    const-string v1, "endcard"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->d(Ljava/lang/String;)V

    .line 417
    const-string v1, "playable_download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->e(Ljava/lang/String;)V

    .line 418
    const-string v1, "file_hash"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->f(Ljava/lang/String;)V

    .line 419
    const-string v1, "if_playable_loading_show"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->d(I)V

    .line 420
    const-string v1, "remove_loading_page_type"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->e(I)V

    .line 421
    const-string v1, "fallback_endcard_judge"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->a(I)V

    .line 422
    return-object v0
.end method

.method private static i(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 426
    if-nez p0, :cond_4

    .line 427
    const/4 p0, 0x0

    return-object p0

    .line 429
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 430
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 431
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 432
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 433
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 434
    goto :goto_d

    .line 436
    :cond_20
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 437
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    goto :goto_d

    .line 439
    :cond_28
    return-object v0
.end method
