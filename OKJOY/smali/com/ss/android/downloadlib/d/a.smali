.class public Lcom/ss/android/downloadlib/d/a;
.super Ljava/lang/Object;
.source "AdEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/d/a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/d/a$1;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ss/android/downloadlib/d/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/d/a;
    .registers 1

    .prologue
    .line 48
    invoke-static {}, Lcom/ss/android/downloadlib/d/a$a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/ss/android/a/a/b/c;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 329
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 331
    :try_start_5
    const-string v1, "download_url"

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v1, "package_name"

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v1, "android_int"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 334
    const-string v1, "rom_name"

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v1, "rom_version"

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->w()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ss/android/downloadlib/e/g;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_38

    .line 339
    :goto_37
    return-object v0

    .line 337
    :catch_38
    move-exception v1

    goto :goto_37
.end method

.method private a(Lcom/ss/android/downloadad/a/b/a;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 343
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 345
    :try_start_5
    const-string v1, "download_url"

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v1, "package_name"

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v1, "android_int"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 348
    const-string v1, "rom_name"

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v1, "rom_version"

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ss/android/downloadlib/e/g;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_38

    .line 353
    :goto_37
    return-object v0

    .line 351
    :catch_38
    move-exception v1

    goto :goto_37
.end method

.method private a(Lcom/ss/android/a/a/c/d;)V
    .registers 3

    .prologue
    .line 357
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->b()Lcom/ss/android/a/a/a/e;

    move-result-object v0

    if-nez v0, :cond_7

    .line 365
    :goto_6
    return-void

    .line 360
    :cond_7
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 361
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->b()Lcom/ss/android/a/a/a/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ss/android/a/a/a/e;->a(Lcom/ss/android/a/a/c/d;)V

    goto :goto_6

    .line 363
    :cond_15
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->b()Lcom/ss/android/a/a/a/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ss/android/a/a/a/e;->b(Lcom/ss/android/a/a/c/d;)V

    goto :goto_6
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JILcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V
    .registers 13

    .prologue
    .line 290
    :try_start_0
    new-instance v0, Lcom/ss/android/a/a/c/d$a;

    invoke-direct {v0}, Lcom/ss/android/a/a/c/d$a;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string v3, "embeded_ad"

    aput-object v3, v1, v2

    .line 291
    invoke-static {v1}, Lcom/ss/android/downloadlib/e/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 292
    invoke-virtual {v0, p2}, Lcom/ss/android/a/a/c/d$a;->b(Ljava/lang/String;)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 293
    invoke-interface {p7}, Lcom/ss/android/a/a/b/c;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->b(Z)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 294
    invoke-interface {p7}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/a/a/c/d$a;->a(J)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 295
    invoke-interface {p7}, Lcom/ss/android/a/a/b/c;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->c(Ljava/lang/String;)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 296
    invoke-virtual {v0, p4, p5}, Lcom/ss/android/a/a/c/d$a;->b(J)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 297
    invoke-interface {p8}, Lcom/ss/android/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->d(Ljava/lang/String;)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 298
    invoke-interface {p7}, Lcom/ss/android/a/a/b/c;->v()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->a(Ljava/util/List;)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    .line 299
    invoke-direct {p0, p7}, Lcom/ss/android/downloadlib/d/a;->a(Lcom/ss/android/a/a/b/c;)Lorg/json/JSONObject;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v1}, Lcom/ss/android/downloadlib/e/g;->a([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->a(Lorg/json/JSONObject;)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 300
    invoke-interface {p8}, Lcom/ss/android/a/a/b/b;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->a(Ljava/lang/Object;)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 301
    invoke-virtual {v0, p6}, Lcom/ss/android/a/a/c/d$a;->a(I)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 302
    invoke-interface {p8}, Lcom/ss/android/a/a/b/b;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->a(Z)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/ss/android/a/a/c/d$a;->a()Lcom/ss/android/a/a/c/d;

    move-result-object v0

    .line 290
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/d/a;->a(Lcom/ss/android/a/a/c/d;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_79

    .line 307
    :goto_78
    return-void

    .line 304
    :catch_79
    move-exception v0

    .line 305
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/Throwable;)V

    goto :goto_78
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V
    .registers 15

    .prologue
    .line 285
    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->e()J

    move-result-wide v4

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JILcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V

    .line 286
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 9

    .prologue
    .line 311
    :try_start_0
    new-instance v0, Lcom/ss/android/a/a/c/d$a;

    invoke-direct {v0}, Lcom/ss/android/a/a/c/d$a;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string v3, "embeded_ad"

    aput-object v3, v1, v2

    .line 312
    invoke-static {v1}, Lcom/ss/android/downloadlib/e/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 313
    invoke-virtual {v0, p2}, Lcom/ss/android/a/a/c/d$a;->b(Ljava/lang/String;)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 314
    invoke-virtual {p4}, Lcom/ss/android/downloadad/a/b/a;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->b(Z)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 315
    invoke-virtual {p4}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/a/a/c/d$a;->a(J)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 316
    invoke-virtual {p4}, Lcom/ss/android/downloadad/a/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->c(Ljava/lang/String;)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 317
    invoke-virtual {p4}, Lcom/ss/android/downloadad/a/b/a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/a/a/c/d$a;->b(J)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 318
    invoke-virtual {p4}, Lcom/ss/android/downloadad/a/b/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->d(Ljava/lang/String;)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    .line 319
    invoke-direct {p0, p4}, Lcom/ss/android/downloadlib/d/a;->a(Lcom/ss/android/downloadad/a/b/a;)Lorg/json/JSONObject;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v1}, Lcom/ss/android/downloadlib/e/g;->a([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->a(Lorg/json/JSONObject;)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    const/4 v1, 0x2

    .line 320
    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->a(I)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 321
    invoke-virtual {p4}, Lcom/ss/android/downloadad/a/b/a;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/d$a;->a(Z)Lcom/ss/android/a/a/c/d$a;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/ss/android/a/a/c/d$a;->a()Lcom/ss/android/a/a/c/d;

    move-result-object v0

    .line 311
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/d/a;->a(Lcom/ss/android/a/a/c/d;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    .line 326
    :goto_6d
    return-void

    .line 323
    :catch_6e
    move-exception v0

    .line 324
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/Throwable;)V

    goto :goto_6d
.end method


# virtual methods
.method public a(JI)V
    .registers 11

    .prologue
    const/4 v4, 0x1

    .line 59
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/a/b/c;->e(J)Lcom/ss/android/downloadlib/a/b/c$a;

    move-result-object v5

    .line 60
    invoke-virtual {v5}, Lcom/ss/android/downloadlib/a/b/c$a;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 61
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    .line 76
    :cond_12
    :goto_12
    return-void

    .line 64
    :cond_13
    iget-object v0, v5, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->l()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 67
    if-ne p3, v4, :cond_4e

    iget-object v0, v5, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 68
    :goto_23
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v5, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v3}, Lcom/ss/android/a/a/b/b;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "click"

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 71
    :try_start_3c
    const-string v0, "click_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_45} :catch_55

    .line 75
    :goto_45
    iget-object v4, v5, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v5, v5, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V

    goto :goto_12

    .line 67
    :cond_4e
    iget-object v0, v5, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    .line 72
    :catch_55
    move-exception v0

    .line 73
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_45
.end method

.method public a(JILcom/ss/android/socialbase/downloader/g/c;)V
    .registers 14

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 82
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/a/b/c;->e(J)Lcom/ss/android/downloadlib/a/b/c$a;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/b/c$a;->a()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 84
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    .line 118
    :goto_14
    return-void

    .line 87
    :cond_15
    const/4 v2, 0x0

    .line 88
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 91
    packed-switch p3, :pswitch_data_a4

    .line 117
    :goto_1e
    iget-object v1, v0, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->e()J

    move-result-wide v4

    iget-object v7, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v8, v0, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JILcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V

    goto :goto_14

    .line 93
    :pswitch_33
    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, v0, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/b;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "click_start"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/ss/android/downloadlib/e/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {p0, p4, v3}, Lcom/ss/android/downloadlib/d/a;->a(Lcom/ss/android/socialbase/downloader/g/c;Lorg/json/JSONObject;)V

    goto :goto_1e

    .line 97
    :pswitch_49
    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, v0, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/b;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "click_pause"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/ss/android/downloadlib/e/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    .line 100
    :pswitch_5c
    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, v0, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/b;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "click_continue"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/ss/android/downloadlib/e/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    .line 103
    :pswitch_6f
    if-eqz p4, :cond_7b

    .line 105
    :try_start_71
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-static {v3, v1}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;I)V

    .line 106
    invoke-static {v3, p4}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/c;)Lorg/json/JSONObject;
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_7b} :catch_a2

    .line 111
    :cond_7b
    :goto_7b
    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, v0, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/b;->h()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "click_install"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/ss/android/downloadlib/e/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    .line 114
    :pswitch_8e
    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, v0, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/b;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "storage_deny"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/ss/android/downloadlib/e/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1e

    .line 107
    :catch_a2
    move-exception v1

    goto :goto_7b

    .line 91
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_33
        :pswitch_49
        :pswitch_5c
        :pswitch_6f
    .end packed-switch
.end method

.method public a(JLcom/ss/android/socialbase/downloader/e/a;)V
    .registers 11

    .prologue
    .line 185
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/a/b/c;->e(J)Lcom/ss/android/downloadlib/a/b/c$a;

    move-result-object v5

    .line 186
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 188
    :try_start_d
    const-string v0, "download_time"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    if-eqz p3, :cond_2f

    .line 190
    const-string v0, "fail_status"

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v0, "fail_msg"

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/e/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_2f} :catch_40

    .line 196
    :cond_2f
    :goto_2f
    iget-object v0, v5, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_failed"

    iget-object v4, v5, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v5, v5, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V

    .line 197
    return-void

    .line 193
    :catch_40
    move-exception v0

    .line 194
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2f
.end method

.method public a(JZI)V
    .registers 12

    .prologue
    .line 149
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/a/b/c;->e(J)Lcom/ss/android/downloadlib/a/b/c$a;

    move-result-object v5

    .line 150
    invoke-virtual {v5}, Lcom/ss/android/downloadlib/a/b/c$a;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 151
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    .line 165
    :cond_11
    :goto_11
    return-void

    .line 154
    :cond_12
    iget-object v0, v5, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->y()Lcom/ss/android/a/a/c/f;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 157
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 159
    :try_start_1f
    const-string v0, "click_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_28} :catch_3b

    .line 163
    :goto_28
    if-eqz p3, :cond_40

    const-string v2, "deeplink_quickapp_success"

    .line 164
    :goto_2c
    iget-object v0, v5, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v5, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v5, v5, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V

    goto :goto_11

    .line 160
    :catch_3b
    move-exception v0

    .line 161
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_28

    .line 163
    :cond_40
    const-string v2, "deeplink_quickapp_failed"

    goto :goto_2c
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 9

    .prologue
    .line 236
    if-nez p1, :cond_3

    .line 259
    :cond_2
    :goto_2
    return-void

    .line 239
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v1

    .line 240
    if-nez v1, :cond_11

    .line 241
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    goto :goto_2

    .line 244
    :cond_11
    iget-object v0, v1, Lcom/ss/android/downloadad/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 249
    :try_start_1e
    const-string v0, "download_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aw()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    if-eqz p2, :cond_43

    .line 251
    const-string v0, "fail_status"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v0, "fail_msg"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/e/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_43} :catch_51

    .line 257
    :cond_43
    :goto_43
    const/4 v0, 0x1

    invoke-static {v2, p1, v0}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/c;Z)Lorg/json/JSONObject;

    .line 258
    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/a;->o()Ljava/lang/String;

    move-result-object v0

    const-string v3, "download_failed"

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_2

    .line 254
    :catch_51
    move-exception v0

    .line 255
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_43
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 169
    if-eqz p1, :cond_2f

    .line 170
    :try_start_2
    const-string v0, "total_bytes"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 171
    const-string v0, "chunk_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    const-string v0, "app_name"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v0, "network_quality"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v0, "save_path"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_30

    .line 179
    :cond_2f
    :goto_2f
    return-void

    .line 176
    :catch_30
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method public a(Ljava/lang/String;ILcom/ss/android/downloadlib/a/b/c$a;)V
    .registers 13

    .prologue
    .line 142
    iget-object v0, p3, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    int-to-long v4, p2

    const/4 v6, 0x2

    iget-object v7, p3, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v8, p3, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JILcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V

    .line 143
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 8

    .prologue
    .line 125
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/ss/android/downloadlib/a/b/c;->d(J)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v0

    .line 126
    if-nez v0, :cond_e

    .line 127
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    .line 131
    :goto_d
    return-void

    .line 130
    :cond_e
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->o()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_d
.end method

.method public a(Ljava/lang/String;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V
    .registers 10
    .param p2    # Lcom/ss/android/a/a/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ss/android/a/a/b/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    invoke-interface {p3}, Lcom/ss/android/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->w()Lorg/json/JSONObject;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V

    .line 135
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 5

    .prologue
    .line 208
    if-nez p2, :cond_6

    .line 209
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    .line 213
    :goto_5
    return-void

    .line 212
    :cond_6
    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/a;->o()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_5
.end method

.method public a(Ljava/lang/String;Lcom/ss/android/downloadlib/a/b/c$a;)V
    .registers 9
    .param p2    # Lcom/ss/android/downloadlib/a/b/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    iget-object v0, p2, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->w()Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p2, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v5, p2, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V

    .line 139
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 5

    .prologue
    .line 200
    if-nez p3, :cond_6

    .line 201
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    .line 205
    :goto_5
    return-void

    .line 204
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_5
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 5
    .param p4    # Lcom/ss/android/downloadad/a/b/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 217
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 5

    .prologue
    .line 220
    if-nez p3, :cond_6

    .line 221
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    .line 225
    :goto_5
    return-void

    .line 224
    :cond_6
    const-string v0, "embeded_ad"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_5
.end method

.method public a(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 5
    .param p2    # Lcom/ss/android/downloadad/a/b/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 228
    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/a;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download_finish"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 229
    return-void
.end method

.method public b(JI)V
    .registers 5

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/downloadlib/d/a;->a(JILcom/ss/android/socialbase/downloader/g/c;)V

    .line 122
    return-void
.end method

.method public b(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 5
    .param p2    # Lcom/ss/android/downloadad/a/b/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 232
    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/a;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_finish"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 233
    return-void
.end method
