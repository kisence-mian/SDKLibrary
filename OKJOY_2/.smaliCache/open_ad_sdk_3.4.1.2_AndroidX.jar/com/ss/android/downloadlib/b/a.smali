.class public Lcom/ss/android/downloadlib/b/a;
.super Ljava/lang/Object;
.source "AdAppLinkUtils.java"


# direct methods
.method public static a(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 7

    .line 107
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, p0}, Lcom/ss/android/downloadlib/h/f;->a(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)Lorg/json/JSONObject;

    move-result-object v1

    .line 111
    const-string v2, "applink_source"

    const-string v3, "notify_click_by_sdk"

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v2

    const-string v3, "applink_click"

    invoke-virtual {v2, v3, v1, p0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 116
    invoke-static {v0, p0}, Lcom/ss/android/downloadlib/h/h;->b(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/b/g;->a()I

    move-result v3

    const-string v4, "notify_by_url"

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3f

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 119
    invoke-static {v4, v2, v1, p0}, Lcom/ss/android/downloadlib/b/a;->b(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/g;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 121
    :cond_33
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/ss/android/downloadlib/h/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v2

    .line 124
    :cond_3f
    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/b/g;->a()I

    move-result v0

    const-string v3, "notify_by_package"

    packed-switch v0, :pswitch_data_5a

    .line 135
    :pswitch_48
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    goto :goto_58

    .line 132
    :pswitch_4c
    invoke-static {v3, v2, v1, p0}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/g;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 133
    goto :goto_58

    .line 126
    :pswitch_50
    invoke-static {v3, v1, p0}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 127
    goto :goto_58

    .line 129
    :pswitch_54
    invoke-static {v4, v1, p0}, Lcom/ss/android/downloadlib/b/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 130
    nop

    .line 138
    :goto_58
    return-void

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_54
        :pswitch_48
        :pswitch_50
        :pswitch_4c
    .end packed-switch
.end method

.method public static a(Lcom/ss/android/downloadlib/addownload/b/g;Lcom/ss/android/downloadlib/addownload/b/e;)V
    .registers 6

    .line 370
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/b/g;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "open_market"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 372
    const-string v2, "ttdownloader_type"

    const-string v3, "backup"

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/b/g;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_44

    goto :goto_42

    .line 378
    :pswitch_27
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/b/g;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "error_code"

    invoke-static {v1, v0, p0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p0

    const-string v0, "market_open_failed"

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 381
    goto :goto_42

    .line 375
    :pswitch_3e
    invoke-static {v0, v1, p1}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/b/e;)V

    .line 376
    nop

    .line 385
    :goto_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x5
        :pswitch_3e
        :pswitch_27
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/g;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 5

    .line 306
    const-string v0, "applink_source"

    invoke-static {p2, v0, p0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/b/g;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "error_code"

    invoke-static {p2, p1, p0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p0

    const-string p1, "deeplink_app_open_fail"

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 309
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 12

    .line 234
    const-string v0, "applink_source"

    invoke-static {p1, v0, p0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    const-string v1, "deeplink_app_open"

    invoke-virtual {v0, v1, p1, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_88

    :cond_16
    goto :goto_3f

    :sswitch_17
    const-string v0, "dialog_by_package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    goto :goto_40

    :sswitch_21
    const-string v0, "by_package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    goto :goto_40

    :sswitch_2b
    const-string v0, "auto_by_package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_40

    :sswitch_35
    const-string v0, "notify_by_package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_40

    :goto_3f
    const/4 v0, -0x1

    :goto_40
    packed-switch v0, :pswitch_data_9a

    goto :goto_87

    .line 240
    :pswitch_44
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    .line 241
    const-string v2, "download_sdk_optimize_mode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_6a

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "check_applink_result_opt"

    invoke-static {p1, v0, p0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Lcom/ss/android/downloadlib/b/e;->a()Lcom/ss/android/downloadlib/b/e;

    move-result-object p0

    invoke-interface {p2}, Lcom/ss/android/downloadad/a/b/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/b/a$1;

    invoke-direct {v1, p1, p2}, Lcom/ss/android/downloadlib/b/a$1;-><init>(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/downloadlib/b/e;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/b/d;)V

    .line 256
    goto :goto_87

    .line 260
    :cond_6a
    :pswitch_6a
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->c()Lcom/ss/android/a/a/a/c;

    move-result-object v2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v3

    .line 261
    invoke-interface {p2}, Lcom/ss/android/downloadad/a/b/a;->t()Lcom/ss/android/a/a/b/c;

    move-result-object v4

    invoke-interface {p2}, Lcom/ss/android/downloadad/a/b/a;->v()Lcom/ss/android/a/a/b/a;

    move-result-object v5

    invoke-interface {p2}, Lcom/ss/android/downloadad/a/b/a;->u()Lcom/ss/android/a/a/b/b;

    move-result-object v6

    .line 262
    invoke-interface {p2}, Lcom/ss/android/downloadad/a/b/a;->e()Ljava/lang/String;

    move-result-object v7

    .line 260
    move-object v8, p0

    invoke-interface/range {v2 .. v8}, Lcom/ss/android/a/a/a/c;->a(Landroid/content/Context;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    nop

    .line 267
    :goto_87
    return-void

    :sswitch_data_88
    .sparse-switch
        -0x4c6ad8ec -> :sswitch_35
        -0x1a50fb12 -> :sswitch_2b
        -0xb155fa2 -> :sswitch_21
        0x15f55bb5 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_44
        :pswitch_44
        :pswitch_6a
        :pswitch_6a
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/b/e;)V
    .registers 12

    .line 348
    if-eqz p1, :cond_3

    :goto_2
    goto :goto_9

    :cond_3
    :try_start_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_2

    .line 349
    :goto_9
    const-string v0, "applink_source"

    invoke-static {p1, v0, p0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    const-string v1, "market_open_success"

    invoke-virtual {v0, v1, p1, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 352
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->c()Lcom/ss/android/a/a/a/c;

    move-result-object v2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    iget-object v5, p2, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    iget-object v6, p2, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    iget-object p1, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 353
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object v7

    .line 352
    move-object v8, p0

    invoke-interface/range {v2 .. v8}, Lcom/ss/android/a/a/a/c;->a(Landroid/content/Context;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance p0, Lcom/ss/android/downloadad/a/b/b;

    iget-object p1, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    iget-object v0, p2, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    invoke-direct {p0, p1, v0, p2}, Lcom/ss/android/downloadad/a/b/b;-><init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 356
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/b/b;->e(I)V

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/downloadad/a/b/b;->f(J)V

    .line 358
    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/b/b;->h(I)V

    .line 359
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/b/b;->i(I)V

    .line 360
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/downloadad/a/b/b;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_53} :catch_54

    .line 363
    goto :goto_58

    .line 361
    :catch_54
    move-exception p0

    .line 362
    invoke-static {p0}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/lang/Throwable;)V

    .line 364
    :goto_58
    return-void
.end method

.method public static a(J)Z
    .registers 3

    .line 394
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static a(Lcom/ss/android/downloadlib/addownload/b/e;)Z
    .registers 10

    .line 42
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->x()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    .line 43
    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Lcom/ss/android/a/a/c/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, p0}, Lcom/ss/android/downloadlib/h/f;->a(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)Lorg/json/JSONObject;

    move-result-object v1

    .line 47
    const-string v2, "applink_source"

    const-string v3, "click_by_sdk"

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v2

    const-string v3, "applink_click"

    invoke-virtual {v2, v3, v1, p0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 52
    invoke-static {v0, p0}, Lcom/ss/android/downloadlib/h/h;->b(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/b/g;->a()I

    move-result v3

    const-string v4, "by_url"

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4b

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 55
    invoke-static {v4, v2, v1, p0}, Lcom/ss/android/downloadlib/b/a;->b(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/g;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 57
    :cond_3d
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/ss/android/downloadlib/h/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v2

    .line 60
    :cond_4b
    nop

    .line 61
    iget-wide v6, p0, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    invoke-static {v6, v7}, Lcom/ss/android/downloadlib/b/a;->a(J)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_7b

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "link_ad_click_event"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_7b

    .line 62
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    instance-of v0, v0, Lcom/ss/android/downloadad/a/a/c;

    if-eqz v0, :cond_70

    .line 63
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    check-cast v0, Lcom/ss/android/downloadad/a/a/c;

    .line 64
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/ss/android/downloadad/a/a/c;->a(I)Lcom/ss/android/downloadad/a/a/c;

    .line 66
    :cond_70
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-wide v7, p0, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    invoke-virtual {v0, v7, v8, v6}, Lcom/ss/android/downloadlib/e/a;->a(JI)V

    .line 67
    move v0, v3

    goto :goto_7c

    .line 71
    :cond_7b
    move v0, v6

    :goto_7c
    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/b/g;->a()I

    move-result v7

    const-string v8, "by_package"

    packed-switch v7, :pswitch_data_ce

    .line 85
    :pswitch_85
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 86
    move v3, v6

    goto :goto_9a

    .line 81
    :pswitch_8a
    invoke-static {v8, v2, v1, p0}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/g;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 82
    nop

    .line 83
    move v3, v6

    goto :goto_9a

    .line 73
    :pswitch_90
    invoke-static {v8, v1, p0}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 74
    nop

    .line 75
    goto :goto_9a

    .line 77
    :pswitch_95
    invoke-static {v4, v1, p0}, Lcom/ss/android/downloadlib/b/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 78
    nop

    .line 79
    nop

    .line 89
    :goto_9a
    if-eqz v3, :cond_cd

    .line 90
    if-nez v0, :cond_cd

    .line 92
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 93
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/ss/android/downloadlib/e/c;->b(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 94
    :cond_ba
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/e/c;->c()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 95
    :cond_c4
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    invoke-virtual {v0, v1, v2, v5}, Lcom/ss/android/downloadlib/e/a;->a(JI)V

    .line 99
    :cond_cd
    return v3

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_95
        :pswitch_85
        :pswitch_90
        :pswitch_8a
    .end packed-switch
.end method

.method public static a(Lcom/ss/android/downloadlib/addownload/b/e;I)Z
    .registers 8

    .line 321
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 323
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    const-string v2, "market_click_open"

    invoke-virtual {v1, v2, v0, p0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 324
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/ss/android/downloadlib/h/h;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v1

    .line 326
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/b/g;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "open_market"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/b/g;->a()I

    move-result v3

    packed-switch v3, :pswitch_data_5c

    .line 339
    return v4

    .line 334
    :pswitch_37
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/b/g;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "error_code"

    invoke-static {v0, v1, p1}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    const-string v1, "market_open_failed"

    invoke-virtual {p1, v1, v0, p0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 337
    return v4

    .line 329
    :pswitch_4e
    invoke-static {v2, v0, p0}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/b/e;)V

    .line 331
    :pswitch_51
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/ss/android/downloadlib/e/a;->a(JI)V

    .line 332
    return v5

    nop

    :pswitch_data_5c
    .packed-switch 0x5
        :pswitch_4e
        :pswitch_37
        :pswitch_51
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;)Z
    .registers 8

    .line 196
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->N()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/i;->b(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 197
    return v1

    .line 199
    :cond_c
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 200
    return v1

    .line 203
    :cond_1d
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 205
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 206
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/h/f;->a(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)Lorg/json/JSONObject;

    .line 208
    const-string v0, "applink_source"

    const-string v2, "auto_click"

    invoke-static {p0, v0, v2}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    const-string v2, "applink_click"

    invoke-virtual {v0, v2, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 211
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {p1, v0, v2}, Lcom/ss/android/downloadlib/h/h;->a(Lcom/ss/android/downloadad/a/b/b;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/g;->a()I

    move-result v2

    const-string v3, "auto_by_package"

    const/4 v4, 0x1

    const-string v5, "auto_by_url"

    packed-switch v2, :pswitch_data_6a

    .line 228
    return v1

    .line 222
    :pswitch_59
    invoke-static {v3, v0, p0, p1}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/g;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 223
    return v1

    .line 216
    :pswitch_5d
    invoke-static {v3, p0, p1}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 217
    return v4

    .line 225
    :pswitch_61
    invoke-static {v5, v0, p0, p1}, Lcom/ss/android/downloadlib/b/a;->b(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/g;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 226
    return v1

    .line 219
    :pswitch_65
    invoke-static {v5, p0, p1}, Lcom/ss/android/downloadlib/b/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 220
    return v4

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
    .end packed-switch
.end method

.method public static b(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 7

    .line 145
    if-nez p0, :cond_3

    .line 146
    return-void

    .line 148
    :cond_3
    const/4 v0, 0x0

    .line 149
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v2, "app_link_opt"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 150
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, p0}, Lcom/ss/android/downloadlib/h/f;->a(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)Lorg/json/JSONObject;

    move-result-object v1

    .line 155
    const-string v2, "applink_source"

    const-string v3, "dialog_click_by_sdk"

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v2

    const-string v3, "applink_click"

    invoke-virtual {v2, v3, v1, p0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 160
    invoke-static {v0, p0}, Lcom/ss/android/downloadlib/h/h;->b(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/b/g;->a()I

    move-result v3

    const/4 v4, 0x2

    const-string v5, "dialog_by_url"

    if-ne v3, v4, :cond_50

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 163
    invoke-static {v5, v2, v1, p0}, Lcom/ss/android/downloadlib/b/a;->b(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/g;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 165
    :cond_44
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/ss/android/downloadlib/h/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v2

    .line 168
    :cond_50
    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/b/g;->a()I

    move-result v0

    const-string v3, "dialog_by_package"

    packed-switch v0, :pswitch_data_6a

    .line 179
    :pswitch_59
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    goto :goto_69

    .line 176
    :pswitch_5d
    invoke-static {v3, v2, v1, p0}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/g;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 177
    goto :goto_69

    .line 170
    :pswitch_61
    invoke-static {v3, v1, p0}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 171
    goto :goto_69

    .line 173
    :pswitch_65
    invoke-static {v5, v1, p0}, Lcom/ss/android/downloadlib/b/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 174
    nop

    .line 189
    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_65
        :pswitch_59
        :pswitch_61
        :pswitch_5d
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/g;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 5

    .line 312
    const-string v0, "applink_source"

    invoke-static {p2, v0, p0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/b/g;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "error_code"

    invoke-static {p2, p1, p0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p0

    const-string p1, "deeplink_url_open_fail"

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 315
    return-void
.end method

.method public static b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 12

    .line 271
    const-string v0, "applink_source"

    invoke-static {p1, v0, p0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    const-string v1, "deeplink_url_open"

    invoke-virtual {v0, v1, p1, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_88

    :cond_16
    goto :goto_3f

    :sswitch_17
    const-string v0, "dialog_by_url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    goto :goto_40

    :sswitch_21
    const-string v0, "notify_by_url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_40

    :sswitch_2b
    const-string v0, "by_url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    goto :goto_40

    :sswitch_35
    const-string v0, "auto_by_url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_40

    :goto_3f
    const/4 v0, -0x1

    :goto_40
    packed-switch v0, :pswitch_data_9a

    goto :goto_87

    .line 277
    :pswitch_44
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    .line 278
    const-string v2, "download_sdk_optimize_mode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_6a

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "check_applink_result_opt"

    invoke-static {p1, v0, p0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    invoke-static {}, Lcom/ss/android/downloadlib/b/e;->a()Lcom/ss/android/downloadlib/b/e;

    move-result-object p0

    invoke-interface {p2}, Lcom/ss/android/downloadad/a/b/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/b/a$2;

    invoke-direct {v1, p1, p2}, Lcom/ss/android/downloadlib/b/a$2;-><init>(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/downloadlib/b/e;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/b/d;)V

    .line 292
    goto :goto_87

    .line 296
    :cond_6a
    :pswitch_6a
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->c()Lcom/ss/android/a/a/a/c;

    move-result-object v2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v3

    .line 297
    invoke-interface {p2}, Lcom/ss/android/downloadad/a/b/a;->t()Lcom/ss/android/a/a/b/c;

    move-result-object v4

    invoke-interface {p2}, Lcom/ss/android/downloadad/a/b/a;->v()Lcom/ss/android/a/a/b/a;

    move-result-object v5

    invoke-interface {p2}, Lcom/ss/android/downloadad/a/b/a;->u()Lcom/ss/android/a/a/b/b;

    move-result-object v6

    .line 298
    invoke-interface {p2}, Lcom/ss/android/downloadad/a/b/a;->e()Ljava/lang/String;

    move-result-object v7

    .line 296
    move-object v8, p0

    invoke-interface/range {v2 .. v8}, Lcom/ss/android/a/a/a/c;->a(Landroid/content/Context;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    nop

    .line 303
    :goto_87
    return-void

    :sswitch_data_88
    .sparse-switch
        -0x66a1d5e9 -> :sswitch_35
        -0x51ef0279 -> :sswitch_2b
        -0x7b8b0c3 -> :sswitch_21
        0x3174fc5e -> :sswitch_17
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_44
        :pswitch_44
        :pswitch_6a
        :pswitch_6a
    .end packed-switch
.end method
