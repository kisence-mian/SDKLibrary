.class public Lcom/bytedance/sdk/adnet/a/a;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/c/a;
.implements Lcom/bytedance/sdk/adnet/d/j$a;


# static fields
.field private static b:Lcom/bytedance/sdk/adnet/a/a;


# instance fields
.field final a:Lcom/bytedance/sdk/adnet/d/j;

.field private final c:Z

.field private volatile d:Z

.field private e:Z

.field private f:Z

.field private g:J

.field private h:J

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Landroid/content/Context;

.field private volatile k:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v1, p0, Lcom/bytedance/sdk/adnet/a/a;->d:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    .line 64
    iput-boolean v1, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    .line 65
    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    .line 66
    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/a/a;->h:J

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    iput-boolean v1, p0, Lcom/bytedance/sdk/adnet/a/a;->k:Z

    .line 74
    new-instance v0, Lcom/bytedance/sdk/adnet/d/j;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/adnet/d/j;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/adnet/d/j$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->a:Lcom/bytedance/sdk/adnet/d/j;

    .line 96
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    .line 97
    iput-boolean p2, p0, Lcom/bytedance/sdk/adnet/a/a;->c:Z

    .line 98
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;
    .registers 5

    .prologue
    .line 77
    const-class v1, Lcom/bytedance/sdk/adnet/a/a;

    monitor-enter v1

    .line 78
    :try_start_3
    sget-object v0, Lcom/bytedance/sdk/adnet/a/a;->b:Lcom/bytedance/sdk/adnet/a/a;

    if-nez v0, :cond_1b

    .line 79
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->b(Landroid/content/Context;)Z

    move-result v0

    .line 80
    new-instance v2, Lcom/bytedance/sdk/adnet/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/bytedance/sdk/adnet/a/a;-><init>(Landroid/content/Context;Z)V

    sput-object v2, Lcom/bytedance/sdk/adnet/a/a;->b:Lcom/bytedance/sdk/adnet/a/a;

    .line 81
    sget-object v0, Lcom/bytedance/sdk/adnet/a/a;->b:Lcom/bytedance/sdk/adnet/a/a;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a;->a(Lcom/bytedance/sdk/adnet/c/a;)V

    .line 83
    :cond_1b
    sget-object v0, Lcom/bytedance/sdk/adnet/a/a;->b:Lcom/bytedance/sdk/adnet/a/a;

    monitor-exit v1

    return-object v0

    .line 84
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private a(I)V
    .registers 7

    .prologue
    const/16 v2, 0x66

    .line 322
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->d()[Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_b

    array-length v1, v0

    if-gt v1, p1, :cond_f

    .line 324
    :cond_b
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/adnet/a/a;->b(I)V

    .line 376
    :goto_e
    return-void

    .line 327
    :cond_f
    aget-object v0, v0, p1

    .line 328
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 329
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/adnet/a/a;->b(I)V

    goto :goto_e

    .line 333
    :cond_1b
    :try_start_1b
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/adnet/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 335
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/adnet/a/a;->b(I)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2a} :catch_2b

    goto :goto_e

    .line 373
    :catch_2b
    move-exception v0

    .line 374
    const-string v1, "AppConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try app config exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 338
    :cond_45
    :try_start_45
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 339
    new-instance v2, Lcom/bytedance/sdk/adnet/b/f;

    const/4 v3, 0x0

    new-instance v4, Lcom/bytedance/sdk/adnet/a/a$3;

    invoke-direct {v4, p0, p1}, Lcom/bytedance/sdk/adnet/a/a$3;-><init>(Lcom/bytedance/sdk/adnet/a/a;I)V

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/n$a;)V

    new-instance v0, Lcom/bytedance/sdk/adnet/core/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/core/e;-><init>()V

    const/16 v1, 0x2710

    .line 371
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/e;->b(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    .line 372
    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_72} :catch_2b

    goto :goto_e
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/a/a;I)V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/a/a;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 276
    const/4 v1, 0x0

    .line 277
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5d

    .line 278
    check-cast p1, Ljava/lang/String;

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 309
    :cond_e
    :goto_e
    return v0

    .line 282
    :cond_f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 283
    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    const-string v3, "success"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object p1, v1

    .line 290
    :goto_23
    if-eqz p1, :cond_e

    .line 293
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 294
    monitor-enter p0

    .line 295
    :try_start_2c
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    const-string v2, "ss_app_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 297
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 299
    const-string v4, "last_refresh_time"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 302
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_2c .. :try_end_46} :catchall_64

    .line 305
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 306
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/adnet/c/e;->a(Lorg/json/JSONObject;)V

    .line 309
    :cond_5b
    const/4 v0, 0x1

    goto :goto_e

    .line 287
    :cond_5d
    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_67

    .line 288
    check-cast p1, Lorg/json/JSONObject;

    goto :goto_23

    .line 302
    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0

    :cond_67
    move-object p1, v1

    goto :goto_23
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 387
    const/4 v0, 0x0

    .line 421
    :goto_7
    return-object v0

    .line 389
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/get_domains/v4/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/adnet/c/b;->a(Landroid/content/Context;)Landroid/location/Address;

    move-result-object v1

    .line 392
    new-instance v2, Lcom/bytedance/sdk/adnet/d/i;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/adnet/d/i;-><init>(Ljava/lang/String;)V

    .line 393
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Landroid/location/Address;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {v1}, Landroid/location/Address;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 394
    const-string v0, "latitude"

    invoke-virtual {v1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/bytedance/sdk/adnet/d/i;->a(Ljava/lang/String;D)V

    .line 395
    const-string v0, "longitude"

    invoke-virtual {v1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/bytedance/sdk/adnet/d/i;->a(Ljava/lang/String;D)V

    .line 396
    invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 398
    const-string v1, "city"

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/adnet/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_62
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->d:Z

    if-eqz v0, :cond_6c

    .line 401
    const-string v0, "force"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/adnet/d/i;->a(Ljava/lang/String;I)V

    .line 405
    :cond_6c
    :try_start_6c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_c0

    .line 406
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 410
    :goto_74
    const-string v1, "abi"

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/adnet/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_79} :catch_c6

    .line 415
    :goto_79
    const-string v0, "aid"

    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/adnet/c/b;->a()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/adnet/d/i;->a(Ljava/lang/String;I)V

    .line 416
    const-string v0, "device_platform"

    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/adnet/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/adnet/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v0, "channel"

    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/adnet/c/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/adnet/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, "version_code"

    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/adnet/c/b;->d()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/adnet/d/i;->a(Ljava/lang/String;I)V

    .line 419
    const-string v0, "device_id"

    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/adnet/c/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/adnet/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/d/i;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 408
    :cond_c0
    :try_start_c0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c5} :catch_c6

    goto :goto_74

    .line 411
    :catch_c6
    move-exception v0

    .line 413
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_79
.end method

.method private b(I)V
    .registers 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->a:Lcom/bytedance/sdk/adnet/d/j;

    if-eqz v0, :cond_9

    .line 381
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->a:Lcom/bytedance/sdk/adnet/d/j;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/d/j;->sendEmptyMessage(I)Z

    .line 383
    :cond_9
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 125
    sget-object v0, Lcom/bytedance/sdk/adnet/a/a;->b:Lcom/bytedance/sdk/adnet/a/a;

    .line 126
    if-eqz v0, :cond_e

    .line 127
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 128
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/a/a;->a(Z)V

    .line 133
    :cond_e
    :goto_e
    return-void

    .line 130
    :cond_f
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/a/a;->a()V

    goto :goto_e
.end method

.method static synthetic b(Lcom/bytedance/sdk/adnet/a/a;I)V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->b(I)V

    return-void
.end method

.method private d(Z)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 149
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    if-eqz v0, :cond_7

    .line 166
    :cond_6
    :goto_6
    return-void

    .line 151
    :cond_7
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    if-eqz v0, :cond_12

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    .line 153
    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    .line 154
    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/a/a;->h:J

    .line 156
    :cond_12
    if-eqz p1, :cond_3e

    const-wide/32 v0, 0xa4cb80

    .line 157
    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 158
    iget-wide v4, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    sub-long v4, v2, v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_6

    .line 159
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->h:J

    sub-long v0, v2, v0

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/f;->a(Landroid/content/Context;)Z

    move-result v0

    .line 161
    iget-boolean v1, p0, Lcom/bytedance/sdk/adnet/a/a;->k:Z

    if-eqz v1, :cond_3a

    if-eqz v0, :cond_6

    .line 162
    :cond_3a
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/a/a;->b(Z)Z

    goto :goto_6

    .line 156
    :cond_3e
    const-wide/32 v0, 0x2932e00

    goto :goto_17
.end method

.method private e()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->d()[Ljava/lang/String;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_a

    array-length v0, v0

    if-nez v0, :cond_b

    .line 318
    :cond_a
    :goto_a
    return v1

    .line 317
    :cond_b
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/a/a;->a(I)V

    goto :goto_a
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 247
    :goto_6
    return-object p1

    .line 230
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    .line 232
    :try_start_11
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/c/f;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_18} :catch_30

    move-result-object p1

    goto :goto_6

    .line 239
    :cond_1a
    :try_start_1a
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->c:Z

    if-eqz v0, :cond_2a

    .line 240
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->c()V

    .line 244
    :goto_21
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 242
    :cond_2a
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->b()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_2d} :catch_2e

    goto :goto_21

    .line 245
    :catch_2e
    move-exception v0

    goto :goto_6

    .line 233
    :catch_30
    move-exception v0

    goto :goto_6
.end method

.method public a()V
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Z)V

    .line 102
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    .line 206
    :goto_6
    return-void

    .line 190
    :pswitch_7
    iput-boolean v2, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    .line 192
    const-string v0, "TNCManager"

    const-string v1, "doRefresh, succ"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    if-eqz v0, :cond_1d

    .line 194
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->a()V

    .line 195
    :cond_1d
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    .line 198
    :pswitch_23
    iput-boolean v2, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    .line 199
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    if-eqz v0, :cond_2c

    .line 200
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->a()V

    .line 202
    :cond_2c
    const-string v0, "TNCManager"

    const-string v1, "doRefresh, error"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    .line 188
    nop

    :pswitch_data_3a
    .packed-switch 0x65
        :pswitch_7
        :pswitch_23
    .end packed-switch
.end method

.method public declared-synchronized a(Z)V
    .registers 6

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->c:Z

    if-eqz v0, :cond_a

    .line 106
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->d(Z)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1f

    .line 122
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 108
    :cond_a
    :try_start_a
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_1f

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_8

    .line 110
    :try_start_12
    new-instance v0, Lcom/bytedance/sdk/adnet/a/a$1;

    const-string v1, "LoadDomainConfig4Other-Thread"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/adnet/a/a$1;-><init>(Lcom/bytedance/sdk/adnet/a/a;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/a/a$1;->start()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1c} :catch_1d
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1f

    goto :goto_8

    .line 116
    :catch_1d
    move-exception v0

    goto :goto_8

    .line 105
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .registers 5

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 137
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_2c

    .line 140
    :try_start_15
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 141
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/e;->b()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2a} :catch_2f
    .catchall {:try_start_15 .. :try_end_2a} :catchall_2c

    .line 146
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    .line 136
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 143
    :catch_2f
    move-exception v0

    goto :goto_2a
.end method

.method public b(Z)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 169
    const-string v2, "TNCManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doRefresh: updating state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_30

    .line 171
    const-string v1, "TNCManager"

    const-string v2, "doRefresh, already running"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_2f
    return v0

    .line 174
    :cond_30
    if-eqz p1, :cond_38

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/a/a;->h:J

    .line 177
    :cond_38
    new-instance v0, Lcom/bytedance/sdk/adnet/a/a$2;

    const-string v2, "AppConfigThread"

    invoke-direct {v0, p0, v2, p1}, Lcom/bytedance/sdk/adnet/a/a$2;-><init>(Lcom/bytedance/sdk/adnet/a/a;Ljava/lang/String;Z)V

    .line 182
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/a/a$2;->start()V

    move v0, v1

    .line 183
    goto :goto_2f
.end method

.method public declared-synchronized c()V
    .registers 6

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->k:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3b

    if-eqz v0, :cond_7

    .line 224
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 211
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->k:Z

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    const-string v1, "ss_app_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    const-string v1, "last_refresh_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 216
    cmp-long v4, v2, v0

    if-lez v4, :cond_3e

    .line 219
    :goto_23
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    .line 221
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 222
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/e;->a()V
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_3b

    goto :goto_5

    .line 209
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3e
    move-wide v0, v2

    goto :goto_23
.end method

.method c(Z)V
    .registers 4

    .prologue
    .line 252
    const-string v0, "TNCManager"

    const-string v1, "doRefresh, actual request"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->c()V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    .line 256
    if-nez p1, :cond_17

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->a:Lcom/bytedance/sdk/adnet/d/j;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/d/j;->sendEmptyMessage(I)Z

    .line 265
    :goto_16
    return-void

    .line 261
    :cond_17
    :try_start_17
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/a/a;->e()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_16

    .line 262
    :catch_1b
    move-exception v0

    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_16
.end method

.method public d()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 268
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/adnet/c/b;->f()[Ljava/lang/String;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_d

    array-length v1, v0

    if-gtz v1, :cond_10

    .line 270
    :cond_d
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 272
    :cond_10
    return-object v0
.end method
