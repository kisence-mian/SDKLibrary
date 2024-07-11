.class public Lcom/bytedance/sdk/adnet/a/a;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/c/a;
.implements Lcom/bytedance/sdk/adnet/d/h$a;


# static fields
.field private static b:Lcom/bytedance/sdk/adnet/a/a;


# instance fields
.field final a:Lcom/bytedance/sdk/adnet/d/h;

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
    .registers 6

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->d:Z

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    .line 66
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    .line 68
    iput-wide v1, p0, Lcom/bytedance/sdk/adnet/a/a;->h:J

    .line 70
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->k:Z

    .line 76
    new-instance v0, Lcom/bytedance/sdk/adnet/d/h;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/adnet/d/h;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/adnet/d/h$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->a:Lcom/bytedance/sdk/adnet/d/h;

    .line 98
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    .line 99
    iput-boolean p2, p0, Lcom/bytedance/sdk/adnet/a/a;->c:Z

    .line 100
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;
    .registers 4

    .line 79
    const-class v0, Lcom/bytedance/sdk/adnet/a/a;

    monitor-enter v0

    .line 80
    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/adnet/a/a;->b:Lcom/bytedance/sdk/adnet/a/a;

    if-nez v1, :cond_19

    .line 81
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/f;->b(Landroid/content/Context;)Z

    move-result v1

    .line 82
    new-instance v2, Lcom/bytedance/sdk/adnet/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcom/bytedance/sdk/adnet/a/a;-><init>(Landroid/content/Context;Z)V

    sput-object v2, Lcom/bytedance/sdk/adnet/a/a;->b:Lcom/bytedance/sdk/adnet/a/a;

    .line 83
    invoke-static {v2}, Lcom/bytedance/sdk/adnet/a;->a(Lcom/bytedance/sdk/adnet/c/a;)V

    .line 85
    :cond_19
    sget-object p0, Lcom/bytedance/sdk/adnet/a/a;->b:Lcom/bytedance/sdk/adnet/a/a;

    monitor-exit v0

    return-object p0

    .line 86
    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method private a(I)V
    .registers 6

    .line 324
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->d()[Ljava/lang/String;

    move-result-object v0

    .line 325
    const/16 v1, 0x66

    if-eqz v0, :cond_6d

    array-length v2, v0

    if-gt v2, p1, :cond_c

    goto :goto_6d

    .line 329
    :cond_c
    aget-object v0, v0, p1

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 331
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/a/a;->b(I)V

    .line 332
    return-void

    .line 335
    :cond_18
    :try_start_18
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/adnet/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 337
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/a/a;->b(I)V

    .line 338
    return-void

    .line 340
    :cond_26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 341
    new-instance v2, Lcom/bytedance/sdk/adnet/b/f;

    new-instance v3, Lcom/bytedance/sdk/adnet/a/a$3;

    invoke-direct {v3, p0, p1}, Lcom/bytedance/sdk/adnet/a/a$3;-><init>(Lcom/bytedance/sdk/adnet/a/a;I)V

    const/4 p1, 0x0

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    new-instance v0, Lcom/bytedance/sdk/adnet/core/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/core/e;-><init>()V

    const/16 v1, 0x2710

    .line 373
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/core/e;->b(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    .line 374
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V
    :try_end_52
    .catchall {:try_start_18 .. :try_end_52} :catchall_53

    .line 377
    goto :goto_6c

    .line 375
    :catchall_53
    move-exception p1

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try app config exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppConfig"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_6c
    return-void

    .line 326
    :cond_6d
    :goto_6d
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/a/a;->b(I)V

    .line 327
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/a/a;I)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/a/a;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    nop

    .line 279
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 280
    check-cast p1, Ljava/lang/String;

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 282
    return v1

    .line 284
    :cond_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 285
    const-string p1, "message"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 286
    const-string v2, "success"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 287
    return v1

    .line 289
    :cond_23
    goto :goto_2d

    :cond_24
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_2c

    .line 290
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_2d

    .line 289
    :cond_2c
    const/4 v0, 0x0

    .line 292
    :goto_2d
    if-nez v0, :cond_30

    .line 293
    return v1

    .line 295
    :cond_30
    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 296
    monitor-enter p0

    .line 297
    :try_start_37
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    const-string v2, "ss_app_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 301
    const-string v3, "last_refresh_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_37 .. :try_end_50} :catchall_67

    .line 307
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 308
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/c/e;->a(Lorg/json/JSONObject;)V

    .line 311
    :cond_65
    const/4 p1, 0x1

    return p1

    .line 304
    :catchall_67
    move-exception p1

    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 389
    const/4 p1, 0x0

    return-object p1

    .line 391
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/get_domains/v4/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/adnet/c/b;->a(Landroid/content/Context;)Landroid/location/Address;

    move-result-object p1

    .line 394
    new-instance v1, Lcom/bytedance/sdk/adnet/d/g;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/adnet/d/g;-><init>(Ljava/lang/String;)V

    .line 395
    if-eqz p1, :cond_62

    invoke-virtual {p1}, Landroid/location/Address;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p1}, Landroid/location/Address;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 396
    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    const-string v0, "latitude"

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/sdk/adnet/d/g;->a(Ljava/lang/String;D)V

    .line 397
    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    const-string v0, "longitude"

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/sdk/adnet/d/g;->a(Ljava/lang/String;D)V

    .line 398
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p1

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 400
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "city"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_62
    iget-boolean p1, p0, Lcom/bytedance/sdk/adnet/a/a;->d:Z

    if-eqz p1, :cond_6c

    .line 403
    const/4 p1, 0x1

    const-string v0, "force"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/g;->a(Ljava/lang/String;I)V

    .line 406
    :cond_6c
    nop

    .line 407
    :try_start_6d
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_76

    .line 408
    sget-object p1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_7b

    .line 410
    :cond_76
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 412
    :goto_7b
    const-string v0, "abi"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_6d .. :try_end_80} :catchall_81

    .line 416
    goto :goto_85

    .line 413
    :catchall_81
    move-exception p1

    .line 415
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 417
    :goto_85
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/adnet/c/b;->a()I

    move-result p1

    const-string v0, "aid"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/g;->a(Ljava/lang/String;I)V

    .line 418
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/adnet/c/b;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_platform"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/adnet/c/b;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "channel"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/adnet/c/b;->d()I

    move-result p1

    const-string v0, "version_code"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/g;->a(Ljava/lang/String;I)V

    .line 423
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/adnet/c/b;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "custom_info_1"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/d/g;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(I)V
    .registers 3

    .line 382
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->a:Lcom/bytedance/sdk/adnet/d/h;

    if-eqz v0, :cond_7

    .line 383
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/d/h;->sendEmptyMessage(I)Z

    .line 385
    :cond_7
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    .line 127
    sget-object v0, Lcom/bytedance/sdk/adnet/a/a;->b:Lcom/bytedance/sdk/adnet/a/a;

    .line 128
    if-eqz v0, :cond_12

    .line 129
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/f;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 130
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/adnet/a/a;->a(Z)V

    goto :goto_12

    .line 132
    :cond_f
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/a/a;->a()V

    .line 135
    :cond_12
    :goto_12
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/adnet/a/a;I)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->b(I)V

    return-void
.end method

.method private d(Z)V
    .registers 8

    .line 151
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    if-eqz v0, :cond_5

    .line 152
    return-void

    .line 153
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    if-eqz v0, :cond_12

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    .line 156
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->h:J

    .line 158
    :cond_12
    if-eqz p1, :cond_18

    const-wide/32 v0, 0xa4cb80

    goto :goto_1b

    :cond_18
    const-wide/32 v0, 0x2932e00

    .line 159
    :goto_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 160
    iget-wide v4, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    sub-long v4, v2, v4

    cmp-long p1, v4, v0

    if-lez p1, :cond_40

    .line 161
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->h:J

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1d4c0

    cmp-long p1, v2, v0

    if-lez p1, :cond_40

    .line 162
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/e;->a(Landroid/content/Context;)Z

    move-result p1

    .line 163
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->k:Z

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_40

    .line 164
    :cond_3d
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->b(Z)Z

    .line 168
    :cond_40
    return-void
.end method

.method private e()Z
    .registers 3

    .line 315
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->d()[Ljava/lang/String;

    move-result-object v0

    .line 316
    const/4 v1, 0x0

    if-eqz v0, :cond_f

    array-length v0, v0

    if-nez v0, :cond_b

    goto :goto_f

    .line 319
    :cond_b
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/a/a;->a(I)V

    .line 320
    return v1

    .line 317
    :cond_f
    :goto_f
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 231
    return-object p1

    .line 232
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    .line 234
    :try_start_11
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1a

    .line 237
    goto :goto_1b

    .line 235
    :catchall_1a
    move-exception v0

    .line 238
    :goto_1b
    return-object p1

    .line 241
    :cond_1c
    :try_start_1c
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->c:Z

    if-eqz v0, :cond_24

    .line 242
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->c()V

    goto :goto_27

    .line 244
    :cond_24
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->b()V

    .line 246
    :goto_27
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_30

    .line 248
    goto :goto_31

    .line 247
    :catchall_30
    move-exception v0

    .line 249
    :goto_31
    return-object p1
.end method

.method public a()V
    .registers 2

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Z)V

    .line 104
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 6

    .line 190
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "TNCManager"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_38

    goto :goto_37

    .line 200
    :pswitch_9
    iput-boolean v1, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    .line 201
    iget-boolean p1, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    if-eqz p1, :cond_12

    .line 202
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->a()V

    .line 204
    :cond_12
    const-string p1, "doRefresh, error"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_37

    .line 192
    :pswitch_1d
    iput-boolean v1, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    .line 194
    const-string p1, "doRefresh, succ"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-boolean p1, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    if-eqz p1, :cond_31

    .line 196
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->a()V

    .line 197
    :cond_31
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    nop

    .line 208
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x65
        :pswitch_1d
        :pswitch_9
    .end packed-switch
.end method

.method public declared-synchronized a(Z)V
    .registers 6

    monitor-enter p0

    .line 107
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->c:Z

    if-eqz v0, :cond_9

    .line 108
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->d(Z)V

    goto :goto_1f

    .line 110
    :cond_9
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_21

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1f

    .line 112
    :try_start_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/adnet/a/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/adnet/a/a$1;-><init>(Lcom/bytedance/sdk/adnet/a/a;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1e

    .line 121
    goto :goto_1f

    .line 118
    :catchall_1e
    move-exception p1

    .line 124
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 106
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b()V
    .registers 5

    monitor-enter p0

    .line 138
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 139
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_2e

    .line 142
    :try_start_15
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 143
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/e;->b()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2a} :catch_2b
    .catchall {:try_start_15 .. :try_end_2a} :catchall_2e

    .line 146
    :cond_2a
    goto :goto_2c

    .line 145
    :catch_2b
    move-exception v0

    .line 148
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    .line 137
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)Z
    .registers 6

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doRefresh: updating state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TNCManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 173
    const-string p1, "doRefresh, already running"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return v2

    .line 176
    :cond_2e
    if-eqz p1, :cond_36

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->h:J

    .line 179
    :cond_36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/adnet/a/a$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/adnet/a/a$2;-><init>(Lcom/bytedance/sdk/adnet/a/a;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 185
    return v3
.end method

.method public declared-synchronized c()V
    .registers 6

    monitor-enter p0

    .line 211
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->k:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-eqz v0, :cond_7

    .line 212
    monitor-exit p0

    return-void

    .line 213
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->k:Z

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    const-string v1, "ss_app_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    const-string v1, "last_refresh_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 218
    cmp-long v4, v0, v2

    if-lez v4, :cond_24

    .line 219
    move-wide v0, v2

    .line 221
    :cond_24
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    .line 223
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 224
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/e;->a()V
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_3d

    .line 226
    :cond_3b
    monitor-exit p0

    return-void

    .line 210
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(Z)V
    .registers 4

    .line 254
    const-string v0, "TNCManager"

    const-string v1, "doRefresh, actual request"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->c()V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    .line 258
    if-nez p1, :cond_17

    .line 259
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a;->a:Lcom/bytedance/sdk/adnet/d/h;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/d/h;->sendEmptyMessage(I)Z

    .line 260
    return-void

    .line 263
    :cond_17
    :try_start_17
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/a/a;->e()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 266
    goto :goto_22

    .line 264
    :catch_1b
    move-exception p1

    .line 265
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 267
    :goto_22
    return-void
.end method

.method public d()[Ljava/lang/String;
    .registers 3

    .line 270
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/adnet/c/b;->f()[Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_d

    array-length v1, v0

    if-gtz v1, :cond_10

    .line 272
    :cond_d
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 274
    :cond_10
    return-object v0
.end method
