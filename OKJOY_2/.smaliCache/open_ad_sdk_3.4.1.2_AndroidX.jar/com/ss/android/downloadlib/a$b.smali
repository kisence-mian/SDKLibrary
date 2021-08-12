.class Lcom/ss/android/downloadlib/a$b;
.super Ljava/lang/Object;
.source "AdDownloadCompletedEventHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:J

.field private d:I

.field private e:J


# direct methods
.method private constructor <init>(JIJI)V
    .registers 7

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-wide p1, p0, Lcom/ss/android/downloadlib/a$b;->a:J

    .line 289
    iput p3, p0, Lcom/ss/android/downloadlib/a$b;->b:I

    .line 290
    iput-wide p4, p0, Lcom/ss/android/downloadlib/a$b;->c:J

    .line 291
    iput p6, p0, Lcom/ss/android/downloadlib/a$b;->d:I

    .line 292
    return-void
.end method

.method synthetic constructor <init>(JIJILcom/ss/android/downloadlib/a$1;)V
    .registers 8

    .line 280
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/downloadlib/a$b;-><init>(JIJI)V

    return-void
.end method

.method private a(ZLcom/ss/android/downloadad/a/b/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLorg/json/JSONObject;)I
    .registers 12

    .line 369
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 371
    const-string v1, "install_failed_check_ttmd5"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_25

    .line 372
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->checkMd5Status()I

    move-result v1

    .line 374
    :try_start_15
    const-string v3, "ttmd5_status"

    invoke-virtual {p5, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    .line 377
    goto :goto_1c

    .line 375
    :catchall_1b
    move-exception v3

    .line 378
    :goto_1c
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->a(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 379
    const/16 p1, 0x7d5

    return p1

    .line 383
    :cond_25
    iget v1, p0, Lcom/ss/android/downloadlib/a$b;->d:I

    const/16 v3, 0x7d0

    if-eq v1, v3, :cond_2c

    .line 384
    return v1

    .line 387
    :cond_2c
    const-string v1, "install_failed_check_signature"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_63

    .line 388
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/h/k;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 389
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/h/k;->g(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 390
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/ss/android/downloadlib/h/k;->h(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p3

    .line 391
    invoke-static {p3, v0}, Lcom/ss/android/downloadlib/h/k;->a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p3

    if-nez p3, :cond_63

    .line 392
    const/16 p1, 0x7d6

    return p1

    .line 397
    :cond_63
    if-nez p1, :cond_68

    .line 399
    const/16 p1, 0x7d2

    return p1

    .line 402
    :cond_68
    iget-wide v0, p0, Lcom/ss/android/downloadlib/a$b;->e:J

    iget-wide v4, p0, Lcom/ss/android/downloadlib/a$b;->c:J

    cmp-long p1, v0, v4

    if-lez p1, :cond_91

    .line 405
    :try_start_70
    const-string p1, "install_time"

    sub-long/2addr v0, v4

    invoke-virtual {p5, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 407
    const-string p1, "install_again"

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->B()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/ss/android/downloadlib/a$b;->c:J

    cmp-long p2, p2, v0

    if-lez p2, :cond_83

    goto :goto_84

    :cond_83
    const/4 v2, 0x0

    :goto_84
    invoke-virtual {p5, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_87
    .catchall {:try_start_70 .. :try_end_87} :catchall_88

    .line 410
    goto :goto_89

    .line 408
    :catchall_88
    move-exception p1

    .line 411
    :goto_89
    if-nez p4, :cond_8e

    .line 412
    const/16 p1, 0x7d3

    return p1

    .line 414
    :cond_8e
    const/16 p1, 0x7d4

    return p1

    .line 418
    :cond_91
    return v3
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a$b;)V
    .registers 1

    .line 280
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$b;->b()V

    return-void
.end method

.method private b()V
    .registers 3

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/a$b;->e:J

    .line 296
    return-void
.end method


# virtual methods
.method a()Z
    .registers 22

    .line 315
    move-object/from16 v7, p0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-wide v1, v7, Lcom/ss/android/downloadlib/a$b;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v8

    .line 316
    const/4 v0, 0x0

    if-eqz v8, :cond_104

    invoke-static {v8}, Lcom/ss/android/downloadlib/h/k;->b(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result v1

    if-nez v1, :cond_104

    iget-object v1, v8, Lcom/ss/android/downloadad/a/b/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto/16 :goto_104

    .line 319
    :cond_1f
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {v8}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v4

    .line 320
    if-nez v4, :cond_32

    .line 321
    return v0

    .line 324
    :cond_32
    invoke-virtual {v8}, Lcom/ss/android/downloadad/a/b/b;->L()J

    move-result-wide v9

    .line 325
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/io/File;)J

    move-result-wide v11

    .line 326
    const-wide/32 v1, 0x1f400000

    const-wide/16 v5, 0xa

    div-long v5, v11, v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 327
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v13

    .line 329
    nop

    .line 331
    long-to-double v1, v1

    long-to-double v5, v13

    const-wide/high16 v15, 0x4004000000000000L    # 2.5

    mul-double/2addr v15, v5

    add-double/2addr v1, v15

    .line 332
    const-wide/16 v15, -0x1

    cmp-long v3, v9, v15

    const/16 v17, 0x1

    if-lez v3, :cond_67

    cmp-long v3, v13, v15

    if-lez v3, :cond_67

    move-wide v15, v5

    long-to-double v5, v9

    cmpg-double v1, v5, v1

    if-gez v1, :cond_68

    .line 333
    goto :goto_6a

    .line 332
    :cond_67
    move-wide v15, v5

    .line 336
    :cond_68
    move/from16 v0, v17

    :goto_6a
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;)Z

    move-result v18

    .line 338
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 339
    move-object/from16 v1, p0

    move v2, v0

    move-object v3, v8

    move/from16 v5, v18

    move-object/from16 v19, v6

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/downloadlib/a$b;->a(ZLcom/ss/android/downloadad/a/b/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLorg/json/JSONObject;)I

    move-result v1

    iput v1, v7, Lcom/ss/android/downloadlib/a$b;->d:I

    .line 342
    :try_start_85
    const-string v2, "fail_status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8b} :catch_f4

    move-object/from16 v3, v19

    :try_start_8d
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v1, "available_space"

    const-wide/32 v4, 0x100000

    div-long v19, v9, v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v1, "total_space"

    div-long/2addr v11, v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-wide/16 v1, 0x0

    cmp-long v6, v13, v1

    if-lez v6, :cond_b8

    .line 346
    const-string v11, "package_size"

    div-long/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    :cond_b8
    const-string v4, "space_enough"

    const/4 v5, 0x2

    if-eqz v0, :cond_c0

    move/from16 v0, v17

    goto :goto_c1

    :cond_c0
    move v0, v5

    :goto_c1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    cmp-long v0, v9, v1

    if-lez v0, :cond_d5

    if-lez v6, :cond_d5

    .line 350
    const-string v0, "available_space_ratio"

    long-to-double v1, v9

    div-double/2addr v1, v15

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 354
    :cond_d5
    const-string v0, "permission_unknown_source_install"

    if-eqz v18, :cond_dc

    move/from16 v1, v17

    goto :goto_dd

    :cond_dc
    move v1, v5

    :goto_dd
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v0, "is_update_download"

    invoke-virtual {v8}, Lcom/ss/android/downloadad/a/b/b;->U()Z

    move-result v1

    if-eqz v1, :cond_ee

    move/from16 v5, v17

    :cond_ee
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_f1} :catch_f2

    .line 359
    goto :goto_fa

    .line 357
    :catch_f2
    move-exception v0

    goto :goto_f7

    :catch_f4
    move-exception v0

    move-object/from16 v3, v19

    .line 358
    :goto_f7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    :goto_fa
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    const-string v1, "install_failed"

    invoke-virtual {v0, v1, v3, v8}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 361
    return v17

    .line 317
    :cond_104
    :goto_104
    return v0
.end method

.method public run()V
    .registers 5

    .line 301
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a$b;->a()Z

    move-result v0

    .line 302
    if-eqz v0, :cond_11

    .line 303
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/a$b;->a:J

    iget v3, p0, Lcom/ss/android/downloadlib/a$b;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/a;->a(JI)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 307
    :cond_11
    goto :goto_16

    .line 305
    :catchall_12
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 308
    :goto_16
    return-void
.end method
