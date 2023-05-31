.class public Lcom/ss/android/downloadlib/a/c/a;
.super Ljava/lang/Object;
.source "AppDownloadDiskSpaceHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/p;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 181
    :try_start_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/f;->c(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v0

    .line 185
    :goto_4
    return-wide v0

    .line 182
    :catch_5
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    const-wide/16 v0, 0x0

    goto :goto_4
.end method

.method private a()V
    .registers 2

    .prologue
    .line 118
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->o()Lcom/ss/android/a/a/a/d;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_9

    .line 121
    invoke-interface {v0}, Lcom/ss/android/a/a/a/d;->a()V

    .line 125
    :cond_9
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/c;->a()V

    .line 128
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/c;->b()V

    .line 129
    return-void
.end method

.method private a(JJJJJ)V
    .registers 24

    .prologue
    .line 162
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadlib/a/c/a;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    .line 163
    if-nez v1, :cond_11

    .line 177
    :goto_10
    return-void

    .line 167
    :cond_11
    const/4 v12, 0x0

    .line 168
    cmp-long v0, p3, p5

    if-lez v0, :cond_17

    .line 169
    const/4 v12, 0x1

    .line 171
    :cond_17
    :try_start_17
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v0 .. v12}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/socialbase/downloader/g/c;JJJJJZ)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_27} :catch_28

    goto :goto_10

    .line 174
    :catch_28
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method private a(Lcom/ss/android/socialbase/downloader/k/a;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 99
    const-string v2, "clear_space_use_disk_handler"

    invoke-virtual {p1, v2, v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_b

    .line 114
    :cond_a
    :goto_a
    return v0

    .line 105
    :cond_b
    const-string v2, "clear_space_min_time_interval"

    const-wide/32 v4, 0x927c0

    invoke-virtual {p1, v2, v4, v5}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/ss/android/downloadlib/a/c/d;->a()Lcom/ss/android/downloadlib/a/c/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ss/android/downloadlib/a/c/d;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 110
    cmp-long v2, v4, v2

    if-ltz v2, :cond_a

    move v0, v1

    .line 114
    goto :goto_a
.end method

.method private b(Lcom/ss/android/socialbase/downloader/k/a;)J
    .registers 10

    .prologue
    const-wide/16 v0, 0x1388

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    .line 133
    const-string v2, "clear_space_sleep_time"

    invoke-virtual {p1, v2, v4, v5}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 134
    cmp-long v6, v2, v4

    if-gtz v6, :cond_11

    move-wide v0, v4

    .line 148
    :goto_10
    return-wide v0

    .line 137
    :cond_11
    cmp-long v4, v2, v0

    if-lez v4, :cond_3d

    .line 140
    :goto_15
    const-string v2, "AppDownloadDiskSpaceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waiting for space clear, sleepTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/ss/android/downloadlib/e/f;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 142
    :try_start_2d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_38

    .line 147
    :goto_30
    const-string v2, "AppDownloadDiskSpaceHandler"

    const-string v3, "waiting end!"

    invoke-static {v2, v3, v7}, Lcom/ss/android/downloadlib/e/f;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_10

    .line 143
    :catch_38
    move-exception v2

    .line 145
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_30

    :cond_3d
    move-wide v0, v2

    goto :goto_15
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 41
    iput p1, p0, Lcom/ss/android/downloadlib/a/c/a;->a:I

    .line 42
    return-void
.end method

.method public a(JJLcom/ss/android/socialbase/downloader/d/o;)Z
    .registers 21

    .prologue
    .line 46
    iget v2, p0, Lcom/ss/android/downloadlib/a/c/a;->a:I

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v2

    .line 48
    invoke-direct {p0, v2}, Lcom/ss/android/downloadlib/a/c/a;->a(Lcom/ss/android/socialbase/downloader/k/a;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 50
    const/4 v2, 0x0

    .line 95
    :goto_d
    return v2

    .line 54
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 55
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/d;->a()Lcom/ss/android/downloadlib/a/c/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/downloadlib/a/c/d;->d()V

    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ss/android/downloadlib/a/c/a;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 60
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/c/a;->a()V

    .line 62
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ss/android/downloadlib/a/c/a;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 66
    const-wide/16 v12, 0x0

    .line 68
    cmp-long v8, v6, p3

    if-gez v8, :cond_4d

    .line 74
    invoke-direct {p0, v2}, Lcom/ss/android/downloadlib/a/c/a;->b(Lcom/ss/android/socialbase/downloader/k/a;)J

    move-result-wide v12

    .line 75
    const-wide/16 v8, 0x0

    cmp-long v2, v12, v8

    if-lez v2, :cond_4d

    .line 77
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ss/android/downloadlib/a/c/a;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 82
    :cond_4d
    const-string v2, "AppDownloadDiskSpaceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cleanUpDisk, byteRequired = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", byteAvailableAfter = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", cleaned = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v8, v6, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {v2, v3, v8}, Lcom/ss/android/downloadlib/e/f;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v3, p0

    move-wide/from16 v8, p3

    .line 86
    invoke-direct/range {v3 .. v13}, Lcom/ss/android/downloadlib/a/c/a;->a(JJJJJ)V

    .line 88
    cmp-long v2, v6, p3

    if-gez v2, :cond_8a

    .line 89
    const/4 v2, 0x0

    goto :goto_d

    .line 92
    :cond_8a
    if-eqz p5, :cond_8f

    .line 93
    invoke-interface/range {p5 .. p5}, Lcom/ss/android/socialbase/downloader/d/o;->a()V

    .line 95
    :cond_8f
    const/4 v2, 0x1

    goto/16 :goto_d
.end method
