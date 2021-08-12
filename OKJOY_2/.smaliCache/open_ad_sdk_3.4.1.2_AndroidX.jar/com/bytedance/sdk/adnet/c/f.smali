.class public Lcom/bytedance/sdk/adnet/c/f;
.super Ljava/lang/Object;
.source "TNCManager.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/c/c;


# static fields
.field private static c:Lcom/bytedance/sdk/adnet/c/f;


# instance fields
.field a:Landroid/os/Handler;

.field private b:J

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Lcom/bytedance/sdk/adnet/c/e;

.field private g:I

.field private h:J

.field private i:I

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/c/f;->b:J

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/f;->d:Z

    .line 63
    iput v0, p0, Lcom/bytedance/sdk/adnet/c/f;->g:I

    .line 64
    const-wide v1, 0x49637af88L

    iput-wide v1, p0, Lcom/bytedance/sdk/adnet/c/f;->h:J

    .line 67
    iput v0, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/adnet/c/f;->j:Ljava/util/HashMap;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/adnet/c/f;->k:Ljava/util/HashMap;

    .line 70
    iput v0, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->m:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->n:Ljava/util/HashMap;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/f;->o:Z

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    .line 443
    new-instance v0, Lcom/bytedance/sdk/adnet/c/f$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/adnet/c/f$1;-><init>(Lcom/bytedance/sdk/adnet/c/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->a:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method public static declared-synchronized a()Lcom/bytedance/sdk/adnet/c/f;
    .registers 2

    const-class v0, Lcom/bytedance/sdk/adnet/c/f;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/adnet/c/f;->c:Lcom/bytedance/sdk/adnet/c/f;

    if-nez v1, :cond_e

    .line 53
    new-instance v1, Lcom/bytedance/sdk/adnet/c/f;

    invoke-direct {v1}, Lcom/bytedance/sdk/adnet/c/f;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/adnet/c/f;->c:Lcom/bytedance/sdk/adnet/c/f;

    .line 55
    :cond_e
    sget-object v1, Lcom/bytedance/sdk/adnet/c/f;->c:Lcom/bytedance/sdk/adnet/c/f;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/c/f;Z)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/c/f;->a(Z)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/m;Ljava/lang/String;)V
    .registers 14

    .line 367
    if-nez p1, :cond_3

    .line 368
    return-void

    .line 371
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/f;->o:Z

    if-nez v0, :cond_8

    .line 372
    return-void

    .line 375
    :cond_8
    const/4 v0, 0x0

    const-string v1, "tnc-cmd"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/adnet/core/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TNCManager"

    if-eqz v0, :cond_2e

    .line 377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleTncProbe, no probeProto, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void

    .line 380
    :cond_2e
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 381
    if-eqz p1, :cond_119

    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3c

    goto/16 :goto_119

    .line 386
    :cond_3c
    nop

    .line 387
    nop

    .line 389
    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :try_start_42
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_51

    .line 390
    :try_start_48
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4f

    .line 394
    goto :goto_6d

    .line 391
    :catchall_4f
    move-exception p1

    goto :goto_53

    :catchall_51
    move-exception p1

    move v6, v5

    .line 392
    :goto_53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTncProbe, probeProto except, "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v7, v3

    .line 396
    :goto_6d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleTncProbe, local: "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v9, p0, Lcom/bytedance/sdk/adnet/c/f;->g:I

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v9, p0, Lcom/bytedance/sdk/adnet/c/f;->h:J

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v9, " svr: "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-wide v9, p0, Lcom/bytedance/sdk/adnet/c/f;->h:J

    cmp-long p1, v7, v9

    if-gtz p1, :cond_b2

    .line 400
    return-void

    .line 403
    :cond_b2
    iput v6, p0, Lcom/bytedance/sdk/adnet/c/f;->g:I

    .line 404
    iput-wide v7, p0, Lcom/bytedance/sdk/adnet/c/f;->h:J

    .line 405
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    const-string v9, "ttnet_tnc_config"

    invoke-virtual {p1, v9, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 407
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v5, "tnc_probe_cmd"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 408
    const-string v5, "tnc_probe_version"

    invoke-interface {p1, v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 409
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 411
    iget p1, p0, Lcom/bytedance/sdk/adnet/c/f;->g:I

    const/16 v5, 0x2710

    if-ne p1, v5, :cond_117

    .line 412
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object p1

    .line 413
    if-nez p1, :cond_de

    .line 414
    return-void

    .line 416
    :cond_de
    new-instance v5, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 417
    nop

    .line 418
    iget v6, p1, Lcom/bytedance/sdk/adnet/c/d;->l:I

    if-lez v6, :cond_f6

    .line 419
    iget p1, p1, Lcom/bytedance/sdk/adnet/c/d;->l:I

    invoke-virtual {v5, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 421
    :cond_f6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTncProbe, updateConfig delay: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/sdk/adnet/c/f;->a(ZJ)V

    .line 423
    :cond_117
    nop

    .line 426
    return-void

    .line 382
    :cond_119
    :goto_119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleTncProbe, probeProto err, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method private a(Z)V
    .registers 11

    .line 458
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v0

    .line 459
    if-nez v0, :cond_7

    .line 460
    return-void

    .line 462
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateRemote, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TNCManager"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 465
    if-nez p1, :cond_38

    iget-wide v5, p0, Lcom/bytedance/sdk/adnet/c/f;->b:J

    iget p1, v0, Lcom/bytedance/sdk/adnet/c/d;->k:I

    int-to-long v0, p1

    const-wide/16 v7, 0x3e8

    mul-long/2addr v0, v7

    add-long/2addr v5, v0

    cmp-long p1, v5, v3

    if-lez p1, :cond_38

    .line 466
    const-string p1, "doUpdateRemote, time limit"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void

    .line 469
    :cond_38
    iput-wide v3, p0, Lcom/bytedance/sdk/adnet/c/f;->b:J

    .line 470
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/e;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/a/a;->b(Z)Z

    .line 471
    return-void
.end method

.method private a(ZJ)V
    .registers 7

    .line 429
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->a:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 430
    return-void

    .line 432
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 433
    iput v1, v0, Landroid/os/Message;->what:I

    .line 434
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 435
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_21

    .line 436
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/c/f;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_26

    .line 438
    :cond_21
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/c/f;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    :goto_26
    return-void
.end method

.method private a(I)Z
    .registers 3

    .line 492
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_a

    const/16 v0, 0x190

    if-ge p1, v0, :cond_a

    .line 493
    const/4 p1, 0x1

    return p1

    .line 495
    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 260
    return-void

    .line 262
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->d()Ljava/util/Map;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_3e

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_3e

    .line 266
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_27

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 269
    :cond_27
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 270
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :goto_3d
    return-void

    .line 264
    :cond_3e
    :goto_3e
    return-void
.end method

.method private b(I)Z
    .registers 6

    .line 499
    const/4 v0, 0x1

    const/16 v1, 0x64

    if-lt p1, v1, :cond_36

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_a

    goto :goto_36

    .line 504
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v1

    .line 505
    if-eqz v1, :cond_34

    iget-object v2, v1, Lcom/bytedance/sdk/adnet/c/d;->m:Ljava/lang/String;

    .line 506
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v1, v1, Lcom/bytedance/sdk/adnet/c/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 508
    return v0

    .line 511
    :cond_34
    const/4 p1, 0x0

    return p1

    .line 501
    :cond_36
    :goto_36
    return v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .line 275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 276
    return-void

    .line 278
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 279
    return-void

    .line 281
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .registers 5

    .line 285
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->d()Ljava/util/Map;

    move-result-object v0

    .line 286
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 287
    return v1

    .line 289
    :cond_8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1d

    goto :goto_47

    .line 293
    :cond_1d
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_46

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHostMapping, TNC host faild num over limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TNCManager"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 p1, 0x1

    return p1

    .line 297
    :cond_46
    return v1

    .line 291
    :cond_47
    :goto_47
    return v1
.end method

.method private f()V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    const-string v1, "ttnet_tnc_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    const-string v1, "tnc_probe_cmd"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/adnet/c/f;->g:I

    .line 104
    const-string v1, "tnc_probe_version"

    const-wide v2, 0x49637af88L

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/c/f;->h:J

    .line 105
    return-void
.end method

.method private g()V
    .registers 3

    .line 474
    const-string v0, "TNCManager"

    const-string v1, "resetTNCControlState"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    .line 477
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/c/f;->j:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 478
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/c/f;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 479
    iput v0, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    .line 480
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 481
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 482
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10a

    .line 128
    const-string v0, "/network/get_network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10a

    .line 129
    const-string v0, "/get_domains/v4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10a

    .line 130
    const-string v0, "/ies/speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_10a

    .line 134
    :cond_20
    nop

    .line 135
    nop

    .line 137
    const/4 v0, 0x0

    :try_start_23
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_33

    .line 139
    :try_start_2c
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_31

    .line 142
    goto :goto_38

    .line 140
    :catchall_31
    move-exception v1

    goto :goto_35

    :catchall_33
    move-exception v1

    move-object v2, v0

    .line 141
    :goto_35
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    :goto_38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_109

    .line 145
    const-string v1, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 146
    :cond_4e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    goto/16 :goto_109

    .line 150
    :cond_56
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/adnet/c/f;->d(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "TNCManager"

    if-eqz v1, :cond_75

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHostMapping, TNC host faild num over limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-object p1

    .line 155
    :cond_75
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->d()Ljava/util/Map;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_f2

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    goto :goto_f2

    .line 160
    :cond_82
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 162
    return-object p1

    .line 165
    :cond_8f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleHostMapping, match, origin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 169
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    :cond_db
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHostMapping, target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-object p1

    .line 157
    :cond_f2
    :goto_f2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHostMapping, nomatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-object p1

    .line 147
    :cond_109
    :goto_109
    return-object p1

    .line 131
    :cond_10a
    :goto_10a
    return-object p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Z)V
    .registers 5

    monitor-enter p0

    .line 87
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/f;->d:Z

    if-nez v0, :cond_48

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    .line 89
    iput-boolean p2, p0, Lcom/bytedance/sdk/adnet/c/f;->o:Z

    .line 90
    new-instance v0, Lcom/bytedance/sdk/adnet/c/e;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/adnet/c/e;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->f:Lcom/bytedance/sdk/adnet/c/e;

    .line 91
    if-eqz p2, :cond_15

    .line 92
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/c/f;->f()V

    .line 94
    :cond_15
    const-string p1, "TNCManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initTnc, isMainProc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " probeCmd: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/adnet/c/f;->g:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " probeVersion: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/c/f;->h:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/adnet/c/f;->d:Z
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4a

    .line 98
    :cond_48
    monitor-exit p0

    return-void

    .line 86
    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 10

    monitor-enter p0

    .line 181
    if-eqz p1, :cond_1c1

    if-nez p2, :cond_7

    goto/16 :goto_1c1

    .line 185
    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/f;->o:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1be

    if-nez v0, :cond_d

    .line 186
    monitor-exit p0

    return-void

    .line 189
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/e;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1be

    if-nez v0, :cond_17

    .line 190
    monitor-exit p0

    return-void

    .line 192
    :cond_17
    const/4 v0, 0x0

    .line 194
    :try_start_18
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_23
    .catchall {:try_start_18 .. :try_end_21} :catchall_1be

    .line 197
    move-object v0, v1

    goto :goto_24

    .line 196
    :catch_23
    move-exception v1

    .line 198
    :goto_24
    if-nez v0, :cond_28

    .line 199
    monitor-exit p0

    return-void

    .line 202
    :cond_28
    :try_start_28
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getIpAddrStr()Ljava/lang/String;

    move-result-object p1

    .line 206
    iget-wide v3, p2, Lcom/bytedance/sdk/adnet/core/m;->h:J

    long-to-int v3, v3

    .line 208
    const-string v4, "http"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    const-string v4, "https"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_49
    .catchall {:try_start_28 .. :try_end_49} :catchall_1be

    if-nez v4, :cond_4d

    .line 209
    monitor-exit p0

    return-void

    .line 212
    :cond_4d
    :try_start_4d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_1be

    if-eqz v4, :cond_55

    .line 213
    monitor-exit p0

    return-void

    .line 216
    :cond_55
    :try_start_55
    const-string v4, "TNCManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResponse, url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v4

    .line 218
    if-eqz v4, :cond_98

    iget-boolean v5, v4, Lcom/bytedance/sdk/adnet/c/d;->b:Z

    if-eqz v5, :cond_98

    .line 219
    invoke-direct {p0, p2, v2}, Lcom/bytedance/sdk/adnet/c/f;->a(Lcom/bytedance/sdk/adnet/core/m;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_55 .. :try_end_98} :catchall_1be

    .line 222
    :cond_98
    if-nez v4, :cond_9c

    .line 223
    monitor-exit p0

    return-void

    .line 232
    :cond_9c
    :try_start_9c
    const-string p2, "TNCManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResponse, url matched: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/adnet/c/f;->j:Ljava/util/HashMap;

    .line 233
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/adnet/c/f;->k:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/adnet/c/f;->m:Ljava/util/HashMap;

    .line 234
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/adnet/c/f;->n:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-static {p2, v5}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    if-lez v3, :cond_1bc

    .line 236
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/adnet/c/f;->a(I)Z

    move-result p2

    if-eqz p2, :cond_142

    .line 237
    iget p1, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    if-gtz p1, :cond_13a

    iget p1, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    if-lez p1, :cond_13d

    .line 238
    :cond_13a
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/c/f;->g()V

    .line 240
    :cond_13d
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/adnet/c/f;->c(Ljava/lang/String;)V

    goto/16 :goto_1bc

    .line 241
    :cond_142
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/adnet/c/f;->b(I)Z

    move-result p2

    if-nez p2, :cond_1bc

    .line 242
    iget p2, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    .line 243
    iget-object p2, p0, Lcom/bytedance/sdk/adnet/c/f;->m:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object p2, p0, Lcom/bytedance/sdk/adnet/c/f;->n:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget p2, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    iget v0, v4, Lcom/bytedance/sdk/adnet/c/d;->h:I

    if-lt p2, v0, :cond_1b9

    iget-object p2, p0, Lcom/bytedance/sdk/adnet/c/f;->m:Ljava/util/HashMap;

    .line 246
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    iget v0, v4, Lcom/bytedance/sdk/adnet/c/d;->i:I

    if-lt p2, v0, :cond_1b9

    iget-object p2, p0, Lcom/bytedance/sdk/adnet/c/f;->n:Ljava/util/HashMap;

    .line 247
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    iget v0, v4, Lcom/bytedance/sdk/adnet/c/d;->j:I

    if-lt p2, v0, :cond_1b9

    .line 248
    const-string p2, "TNCManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponse, url doUpdate: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-wide/16 p1, 0x0

    invoke-direct {p0, v5, p1, p2}, Lcom/bytedance/sdk/adnet/c/f;->a(ZJ)V

    .line 250
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/c/f;->g()V

    .line 252
    :cond_1b9
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/adnet/c/f;->b(Ljava/lang/String;)V
    :try_end_1bc
    .catchall {:try_start_9c .. :try_end_1bc} :catchall_1be

    .line 256
    :cond_1bc
    :goto_1bc
    monitor-exit p0

    return-void

    .line 180
    :catchall_1be
    move-exception p1

    monitor-exit p0

    throw p1

    .line 182
    :cond_1c1
    :goto_1c1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/adnet/core/Request;Ljava/lang/Exception;)V
    .registers 9

    monitor-enter p0

    .line 302
    if-eqz p1, :cond_145

    if-nez p2, :cond_7

    goto/16 :goto_145

    .line 306
    :cond_7
    :try_start_7
    iget-boolean p2, p0, Lcom/bytedance/sdk/adnet/c/f;->o:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_142

    if-nez p2, :cond_d

    .line 307
    monitor-exit p0

    return-void

    .line 310
    :cond_d
    :try_start_d
    iget-object p2, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    invoke-static {p2}, Lcom/bytedance/sdk/adnet/d/e;->a(Landroid/content/Context;)Z

    move-result p2
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_142

    if-nez p2, :cond_17

    .line 311
    monitor-exit p0

    return-void

    .line 314
    :cond_17
    const/4 p2, 0x0

    .line 316
    :try_start_18
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_23
    .catchall {:try_start_18 .. :try_end_21} :catchall_142

    .line 319
    move-object p2, v0

    goto :goto_24

    .line 318
    :catch_23
    move-exception v0

    .line 320
    :goto_24
    if-nez p2, :cond_28

    .line 321
    monitor-exit p0

    return-void

    .line 324
    :cond_28
    :try_start_28
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 327
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getIpAddrStr()Ljava/lang/String;

    move-result-object p1

    .line 330
    const-string v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_142

    if-nez v2, :cond_4a

    .line 331
    monitor-exit p0

    return-void

    .line 339
    :cond_4a
    :try_start_4a
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_142

    .line 340
    if-nez v2, :cond_52

    .line 341
    monitor-exit p0

    return-void

    .line 350
    :cond_52
    :try_start_52
    const-string v3, "TNCManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onError, url matched: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/adnet/c/f;->j:Ljava/util/HashMap;

    .line 351
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/adnet/c/f;->k:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/adnet/c/f;->m:Ljava/util/HashMap;

    .line 352
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/adnet/c/f;->n:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-static {v3, v4}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget v3, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    .line 354
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/c/f;->j:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object p2, p0, Lcom/bytedance/sdk/adnet/c/f;->k:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget p2, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    iget v3, v2, Lcom/bytedance/sdk/adnet/c/d;->e:I

    if-lt p2, v3, :cond_13d

    iget-object p2, p0, Lcom/bytedance/sdk/adnet/c/f;->j:Ljava/util/HashMap;

    .line 357
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    iget v3, v2, Lcom/bytedance/sdk/adnet/c/d;->f:I

    if-lt p2, v3, :cond_13d

    iget-object p2, p0, Lcom/bytedance/sdk/adnet/c/f;->k:Ljava/util/HashMap;

    .line 358
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    iget v2, v2, Lcom/bytedance/sdk/adnet/c/d;->g:I

    if-lt p2, v2, :cond_13d

    .line 359
    const-string p2, "TNCManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError, url doUpate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-wide/16 p1, 0x0

    invoke-direct {p0, v4, p1, p2}, Lcom/bytedance/sdk/adnet/c/f;->a(ZJ)V

    .line 361
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/c/f;->g()V

    .line 363
    :cond_13d
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/c/f;->b(Ljava/lang/String;)V
    :try_end_140
    .catchall {:try_start_52 .. :try_end_140} :catchall_142

    .line 364
    monitor-exit p0

    return-void

    .line 301
    :catchall_142
    move-exception p1

    monitor-exit p0

    throw p1

    .line 303
    :cond_145
    :goto_145
    monitor-exit p0

    return-void
.end method

.method public b()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 84
    return-void
.end method

.method public c()Lcom/bytedance/sdk/adnet/c/d;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->f:Lcom/bytedance/sdk/adnet/c/e;

    if-eqz v0, :cond_9

    .line 109
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/e;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v0

    return-object v0

    .line 111
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_9

    .line 117
    iget-object v0, v0, Lcom/bytedance/sdk/adnet/c/d;->d:Ljava/util/Map;

    return-object v0

    .line 119
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/adnet/c/e;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->f:Lcom/bytedance/sdk/adnet/c/e;

    return-object v0
.end method
