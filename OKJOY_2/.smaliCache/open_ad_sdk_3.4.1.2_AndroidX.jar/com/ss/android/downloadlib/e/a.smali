.class public Lcom/ss/android/downloadlib/e/a;
.super Ljava/lang/Object;
.source "AdEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/e/a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/e/a$1;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/ss/android/downloadlib/e/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/e/a;
    .registers 1

    .line 56
    invoke-static {}, Lcom/ss/android/downloadlib/e/a$a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/ss/android/downloadad/a/b/a;)Lorg/json/JSONObject;
    .registers 5

    .line 439
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 441
    :try_start_5
    invoke-interface {p1}, Lcom/ss/android/downloadad/a/b/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 442
    invoke-interface {p1}, Lcom/ss/android/downloadad/a/b/a;->p()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 443
    const-string v1, "download_url"

    invoke-interface {p1}, Lcom/ss/android/downloadad/a/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string v1, "package_name"

    invoke-interface {p1}, Lcom/ss/android/downloadad/a/b/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string v1, "android_int"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string v1, "rom_name"

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    const-string v1, "rom_version"

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    const-string v1, "ttdownloader"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    const-string v1, "funnel_type"

    invoke-interface {p1}, Lcom/ss/android/downloadad/a/b/a;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    invoke-interface {p1}, Lcom/ss/android/downloadad/a/b/a;->h()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_63

    .line 451
    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/h/f;->b(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)Lorg/json/JSONObject;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_63} :catch_64

    .line 454
    :cond_63
    goto :goto_65

    .line 453
    :catch_64
    move-exception p1

    .line 455
    :goto_65
    return-object v0
.end method

.method private a(Lcom/ss/android/a/a/c/d;)V
    .registers 3

    .line 459
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->b()Lcom/ss/android/a/a/a/f;

    move-result-object v0

    if-nez v0, :cond_7

    .line 460
    return-void

    .line 462
    :cond_7
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 463
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->b()Lcom/ss/android/a/a/a/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ss/android/a/a/a/f;->a(Lcom/ss/android/a/a/c/d;)V

    goto :goto_1c

    .line 465
    :cond_15
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->b()Lcom/ss/android/a/a/a/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ss/android/a/a/a/f;->b(Lcom/ss/android/a/a/c/d;)V

    .line 467
    :goto_1c
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JILcom/ss/android/downloadad/a/b/a;)V
    .registers 13

    .line 413
    if-eqz p7, :cond_aa

    instance-of v0, p7, Lcom/ss/android/downloadlib/addownload/b/e;

    if-eqz v0, :cond_11

    move-object v0, p7

    check-cast v0, Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/e;->w()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_aa

    .line 418
    :cond_11
    :try_start_11
    new-instance v0, Lcom/ss/android/a/a/c/d$a;

    invoke-direct {v0}, Lcom/ss/android/a/a/c/d$a;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 419
    invoke-interface {p7}, Lcom/ss/android/downloadad/a/b/a;->j()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string p1, "embeded_ad"

    const/4 v4, 0x2

    aput-object p1, v1, v4

    invoke-static {v1}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/a/a/c/d$a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/c/d$a;

    move-result-object p1

    .line 420
    invoke-virtual {p1, p2}, Lcom/ss/android/a/a/c/d$a;->b(Ljava/lang/String;)Lcom/ss/android/a/a/c/d$a;

    move-result-object p1

    .line 421
    invoke-interface {p7}, Lcom/ss/android/downloadad/a/b/a;->c()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/a/a/c/d$a;->b(Z)Lcom/ss/android/a/a/c/d$a;

    move-result-object p1

    .line 422
    invoke-interface {p7}, Lcom/ss/android/downloadad/a/b/a;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/a/a/c/d$a;->a(J)Lcom/ss/android/a/a/c/d$a;

    move-result-object p1

    .line 423
    invoke-interface {p7}, Lcom/ss/android/downloadad/a/b/a;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/a/a/c/d$a;->c(Ljava/lang/String;)Lcom/ss/android/a/a/c/d$a;

    move-result-object p1

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-lez p2, :cond_53

    goto :goto_57

    .line 424
    :cond_53
    invoke-interface {p7}, Lcom/ss/android/downloadad/a/b/a;->l()J

    move-result-wide p4

    :goto_57
    invoke-virtual {p1, p4, p5}, Lcom/ss/android/a/a/c/d$a;->b(J)Lcom/ss/android/a/a/c/d$a;

    move-result-object p1

    .line 425
    invoke-interface {p7}, Lcom/ss/android/downloadad/a/b/a;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/a/a/c/d$a;->d(Ljava/lang/String;)Lcom/ss/android/a/a/c/d$a;

    move-result-object p1

    .line 426
    invoke-interface {p7}, Lcom/ss/android/downloadad/a/b/a;->n()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/a/a/c/d$a;->a(Ljava/util/List;)Lcom/ss/android/a/a/c/d$a;

    move-result-object p1

    new-array p2, v4, [Lorg/json/JSONObject;

    .line 427
    invoke-direct {p0, p7}, Lcom/ss/android/downloadlib/e/a;->a(Lcom/ss/android/downloadad/a/b/a;)Lorg/json/JSONObject;

    move-result-object p4

    aput-object p4, p2, v2

    aput-object p3, p2, v3

    invoke-static {p2}, Lcom/ss/android/downloadlib/h/k;->a([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/a/a/c/d$a;->a(Lorg/json/JSONObject;)Lcom/ss/android/a/a/c/d$a;

    move-result-object p1

    .line 428
    invoke-interface {p7}, Lcom/ss/android/downloadad/a/b/a;->k()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/a/a/c/d$a;->b(Lorg/json/JSONObject;)Lcom/ss/android/a/a/c/d$a;

    move-result-object p1

    .line 429
    invoke-interface {p7}, Lcom/ss/android/downloadad/a/b/a;->o()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/a/a/c/d$a;->a(Ljava/lang/Object;)Lcom/ss/android/a/a/c/d$a;

    move-result-object p1

    if-lez p6, :cond_90

    goto :goto_91

    :cond_90
    move p6, v4

    .line 430
    :goto_91
    invoke-virtual {p1, p6}, Lcom/ss/android/a/a/c/d$a;->a(I)Lcom/ss/android/a/a/c/d$a;

    move-result-object p1

    .line 431
    invoke-interface {p7}, Lcom/ss/android/downloadad/a/b/a;->m()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/a/a/c/d$a;->a(Z)Lcom/ss/android/a/a/c/d$a;

    move-result-object p1

    .line 432
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d$a;->a()Lcom/ss/android/a/a/c/d;

    move-result-object p1

    .line 418
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/e/a;->a(Lcom/ss/android/a/a/c/d;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_a4} :catch_a5

    .line 435
    goto :goto_a9

    .line 433
    :catch_a5
    move-exception p1

    .line 434
    invoke-static {p1}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/lang/Throwable;)V

    .line 436
    :goto_a9
    return-void

    .line 414
    :cond_aa
    :goto_aa
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 415
    return-void
.end method


# virtual methods
.method public a(JI)V
    .registers 12

    .line 67
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/e;->w()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 69
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 70
    return-void

    .line 72
    :cond_12
    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/b;->l()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 73
    return-void

    .line 75
    :cond_1b
    const/4 v1, 0x1

    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    if-ne p3, v1, :cond_25

    invoke-interface {v2}, Lcom/ss/android/a/a/b/b;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    :cond_25
    invoke-interface {v2}, Lcom/ss/android/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 76
    :goto_29
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v6}, Lcom/ss/android/a/a/b/b;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "click"

    aput-object v5, v4, v1

    invoke-static {v4}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 79
    :try_start_42
    const-string v7, "download_click_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v6, v7, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string p3, "permission_notification"

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/d;->a()Z

    move-result v7

    if-eqz v7, :cond_55

    move v7, v1

    goto :goto_56

    :cond_55
    move v7, v3

    :goto_56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p3, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string p3, "network_available"

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/ss/android/socialbase/downloader/i/e;->c(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6a

    goto :goto_6b

    :cond_6a
    move v1, v3

    :goto_6b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, p3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_72} :catch_73

    .line 84
    goto :goto_77

    .line 82
    :catch_73
    move-exception p3

    .line 83
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 85
    :goto_77
    invoke-virtual {p0, v2, v4, v6, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 87
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_91

    .line 89
    iget-object p3, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    if-eqz p3, :cond_91

    .line 90
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p3

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/ss/android/downloadlib/e/c;->a(JLjava/lang/String;)V

    .line 93
    :cond_91
    return-void
.end method

.method public a(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 14

    .line 99
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object v8

    .line 100
    invoke-virtual {v8}, Lcom/ss/android/downloadlib/addownload/b/e;->w()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 101
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 102
    return-void

    .line 104
    :cond_12
    const/4 p1, 0x0

    .line 105
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 107
    const/4 v7, 0x1

    .line 108
    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    packed-switch p3, :pswitch_data_a4

    move-object v3, p1

    goto/16 :goto_9c

    .line 122
    :pswitch_22
    if-eqz p4, :cond_30

    .line 124
    :try_start_24
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {v4, p1}, Lcom/ss/android/downloadlib/h/f;->a(Lorg/json/JSONObject;I)V

    .line 125
    invoke-static {v4, p4}, Lcom/ss/android/downloadlib/a;->b(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lorg/json/JSONObject;
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2f

    .line 128
    goto :goto_30

    .line 126
    :catchall_2f
    move-exception p1

    .line 130
    :cond_30
    :goto_30
    new-array p1, v1, [Ljava/lang/String;

    iget-object p3, v8, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {p3}, Lcom/ss/android/a/a/b/b;->h()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "click_install"

    aput-object p3, p1, p2

    invoke-static {p1}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    move-object v3, p1

    goto :goto_9c

    .line 118
    :pswitch_44
    new-array p1, v1, [Ljava/lang/String;

    iget-object p3, v8, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {p3}, Lcom/ss/android/a/a/b/b;->g()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "click_continue"

    aput-object p3, p1, p2

    invoke-static {p1}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p4, v4}, Lcom/ss/android/downloadlib/h/f;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)V

    .line 120
    move-object v3, p1

    goto :goto_9c

    .line 114
    :pswitch_5b
    new-array p1, v1, [Ljava/lang/String;

    iget-object p3, v8, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {p3}, Lcom/ss/android/a/a/b/b;->f()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "click_pause"

    aput-object p3, p1, p2

    invoke-static {p1}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {p4, v4}, Lcom/ss/android/downloadlib/h/f;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)V

    .line 116
    move-object v3, p1

    goto :goto_9c

    .line 110
    :pswitch_72
    new-array p1, v1, [Ljava/lang/String;

    iget-object p3, v8, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {p3}, Lcom/ss/android/a/a/b/b;->e()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "click_start"

    aput-object p3, p1, p2

    invoke-static {p1}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p4, v4}, Lcom/ss/android/downloadlib/h/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)V

    .line 112
    move-object v3, p1

    goto :goto_9c

    .line 133
    :pswitch_89
    new-array p1, v1, [Ljava/lang/String;

    iget-object p3, v8, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {p3}, Lcom/ss/android/a/a/b/b;->i()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "storage_deny"

    aput-object p3, p1, p2

    invoke-static {p1}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 136
    :goto_9c
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JILcom/ss/android/downloadad/a/b/a;)V

    .line 137
    return-void

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_89
        :pswitch_72
        :pswitch_5b
        :pswitch_44
        :pswitch_22
    .end packed-switch
.end method

.method public a(JLcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 6

    .line 177
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object p1

    .line 178
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 180
    :try_start_d
    const-string v0, "download_time"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    if-eqz p3, :cond_2f

    .line 182
    const-string v0, "fail_status"

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v0, "fail_msg"

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_2f} :catch_30

    .line 187
    :cond_2f
    goto :goto_34

    .line 185
    :catch_30
    move-exception p3

    .line 186
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 188
    :goto_34
    const-string p3, "download_failed"

    invoke-virtual {p0, p3, p2, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 189
    return-void
.end method

.method public a(JLcom/ss/android/socialbase/downloader/exception/BaseException;Lorg/json/JSONObject;)V
    .registers 7

    .line 202
    if-nez p4, :cond_7

    .line 203
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 206
    :cond_7
    if-eqz p3, :cond_25

    .line 207
    :try_start_9
    const-string v0, "error_code"

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v0, "ttdownloader_message"

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, v0, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_1f} :catch_20

    goto :goto_25

    .line 210
    :catch_20
    move-exception p3

    .line 211
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_26

    .line 212
    :cond_25
    :goto_25
    nop

    .line 213
    :goto_26
    const-string p3, "download_sdk_error"

    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 214
    return-void
.end method

.method public a(JZI)V
    .registers 6

    .line 151
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/b/e;->w()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 153
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 154
    return-void

    .line 156
    :cond_12
    iget-object p2, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->B()Lcom/ss/android/a/a/c/f;

    move-result-object p2

    if-nez p2, :cond_1b

    .line 157
    return-void

    .line 159
    :cond_1b
    iget-object p2, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    instance-of p2, p2, Lcom/ss/android/downloadad/a/a/c;

    if-eqz p2, :cond_29

    .line 160
    iget-object p2, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    check-cast p2, Lcom/ss/android/downloadad/a/a/c;

    .line 161
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/ss/android/downloadad/a/a/c;->a(I)Lcom/ss/android/downloadad/a/a/c;

    .line 163
    :cond_29
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 165
    :try_start_2e
    const-string v0, "download_click_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, v0, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_37} :catch_38

    .line 168
    goto :goto_3c

    .line 166
    :catch_38
    move-exception p4

    .line 167
    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    .line 169
    :goto_3c
    if-eqz p3, :cond_41

    const-string p3, "deeplink_quickapp_success"

    goto :goto_43

    :cond_41
    const-string p3, "deeplink_quickapp_failed"

    .line 170
    :goto_43
    invoke-virtual {p0, p3, p2, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 171
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 6

    .line 217
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 218
    if-nez v0, :cond_b

    .line 219
    return-void

    .line 222
    :cond_b
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 223
    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/h/f;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/downloadad/a/b/b;->a(J)V

    .line 225
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->j()Ljava/lang/String;

    move-result-object p1

    const-string v2, "download_resume"

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 226
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadad/a/b/b;)V
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2b

    .line 229
    goto :goto_2f

    .line 227
    :catchall_2b
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    :goto_2f
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 12

    .line 239
    if-nez p1, :cond_3

    .line 240
    return-void

    .line 242
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object p2

    .line 243
    if-nez p2, :cond_11

    .line 244
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 245
    return-void

    .line 247
    :cond_11
    iget-object v0, p2, Lcom/ss/android/downloadad/a/b/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 248
    return-void

    .line 250
    :cond_1a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 252
    :try_start_1f
    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lorg/json/JSONObject;

    .line 253
    const-string v1, "fail_status"

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->D()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v1, "fail_msg"

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v1, "download_failed_times"

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->w()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5b

    .line 257
    const-string v1, "download_percent"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 259
    :cond_5b
    const-string v1, "download_status"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 261
    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->G()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_7b

    .line 262
    const-string p1, "time_from_start_download"

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->G()J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-virtual {v0, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 264
    :cond_7b
    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->A()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_8d

    .line 265
    const-string p1, "time_from_download_resume"

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->A()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 267
    :cond_8d
    const-string p1, "is_update_download"

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->U()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_99

    move v1, v2

    goto :goto_9a

    :cond_99
    move v1, v3

    :goto_9a
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    const-string p1, "can_show_notification"

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/d;->a()Z

    move-result v1

    if-eqz v1, :cond_a7

    move v1, v2

    goto :goto_a8

    :cond_a7
    move v1, v3

    :goto_a8
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    const-string p1, "has_send_download_failed_finally"

    iget-object v1, p2, Lcom/ss/android/downloadad/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_b6

    goto :goto_b7

    :cond_b6
    move v2, v3

    :goto_b7
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_ba
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_ba} :catch_bb

    .line 273
    goto :goto_bf

    .line 271
    :catch_bb
    move-exception p1

    .line 272
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 274
    :goto_bf
    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->j()Ljava/lang/String;

    move-result-object p1

    const-string v1, "download_cancel"

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 275
    return-void
.end method

.method public a(Ljava/lang/String;ILcom/ss/android/downloadlib/addownload/b/e;)V
    .registers 12

    .line 144
    int-to-long v4, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JILcom/ss/android/downloadad/a/b/a;)V

    .line 145
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 5

    .line 386
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_e

    .line 388
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_19

    .line 390
    :cond_e
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object p2

    .line 391
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 393
    :goto_19
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V
    .registers 12

    .line 378
    new-instance v6, Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v1

    move-object v0, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/addownload/b/e;-><init>(JLcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    invoke-virtual {p0, p1, v6}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 379
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 4

    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 397
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;)V
    .registers 4

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V

    .line 349
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 5

    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 405
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 13

    .line 408
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JILcom/ss/android/downloadad/a/b/a;)V

    .line 409
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .registers 6

    .line 352
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_e

    .line 354
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V

    goto :goto_23

    .line 356
    :cond_e
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object p3

    .line 357
    invoke-virtual {p3}, Lcom/ss/android/downloadlib/addownload/b/e;->w()Z

    move-result p4

    if-eqz p4, :cond_20

    .line 358
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    goto :goto_23

    .line 360
    :cond_20
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/b/e;)V

    .line 363
    :goto_23
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 5

    .line 400
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 401
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V
    .registers 6

    .line 372
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 373
    const-string v1, "unity_label"

    invoke-static {v0, v1, p1}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    invoke-static {v0, p2}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "embeded_ad"

    const-string v0, "ttdownloader_unity"

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 375
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/b/e;)V
    .registers 6

    .line 366
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 367
    const-string v1, "unity_label"

    invoke-static {v0, v1, p1}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    invoke-static {v0, p2}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "embeded_ad"

    const-string v0, "ttdownloader_unity"

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 369
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V
    .registers 5

    .line 235
    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_finish"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 236
    return-void
.end method

.method public b(JI)V
    .registers 5

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/downloadlib/e/a;->a(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 141
    return-void
.end method

.method public b(JLcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 5

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/downloadlib/e/a;->a(JLcom/ss/android/socialbase/downloader/exception/BaseException;Lorg/json/JSONObject;)V

    .line 196
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 9

    .line 278
    if-nez p1, :cond_3

    .line 279
    return-void

    .line 281
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 282
    if-nez v0, :cond_11

    .line 283
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 284
    return-void

    .line 286
    :cond_11
    iget-object v1, v0, Lcom/ss/android/downloadad/a/b/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 287
    return-void

    .line 289
    :cond_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 291
    :try_start_1f
    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/h/f;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)V

    .line 292
    invoke-static {v1, p1}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lorg/json/JSONObject;

    .line 293
    if-eqz p2, :cond_4b

    .line 294
    const-string v2, "fail_status"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v2, "fail_msg"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/b/b;->d(I)V

    .line 297
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ss/android/downloadad/a/b/b;->a(Ljava/lang/String;)V

    .line 299
    :cond_4b
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->x()V

    .line 300
    const-string p2, "download_failed_times"

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->w()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 301
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_71

    .line 302
    const-string p2, "download_percent"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 304
    :cond_71
    const-string p1, "has_send_download_failed_finally"

    iget-object p2, v0, Lcom/ss/android/downloadad/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p2, :cond_7f

    move p2, v2

    goto :goto_80

    :cond_7f
    move p2, v3

    :goto_80
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 305
    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/h/f;->a(Lcom/ss/android/downloadad/a/b/b;Lorg/json/JSONObject;)V

    .line 306
    const-string p1, "is_update_download"

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->U()Z

    move-result p2

    if-eqz p2, :cond_8f

    goto :goto_90

    :cond_8f
    move v2, v3

    :goto_90
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_93} :catch_94

    .line 309
    goto :goto_98

    .line 307
    :catch_94
    move-exception p1

    .line 308
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 310
    :goto_98
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->j()Ljava/lang/String;

    move-result-object p1

    const-string p2, "download_failed"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 311
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 312
    return-void
.end method
