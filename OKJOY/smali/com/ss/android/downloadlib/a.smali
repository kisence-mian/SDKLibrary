.class public Lcom/ss/android/downloadlib/a;
.super Ljava/lang/Object;
.source "AdDownloadCompletedEventHandlerImpl.java"

# interfaces
.implements Lcom/ss/android/downloadad/a/a;
.implements Lcom/ss/android/socialbase/appdownloader/b$c;
.implements Lcom/ss/android/socialbase/downloader/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a$a;,
        Lcom/ss/android/downloadlib/a$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile d:Lcom/ss/android/downloadlib/a;


# instance fields
.field private volatile b:Z

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const-class v0, Lcom/ss/android/downloadlib/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v2, p0, Lcom/ss/android/downloadlib/a;->b:Z

    .line 85
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/b$c;)V

    .line 86
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "check_event_when_app_switch"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 87
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 89
    :cond_1d
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 471
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "check_hijack"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_e

    .line 483
    :cond_d
    :goto_d
    return v0

    .line 474
    :cond_e
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sp_ttdownloader_md5"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 475
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-static {p2}, Lcom/ss/android/downloadlib/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 479
    const/4 v0, 0x2

    goto :goto_d

    .line 481
    :cond_35
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static a()Lcom/ss/android/downloadlib/a;
    .registers 2

    .prologue
    .line 92
    sget-object v0, Lcom/ss/android/downloadlib/a;->d:Lcom/ss/android/downloadlib/a;

    if-nez v0, :cond_13

    .line 93
    const-class v1, Lcom/ss/android/downloadlib/a;

    monitor-enter v1

    .line 94
    :try_start_7
    sget-object v0, Lcom/ss/android/downloadlib/a;->d:Lcom/ss/android/downloadlib/a;

    if-nez v0, :cond_12

    .line 95
    new-instance v0, Lcom/ss/android/downloadlib/a;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a;->d:Lcom/ss/android/downloadlib/a;

    .line 97
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 99
    :cond_13
    sget-object v0, Lcom/ss/android/downloadlib/a;->d:Lcom/ss/android/downloadlib/a;

    return-object v0

    .line 97
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ss/android/socialbase/downloader/g/c;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 269
    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    move-object v0, v1

    .line 284
    :cond_10
    :goto_10
    return-object v0

    .line 272
    :cond_11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 273
    if-eqz v0, :cond_15

    .line 276
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 279
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, p1}, Lcom/ss/android/downloadlib/e/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_10

    :cond_3c
    move-object v0, v1

    .line 284
    goto :goto_10
.end method

.method private a(II)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 682
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 684
    :try_start_5
    const-string v0, "scene"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    const-string v0, "hijack"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_13} :catch_14

    .line 689
    :goto_13
    return-object v1

    .line 686
    :catch_14
    move-exception v0

    .line 687
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_13
.end method

.method public static a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/c;)Lorg/json/JSONObject;
    .registers 12

    .prologue
    const-wide/16 v8, 0x0

    .line 368
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 390
    :cond_6
    :goto_6
    return-object p0

    .line 371
    :cond_7
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    .line 372
    const-string v1, "download_event_opt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    .line 377
    :try_start_18
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->c(Ljava/lang/String;)J

    move-result-wide v0

    .line 379
    const-string v2, "available_space"

    long-to-double v4, v0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 381
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    .line 382
    cmp-long v4, v0, v8

    if-lez v4, :cond_6

    cmp-long v4, v2, v8

    if-lez v4, :cond_6

    .line 383
    const-string v4, "available_space_ratio"

    long-to-double v0, v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-virtual {p0, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_41} :catch_42

    goto :goto_6

    .line 387
    :catch_42
    move-exception v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6
.end method

.method public static a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/c;Z)Lorg/json/JSONObject;
    .registers 13

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 288
    if-eqz p0, :cond_8

    if-nez p1, :cond_9

    .line 364
    :cond_8
    :goto_8
    return-object p0

    .line 292
    :cond_9
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v2

    .line 293
    const-string v3, "download_event_opt"

    invoke-virtual {v2, v3, v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 298
    :try_start_19
    const-string v2, "download_id"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 299
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v2, "url"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v2, "download_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aw()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 302
    const-string v2, "cur_bytes"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 303
    const-string v2, "total_bytes"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 304
    const-string v2, "network_quality"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ad()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/g;->a()Lcom/ss/android/socialbase/downloader/i/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/i/g;->b()Lcom/ss/android/socialbase/downloader/i/h;

    move-result-object v2

    .line 306
    const-string v3, "current_network_quality"

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/i/h;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v3, "only_wifi"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->x()Z

    move-result v2

    if-eqz v2, :cond_1ce

    move v2, v0

    :goto_72
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 308
    const-string v3, "need_https_degrade"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ai()Z

    move-result v2

    if-eqz v2, :cond_1d1

    move v2, v0

    :goto_7e
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 309
    const-string v3, "https_degrade_retry_used"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->t()Z

    move-result v2

    if-eqz v2, :cond_1d4

    move v2, v0

    :goto_8a
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 310
    const-string v2, "chunk_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    const-string v2, "retry_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->D()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    const-string v2, "cur_retry_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->al()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 313
    const-string v3, "need_retry_delay"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aj()Z

    move-result v2

    if-eqz v2, :cond_1d7

    move v2, v0

    :goto_b1
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    const-string v3, "backup_url_used"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->J()Z

    move-result v2

    if-eqz v2, :cond_1da

    move v2, v0

    :goto_bd
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 315
    const-string v3, "head_connection_error_msg"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1dd

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->c()Ljava/lang/String;

    move-result-object v2

    :goto_cc
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v3, "need_independent_process"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->T()Z

    move-result v2

    if-eqz v2, :cond_1e1

    move v2, v0

    :goto_d8
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 318
    const-string v2, "total_retry_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->F()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    const-string v2, "cur_retry_time_in_total"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->G()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 320
    const-string v2, "real_download_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ax()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 321
    const-string v3, "chunk_downgrade_retry_used"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ap()Z

    move-result v2

    if-eqz v2, :cond_1e4

    move v2, v0

    :goto_ff
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 322
    const-string v3, "need_chunk_downgrade_retry"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ao()Z

    move-result v2

    if-eqz v2, :cond_1e7

    move v2, v0

    :goto_10b
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 323
    const-string v2, "failed_resume_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aZ()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 324
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->bf()I

    move-result v2

    .line 325
    const-string v3, "preconnect_level"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string v2, "retry_schedule_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->N()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string v3, "rw_concurrent"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->O()Z

    move-result v2

    if-eqz v2, :cond_1ea

    move v2, v0

    :goto_132
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    if-nez p2, :cond_176

    .line 331
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    .line 332
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ax()J
    :try_end_142
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_142} :catch_1c8

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 333
    cmpl-double v6, v2, v8

    if-lez v6, :cond_176

    cmpl-double v6, v4, v8

    if-lez v6, :cond_176

    .line 334
    div-double/2addr v2, v4

    .line 336
    :try_start_153
    const-string v4, "download_speed"

    invoke-virtual {p0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_158} :catch_1f4
    .catch Lorg/json/JSONException; {:try_start_153 .. :try_end_158} :catch_1c8

    .line 340
    :goto_158
    :try_start_158
    sget-object v4, Lcom/ss/android/downloadlib/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download speed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB/s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_176
    .catch Lorg/json/JSONException; {:try_start_158 .. :try_end_176} :catch_1c8

    .line 345
    :cond_176
    :try_start_176
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v2

    .line 346
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->m(I)Z

    move-result v2

    .line 347
    const-string v3, "is_download_service_foreground"

    if-eqz v2, :cond_1ed

    :goto_18a
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_18d} :catch_1ef
    .catch Lorg/json/JSONException; {:try_start_176 .. :try_end_18d} :catch_1c8

    .line 352
    :goto_18d
    :try_start_18d
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aC()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a9

    .line 353
    const-string v0, "backup_url_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aC()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    const-string v0, "cur_backup_url_index"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->s()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 356
    :cond_1a9
    const-string v0, "clear_space_restart_times"

    .line 357
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/d;->a()Lcom/ss/android/downloadlib/a/c/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/a/c/d;->b(Ljava/lang/String;)I

    move-result v1

    .line 356
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 358
    const-string v0, "mime_type"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/c;)Lorg/json/JSONObject;
    :try_end_1c6
    .catch Lorg/json/JSONException; {:try_start_18d .. :try_end_1c6} :catch_1c8

    goto/16 :goto_8

    .line 361
    :catch_1c8
    move-exception v0

    .line 362
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_8

    :cond_1ce
    move v2, v1

    .line 307
    goto/16 :goto_72

    :cond_1d1
    move v2, v1

    .line 308
    goto/16 :goto_7e

    :cond_1d4
    move v2, v1

    .line 309
    goto/16 :goto_8a

    :cond_1d7
    move v2, v1

    .line 313
    goto/16 :goto_b1

    :cond_1da
    move v2, v1

    .line 314
    goto/16 :goto_bd

    .line 315
    :cond_1dd
    :try_start_1dd
    const-string v2, ""

    goto/16 :goto_cc

    :cond_1e1
    move v2, v1

    .line 316
    goto/16 :goto_d8

    :cond_1e4
    move v2, v1

    .line 321
    goto/16 :goto_ff

    :cond_1e7
    move v2, v1

    .line 322
    goto/16 :goto_10b

    :cond_1ea
    move v2, v1

    .line 328
    goto/16 :goto_132

    :cond_1ed
    move v0, v1

    .line 347
    goto :goto_18a

    .line 348
    :catch_1ef
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f3
    .catch Lorg/json/JSONException; {:try_start_1dd .. :try_end_1f3} :catch_1c8

    goto :goto_18d

    .line 337
    :catch_1f4
    move-exception v4

    goto/16 :goto_158
.end method

.method private static a(Lcom/ss/android/downloadad/a/b/a;)V
    .registers 7

    .prologue
    .line 415
    if-nez p0, :cond_3

    .line 435
    :goto_2
    return-void

    .line 418
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/d;->a()Lcom/ss/android/downloadlib/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/c/d;->b()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/a;->k()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 419
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 421
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/d;->a()Lcom/ss/android/downloadlib/a/c/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/a/c/d;->b()Landroid/util/LongSparseArray;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/a;->k()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 422
    if-nez v1, :cond_37

    .line 423
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 426
    :cond_37
    :try_start_37
    const-string v2, "finish_reason"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_3c} :catch_65

    .line 431
    :cond_3c
    :goto_3c
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 432
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/c;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 433
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v1, v0}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;I)V

    .line 434
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/downloadlib/d/a;->a(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_2

    .line 427
    :catch_65
    move-exception v0

    .line 428
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3c
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a;Ljava/util/concurrent/ConcurrentHashMap;I)V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/a;->a(Ljava/util/concurrent/ConcurrentHashMap;I)V

    return-void
.end method

.method public static declared-synchronized a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 15
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 145
    const-class v12, Lcom/ss/android/downloadlib/a;

    monitor-enter v12

    if-eqz p0, :cond_7

    if-nez p1, :cond_c

    .line 146
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_87
    .catchall {:try_start_7 .. :try_end_a} :catchall_8d

    .line 176
    :cond_a
    :goto_a
    monitor-exit v12

    return-void

    .line 149
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/a;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 152
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/a;->b(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/downloadad/a/b/a;)Ljava/lang/String;

    move-result-object v8

    .line 154
    invoke-static {p1}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadad/a/b/a;)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadad/a/b/a;->c(J)V

    .line 156
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/a/b/a;->a(I)V

    .line 157
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p0, v8}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/downloadad/a/b/a;Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/ss/android/downloadlib/g;->a()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {v0, p0, v8}, Lcom/ss/android/downloadlib/g;->a(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V

    .line 160
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 161
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/ss/android/downloadlib/a;->b(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v0

    .line 164
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;J)V

    .line 166
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/a;->n()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 167
    invoke-static {}, Lcom/ss/android/downloadlib/a/a/a;->a()Lcom/ss/android/downloadlib/a/a/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/a;->b()J

    move-result-wide v6

    .line 168
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/a;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v11

    .line 167
    invoke-virtual/range {v1 .. v11}, Lcom/ss/android/downloadlib/a/a/a;->a(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_7b
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, v8}, Lcom/ss/android/downloadlib/a/d/a;->a(Lcom/ss/android/socialbase/downloader/g/c;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_86} :catch_87
    .catchall {:try_start_c .. :try_end_86} :catchall_8d

    goto :goto_a

    .line 173
    :catch_87
    move-exception v0

    .line 174
    :try_start_88
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/Throwable;)V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8d

    goto/16 :goto_a

    .line 145
    :catchall_8d
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method private a(Ljava/util/concurrent/ConcurrentHashMap;I)V
    .registers 13
    .param p1    # Ljava/util/concurrent/ConcurrentHashMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/downloadad/a/b/a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 554
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadad/a/b/a;

    .line 555
    iget-object v5, v0, Lcom/ss/android/downloadad/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 556
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 557
    :cond_31
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->c()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_51

    .line 558
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->e()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0xf731400

    cmp-long v5, v6, v8

    if-ltz v5, :cond_11

    .line 560
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 562
    :cond_51
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->c()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e5

    .line 563
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->e()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0x240c8400

    cmp-long v5, v6, v8

    if-ltz v5, :cond_71

    .line 565
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 566
    :cond_71
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 567
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 568
    :cond_87
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Lcom/ss/android/downloadad/a/b/a;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 570
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->m()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_98

    .line 571
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->m()I

    move-result p2

    .line 573
    :cond_98
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5, p2}, Lcom/ss/android/downloadlib/a;->a(II)Lorg/json/JSONObject;

    move-result-object v5

    .line 575
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->k()I

    move-result v6

    invoke-static {v5, v6}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;I)V

    .line 576
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->k()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v6

    .line 577
    if-eqz v6, :cond_ce

    .line 579
    :try_start_c5
    const-string v7, "uninstall_resume_count"

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->bb()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_ce} :catch_fa

    .line 584
    :cond_ce
    :goto_ce
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/ss/android/downloadlib/d/a;->b(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 585
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-static {v0}, Lcom/ss/android/downloadlib/a/c/d;->a(Lcom/ss/android/downloadad/a/b/a;)V

    goto/16 :goto_11

    .line 589
    :cond_e5
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 592
    :cond_f2
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/b/c;->a(Ljava/util/List;)V

    .line 593
    return-void

    .line 580
    :catch_fa
    move-exception v6

    goto :goto_ce
.end method

.method public static a(Lorg/json/JSONObject;I)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    if-nez p0, :cond_5

    .line 140
    :cond_4
    :goto_4
    return-void

    .line 109
    :cond_5
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v3

    .line 110
    const-string v0, "anti_hijack_report_config"

    invoke-virtual {v3, v0}, Lcom/ss/android/socialbase/downloader/k/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_68

    .line 113
    :try_start_11
    const-string v4, "report_installer_pkg_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-static {v4}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/m/a$a;

    move-result-object v4

    .line 115
    if-eqz v4, :cond_38

    .line 116
    const-string v5, "installer_package_name"

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/m/a$a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v5, "installer_version_code"

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/m/a$a;->f()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v5, "installer_version_name"

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/m/a$a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_38
    const-string v4, "report_file_manager_pkg_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/m/a$a;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_5f

    .line 123
    const-string v4, "file_manager_package_name"

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/m/a$a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v4, "file_manager_version_code"

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/m/a$a;->f()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string v4, "file_manager_version_name"

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/m/a$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_5f
    const-string v0, "rom_version"

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_68} :catch_83

    .line 132
    :cond_68
    :goto_68
    const-string v0, "report_unknown_source"

    invoke-virtual {v3, v0, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 134
    :try_start_70
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;)Z

    move-result v0

    .line 135
    const-string v3, "is_unknown_source_enabled"

    if-eqz v0, :cond_88

    move v0, v1

    :goto_7d
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_80} :catch_81

    goto :goto_4

    .line 136
    :catch_81
    move-exception v0

    goto :goto_4

    .line 128
    :catch_83
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_68

    :cond_88
    move v0, v2

    .line 135
    goto :goto_7d
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a;Z)Z
    .registers 2

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/ss/android/downloadlib/a;->b:Z

    return p1
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/downloadad/a/b/a;)Ljava/lang/String;
    .registers 7
    .param p0    # Lcom/ss/android/socialbase/downloader/g/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ss/android/downloadad/a/b/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 492
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 495
    :try_start_14
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 496
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 497
    if-eqz v1, :cond_2c

    .line 498
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2c} :catch_5b

    .line 504
    :cond_2c
    :goto_2c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 505
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 507
    :try_start_41
    const-string v1, "real_package_name"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string v1, "input_package_name"

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_4f} :catch_60

    .line 512
    :goto_4f
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    const-string v3, "embeded_ad"

    const-string v4, "package_name_error"

    invoke-virtual {v1, v3, v4, v2, p1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 516
    :goto_5a
    return-object v0

    .line 500
    :catch_5b
    move-exception v1

    .line 501
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    .line 509
    :catch_60
    move-exception v1

    .line 510
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4f

    .line 516
    :cond_65
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a
.end method

.method private b(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/appdownloader/a;)V
    .registers 8
    .param p1    # Lcom/ss/android/socialbase/downloader/g/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 608
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v1

    .line 609
    if-nez v1, :cond_b

    .line 623
    :goto_a
    return-void

    .line 612
    :cond_b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 613
    invoke-virtual {p2, v2}, Lcom/ss/android/socialbase/appdownloader/a;->a(Lorg/json/JSONObject;)V

    .line 615
    :try_start_13
    const-string v0, "download_id"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 616
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 617
    const-string v0, "url"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2e} :catch_41

    .line 621
    :goto_2e
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v2, v0}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;I)V

    .line 622
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v3, "embeded_ad"

    const-string v4, "anti_hijack_result"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_a

    .line 618
    :catch_41
    move-exception v0

    .line 619
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2e
.end method

.method private c(Ljava/lang/String;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const-wide/16 v2, 0x4e20

    .line 444
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 460
    :cond_8
    :goto_8
    return-void

    .line 447
    :cond_9
    const/16 v0, 0xf

    .line 448
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 449
    :goto_e
    if-lez v0, :cond_8

    .line 451
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ss/android/downloadlib/e/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 452
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;)V

    goto :goto_8

    .line 455
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    if-eqz v0, :cond_8

    .line 458
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_e
.end method


# virtual methods
.method public a(I)V
    .registers 8

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/a;->b:Z

    if-nez v0, :cond_13

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 542
    iget-wide v2, p0, Lcom/ss/android/downloadlib/a;->c:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-gez v2, :cond_14

    .line 548
    :cond_13
    :goto_13
    return-void

    .line 545
    :cond_14
    iput-wide v0, p0, Lcom/ss/android/downloadlib/a;->c:J

    .line 546
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/a$a;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/a$a;-><init>(Lcom/ss/android/downloadlib/a;I)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    goto :goto_13
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;JJJJJZ)V
    .registers 21

    .prologue
    .line 706
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v1

    .line 707
    if-nez v1, :cond_e

    .line 708
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    .line 725
    :goto_d
    return-void

    .line 712
    :cond_e
    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 713
    const-string v0, "space_before"

    long-to-double v4, p2

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 714
    const-string v0, "space_cleaned"

    sub-long v4, p4, p2

    long-to-double v4, v4

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 715
    const-string v0, "clean_up_time_cost"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 716
    const-string v3, "is_download_restarted"

    if-eqz p12, :cond_6e

    const/4 v0, 0x1

    :goto_3d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 717
    const-string v0, "byte_required"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 718
    const-string v0, "clear_sleep_time"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/ss/android/downloadlib/d/a;->a(Lcom/ss/android/socialbase/downloader/g/c;Lorg/json/JSONObject;)V

    .line 720
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v3, "embeded_ad"

    const-string v4, "cleanup"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_68} :catch_69

    goto :goto_d

    .line 722
    :catch_69
    move-exception v0

    .line 723
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 716
    :cond_6e
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/appdownloader/a;)V
    .registers 5

    .prologue
    .line 597
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 605
    :cond_4
    :goto_4
    return-void

    .line 600
    :cond_5
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    .line 601
    const-string v1, "anti_hijack_report_config"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/k/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_4

    .line 603
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/a;->b(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/appdownloader/a;)V

    goto :goto_4
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_17
    .catchall {:try_start_1 .. :try_end_4} :catchall_1c

    move-result v0

    if-eqz v0, :cond_9

    .line 219
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 184
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "handleAppInstalled in main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1c

    .line 216
    :catch_17
    move-exception v0

    .line 217
    :try_start_18
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_7

    .line 181
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 187
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/a/b/c;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/ss/android/downloadad/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_7

    .line 192
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 195
    invoke-static {}, Lcom/ss/android/downloadlib/a/a;->a()Lcom/ss/android/downloadlib/a/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/ss/android/downloadlib/a/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)Z

    move-result v1

    .line 196
    if-nez v1, :cond_45

    .line 198
    invoke-static {}, Lcom/ss/android/downloadlib/a/a;->a()Lcom/ss/android/downloadlib/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/downloadlib/a/a;->a(Ljava/lang/String;)V

    .line 201
    :cond_45
    invoke-static {}, Lcom/ss/android/downloadlib/g;->a()Lcom/ss/android/downloadlib/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;)Lcom/ss/android/downloadlib/a/f;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_56

    .line 203
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/f;->e()V

    .line 205
    :cond_56
    invoke-static {}, Lcom/ss/android/downloadlib/a/a/a;->a()Lcom/ss/android/downloadlib/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/a/a/a;->b(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_87

    .line 210
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    .line 211
    invoke-static {}, Lcom/ss/android/downloadlib/g;->a()Lcom/ss/android/downloadlib/g;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/ss/android/downloadlib/g;->b(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V

    .line 212
    invoke-static {v0}, Lcom/ss/android/downloadlib/a/c/d;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_7

    .line 214
    :cond_87
    invoke-static {}, Lcom/ss/android/downloadlib/g;->a()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/downloadlib/g;->b(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_8f} :catch_17
    .catchall {:try_start_1f .. :try_end_8f} :catchall_1c

    goto/16 :goto_7
.end method

.method public a(Ljava/lang/String;J)V
    .registers 8

    .prologue
    .line 395
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "check_hijack"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_e

    .line 412
    :cond_d
    :goto_d
    return-void

    .line 398
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_d

    .line 401
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/a$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/downloadlib/a$1;-><init>(Lcom/ss/android/downloadlib/a;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    goto :goto_d
.end method

.method public a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 7

    .prologue
    const/4 v0, 0x4

    .line 228
    if-nez p2, :cond_4

    .line 263
    :cond_3
    :goto_3
    return-void

    .line 232
    :cond_4
    invoke-static {p2}, Lcom/ss/android/downloadlib/e/g;->a(Lcom/ss/android/downloadad/a/b/a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p2, Lcom/ss/android/downloadad/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/a;->m()I

    move-result v1

    if-ne v1, v0, :cond_7a

    .line 242
    :goto_1a
    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/ss/android/downloadlib/a;->a(II)Lorg/json/JSONObject;

    move-result-object v0

    .line 244
    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/a;->k()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;I)V

    .line 245
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/a;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_65

    .line 248
    :try_start_43
    const-string v2, "uninstall_resume_count"

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->bb()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4c} :catch_7c

    .line 252
    :goto_4c
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->bg()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "anti_hijack_attempt"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 254
    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/a;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_65

    .line 256
    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/appdownloader/a;->a(Lorg/json/JSONObject;)V

    .line 260
    :cond_65
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/a;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "install_finish"

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 261
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/e;->a()Lcom/ss/android/downloadlib/a/b/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/downloadlib/a/b/e;->a(Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_3

    .line 240
    :cond_7a
    const/4 v0, 0x3

    goto :goto_1a

    .line 249
    :catch_7c
    move-exception v2

    goto :goto_4c
.end method

.method public b()V
    .registers 2

    .prologue
    .line 521
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/a;->a(I)V

    .line 522
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 631
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/a$b;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/a$b;-><init>(Lcom/ss/android/downloadlib/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    .line 632
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 526
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/a;->a(I)V

    .line 527
    return-void
.end method
