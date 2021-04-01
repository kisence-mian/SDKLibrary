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
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
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
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/c/f;->b:J

    .line 56
    iput-boolean v1, p0, Lcom/bytedance/sdk/adnet/c/f;->d:Z

    .line 61
    iput v1, p0, Lcom/bytedance/sdk/adnet/c/f;->g:I

    .line 62
    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/c/f;->h:J

    .line 65
    iput v1, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->j:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->k:Ljava/util/HashMap;

    .line 68
    iput v1, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->m:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->n:Ljava/util/HashMap;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/f;->o:Z

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    .line 441
    new-instance v0, Lcom/bytedance/sdk/adnet/c/f$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/adnet/c/f$1;-><init>(Lcom/bytedance/sdk/adnet/c/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->a:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method public static declared-synchronized a()Lcom/bytedance/sdk/adnet/c/f;
    .registers 2

    .prologue
    .line 50
    const-class v1, Lcom/bytedance/sdk/adnet/c/f;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bytedance/sdk/adnet/c/f;->c:Lcom/bytedance/sdk/adnet/c/f;

    if-nez v0, :cond_e

    .line 51
    new-instance v0, Lcom/bytedance/sdk/adnet/c/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/c/f;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/adnet/c/f;->c:Lcom/bytedance/sdk/adnet/c/f;

    .line 53
    :cond_e
    sget-object v0, Lcom/bytedance/sdk/adnet/c/f;->c:Lcom/bytedance/sdk/adnet/c/f;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 483
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 484
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 485
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/c/f;Z)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/c/f;->a(Z)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/n;Ljava/lang/String;)V
    .registers 14

    .prologue
    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 365
    if-nez p1, :cond_7

    .line 424
    :cond_6
    :goto_6
    return-void

    .line 369
    :cond_7
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/f;->o:Z

    if-eqz v0, :cond_6

    .line 373
    const-string v0, "tt-idc-switch"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/adnet/core/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 375
    const-string v0, "TNCManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTncProbe, no probeProto, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 378
    :cond_31
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_3d

    array-length v1, v0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_56

    .line 380
    :cond_3d
    const-string v0, "TNCManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTncProbe, probeProto err, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 387
    :cond_56
    const/4 v1, 0x0

    :try_start_57
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5c} :catch_117

    move-result v4

    .line 388
    const/4 v1, 0x1

    :try_start_5e
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_63} :catch_141

    move-result-wide v0

    .line 394
    :goto_64
    const-string v6, "TNCManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleTncProbe, local: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/bytedance/sdk/adnet/c/f;->g:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/bytedance/sdk/adnet/c/f;->h:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " svr: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-wide v6, p0, Lcom/bytedance/sdk/adnet/c/f;->h:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_6

    .line 401
    iput v4, p0, Lcom/bytedance/sdk/adnet/c/f;->g:I

    .line 402
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/c/f;->h:J

    .line 403
    iget-object v6, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    const-string v7, "ttnet_tnc_config"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 405
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "tnc_probe_cmd"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "tnc_probe_version"

    .line 406
    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 407
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 409
    iget v0, p0, Lcom/bytedance/sdk/adnet/c/f;->g:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_139

    .line 410
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_6

    .line 414
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 416
    iget v4, v0, Lcom/bytedance/sdk/adnet/c/d;->l:I

    if-lez v4, :cond_f0

    .line 417
    iget v0, v0, Lcom/bytedance/sdk/adnet/c/d;->l:I

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    .line 419
    :cond_f0
    const-string v0, "TNCManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTncProbe, updateConfig delay: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0, v10, v2, v3}, Lcom/bytedance/sdk/adnet/c/f;->a(ZJ)V

    goto/16 :goto_6

    .line 389
    :catch_117
    move-exception v0

    move-object v1, v0

    move v0, v5

    .line 390
    :goto_11a
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 391
    const-string v1, "TNCManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleTncProbe, probeProto except, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    move-wide v0, v2

    goto/16 :goto_64

    .line 421
    :cond_139
    iget v0, p0, Lcom/bytedance/sdk/adnet/c/f;->g:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_6

    goto/16 :goto_6

    .line 389
    :catch_141
    move-exception v0

    move-object v1, v0

    move v0, v4

    goto :goto_11a
.end method

.method private a(Z)V
    .registers 10

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v0

    .line 457
    if-nez v0, :cond_7

    .line 469
    :goto_6
    return-void

    .line 460
    :cond_7
    const-string v1, "TNCManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUpdateRemote, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 463
    if-nez p1, :cond_3a

    iget-wide v4, p0, Lcom/bytedance/sdk/adnet/c/f;->b:J

    iget v0, v0, Lcom/bytedance/sdk/adnet/c/d;->k:I

    int-to-long v0, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3a

    .line 464
    const-string v0, "TNCManager"

    const-string v1, "doUpdateRemote, time limit"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 467
    :cond_3a
    iput-wide v2, p0, Lcom/bytedance/sdk/adnet/c/f;->b:J

    .line 468
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/d/f;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/a/a;->b(Z)Z

    goto :goto_6
.end method

.method private a(ZJ)V
    .registers 8

    .prologue
    const/16 v2, 0x2710

    .line 427
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 439
    :goto_a
    return-void

    .line 430
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 431
    iput v2, v1, Landroid/os/Message;->what:I

    .line 432
    if-eqz p1, :cond_24

    const/4 v0, 0x1

    :goto_16
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 433
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_26

    .line 434
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    .line 432
    :cond_24
    const/4 v0, 0x0

    goto :goto_16

    .line 436
    :cond_26
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method private a(I)Z
    .registers 3

    .prologue
    .line 490
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_a

    const/16 v0, 0x190

    if-ge p1, v0, :cond_a

    .line 491
    const/4 v0, 0x1

    .line 493
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 270
    :cond_6
    :goto_6
    return-void

    .line 260
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->d()Ljava/util/Map;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_26

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 267
    :cond_26
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 268
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method private b(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 497
    const/16 v1, 0x64

    if-lt p1, v1, :cond_9

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_a

    .line 509
    :cond_9
    :goto_9
    return v0

    .line 502
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v1

    .line 503
    if-eqz v1, :cond_33

    iget-object v2, v1, Lcom/bytedance/sdk/adnet/c/d;->m:Ljava/lang/String;

    .line 504
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v1, v1, Lcom/bytedance/sdk/adnet/c/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 509
    :cond_33
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 280
    :cond_6
    :goto_6
    return-void

    .line 276
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method private d(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->d()Ljava/util/Map;

    move-result-object v0

    .line 284
    if-nez v0, :cond_9

    move v0, v1

    .line 295
    :goto_8
    return v0

    .line 287
    :cond_9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1f

    :cond_1d
    move v0, v1

    .line 289
    goto :goto_8

    .line 291
    :cond_1f
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_48

    .line 292
    const-string v0, "TNCManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHostMapping, TNC host faild num over limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x1

    goto :goto_8

    :cond_48
    move v0, v1

    .line 295
    goto :goto_8
.end method

.method private f()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    const-string v1, "ttnet_tnc_config"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    const-string v1, "tnc_probe_cmd"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/adnet/c/f;->g:I

    .line 102
    const-string v1, "tnc_probe_version"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/c/f;->h:J

    .line 103
    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 472
    const-string v0, "TNCManager"

    const-string v1, "resetTNCControlState"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iput v2, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    .line 475
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 476
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 477
    iput v2, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    .line 478
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 479
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 480
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "/network/get_network"

    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "/get_domains/v4"

    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "/ies/speed"

    .line 128
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 170
    :cond_1f
    :goto_1f
    return-object p1

    .line 135
    :cond_20
    :try_start_20
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_28} :catch_6a

    move-result-object v1

    .line 137
    :try_start_29
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_10e

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 142
    :goto_2f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "http"

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 144
    :cond_45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 148
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/c/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 149
    const-string v0, "TNCManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleHostMapping, TNC host faild num over limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 138
    :catch_6a
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 139
    :goto_6d
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v1

    move-object v1, v0

    goto :goto_2f

    .line 153
    :cond_73
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->d()Ljava/util/Map;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_7f

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    .line 155
    :cond_7f
    const-string v0, "TNCManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleHostMapping, nomatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 158
    :cond_98
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 163
    const-string v3, "TNCManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleHostMapping, match, origin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 167
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    :cond_f4
    const-string v0, "TNCManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHostMapping, target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 138
    :catch_10e
    move-exception v2

    goto/16 :goto_6d
.end method

.method public declared-synchronized a(Landroid/content/Context;Z)V
    .registers 7

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/f;->d:Z

    if-nez v0, :cond_48

    .line 86
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    .line 87
    iput-boolean p2, p0, Lcom/bytedance/sdk/adnet/c/f;->o:Z

    .line 88
    new-instance v0, Lcom/bytedance/sdk/adnet/c/e;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/adnet/c/e;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->f:Lcom/bytedance/sdk/adnet/c/e;

    .line 89
    if-eqz p2, :cond_15

    .line 90
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/c/f;->f()V

    .line 92
    :cond_15
    const-string v0, "TNCManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTnc, isMainProc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " probeCmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/adnet/c/f;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " probeVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/c/f;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/f;->d:Z
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4a

    .line 96
    :cond_48
    monitor-exit p0

    return-void

    .line 85
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 12

    .prologue
    .line 179
    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    .line 254
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 183
    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/f;->o:Z

    if-eqz v0, :cond_5

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/f;->a(Landroid/content/Context;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_133

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    const/4 v1, 0x0

    .line 192
    :try_start_14
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_136
    .catchall {:try_start_14 .. :try_end_1d} :catchall_133

    .line 196
    :goto_1d
    if-eqz v0, :cond_5

    .line 200
    :try_start_1f
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getIpAddrStr()Ljava/lang/String;

    move-result-object v3

    .line 204
    iget-wide v4, p2, Lcom/bytedance/sdk/adnet/core/n;->h:J

    long-to-int v4, v4

    .line 206
    const-string v5, "http"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    const-string v5, "https"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 210
    :cond_42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 214
    const-string v5, "TNCManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResponse, url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v5

    .line 216
    if-eqz v5, :cond_8b

    iget-boolean v6, v5, Lcom/bytedance/sdk/adnet/c/d;->b:Z

    if-eqz v6, :cond_8b

    .line 217
    invoke-direct {p0, p2, v2}, Lcom/bytedance/sdk/adnet/c/f;->a(Lcom/bytedance/sdk/adnet/core/n;Ljava/lang/String;)V

    .line 220
    :cond_8b
    if-eqz v5, :cond_5

    .line 230
    const-string v6, "TNCManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResponse, url matched: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/adnet/c/f;->j:Ljava/util/HashMap;

    .line 231
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/adnet/c/f;->k:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/adnet/c/f;->m:Ljava/util/HashMap;

    .line 232
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/adnet/c/f;->n:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 230
    invoke-static {v6, v7}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-lez v4, :cond_5

    .line 234
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/adnet/c/f;->a(I)Z

    move-result v6

    if-eqz v6, :cond_13a

    .line 235
    iget v0, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    if-gtz v0, :cond_12b

    iget v0, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    if-lez v0, :cond_12e

    .line 236
    :cond_12b
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/c/f;->g()V

    .line 238
    :cond_12e
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/adnet/c/f;->c(Ljava/lang/String;)V
    :try_end_131
    .catchall {:try_start_1f .. :try_end_131} :catchall_133

    goto/16 :goto_5

    .line 179
    :catchall_133
    move-exception v0

    monitor-exit p0

    throw v0

    .line 194
    :catch_136
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1d

    .line 239
    :cond_13a
    :try_start_13a
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/adnet/c/f;->b(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 240
    iget v6, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    .line 241
    iget-object v6, p0, Lcom/bytedance/sdk/adnet/c/f;->m:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->n:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget v0, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    iget v6, v5, Lcom/bytedance/sdk/adnet/c/d;->h:I

    if-lt v0, v6, :cond_1b3

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->m:Ljava/util/HashMap;

    .line 244
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v6, v5, Lcom/bytedance/sdk/adnet/c/d;->i:I

    if-lt v0, v6, :cond_1b3

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->n:Ljava/util/HashMap;

    .line 245
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v5, v5, Lcom/bytedance/sdk/adnet/c/d;->j:I

    if-lt v0, v5, :cond_1b3

    .line 246
    const-string v0, "TNCManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResponse, url doUpdate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "://"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/bytedance/sdk/adnet/c/f;->a(ZJ)V

    .line 248
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/c/f;->g()V

    .line 250
    :cond_1b3
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/adnet/c/f;->b(Ljava/lang/String;)V
    :try_end_1b6
    .catchall {:try_start_13a .. :try_end_1b6} :catchall_133

    goto/16 :goto_5
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/adnet/core/Request;Ljava/lang/Exception;)V
    .registers 12

    .prologue
    .line 300
    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    .line 362
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 304
    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/f;->o:Z

    if-eqz v0, :cond_5

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/f;->a(Landroid/content/Context;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_145

    move-result v0

    if-eqz v0, :cond_5

    .line 312
    const/4 v1, 0x0

    .line 314
    :try_start_14
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_148
    .catchall {:try_start_14 .. :try_end_1d} :catchall_145

    .line 318
    :goto_1d
    if-eqz v0, :cond_5

    .line 322
    :try_start_1f
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getIpAddrStr()Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/adnet/c/f;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    .line 328
    const-string v5, "http"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    const-string v5, "https"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 337
    :cond_43
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v5

    .line 338
    if-eqz v5, :cond_5

    .line 348
    const-string v6, "TNCManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onError, url matched: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/bytedance/sdk/adnet/c/f;->j:Ljava/util/HashMap;

    .line 349
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/bytedance/sdk/adnet/c/f;->k:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/bytedance/sdk/adnet/c/f;->l:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/bytedance/sdk/adnet/c/f;->m:Ljava/util/HashMap;

    .line 350
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/bytedance/sdk/adnet/c/f;->n:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-static {v6, v4}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget v4, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    .line 352
    iget-object v4, p0, Lcom/bytedance/sdk/adnet/c/f;->j:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->k:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget v0, p0, Lcom/bytedance/sdk/adnet/c/f;->i:I

    iget v4, v5, Lcom/bytedance/sdk/adnet/c/d;->e:I

    if-lt v0, v4, :cond_140

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->j:Ljava/util/HashMap;

    .line 355
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v4, v5, Lcom/bytedance/sdk/adnet/c/d;->f:I

    if-lt v0, v4, :cond_140

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->k:Ljava/util/HashMap;

    .line 356
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v4, v5, Lcom/bytedance/sdk/adnet/c/d;->g:I

    if-lt v0, v4, :cond_140

    .line 357
    const-string v0, "TNCManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onError, url doUpate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/bytedance/sdk/adnet/c/f;->a(ZJ)V

    .line 359
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/c/f;->g()V

    .line 361
    :cond_140
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/adnet/c/f;->b(Ljava/lang/String;)V
    :try_end_143
    .catchall {:try_start_1f .. :try_end_143} :catchall_145

    goto/16 :goto_5

    .line 300
    :catchall_145
    move-exception v0

    monitor-exit p0

    throw v0

    .line 316
    :catch_148
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1d
.end method

.method public b()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 82
    return-void
.end method

.method public c()Lcom/bytedance/sdk/adnet/c/d;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->f:Lcom/bytedance/sdk/adnet/c/e;

    if-eqz v0, :cond_b

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->f:Lcom/bytedance/sdk/adnet/c/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/e;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v0

    .line 109
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/c/f;->c()Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_9

    .line 115
    iget-object v0, v0, Lcom/bytedance/sdk/adnet/c/d;->d:Ljava/util/Map;

    .line 117
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public e()Lcom/bytedance/sdk/adnet/c/e;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f;->f:Lcom/bytedance/sdk/adnet/c/e;

    return-object v0
.end method
