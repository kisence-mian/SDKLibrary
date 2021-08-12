.class public Lcom/ss/android/downloadlib/addownload/c/a;
.super Ljava/lang/Object;
.source "AppDownloadDiskSpaceHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/r;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 2

    .line 118
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->o()Lcom/ss/android/a/a/a/e;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_9

    .line 121
    invoke-interface {v0}, Lcom/ss/android/a/a/a/e;->a()V

    .line 125
    :cond_9
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/c;->a()V

    .line 128
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/c;->b()V

    .line 129
    return-void
.end method

.method private a(JJJJJ)V
    .registers 27

    .line 162
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    move-object/from16 v1, p0

    iget v2, v1, Lcom/ss/android/downloadlib/addownload/c/a;->a:I

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v4

    .line 163
    if-nez v4, :cond_13

    .line 164
    return-void

    .line 167
    :cond_13
    const/4 v0, 0x0

    .line 168
    cmp-long v2, p3, p5

    if-lez v2, :cond_1b

    .line 169
    const/4 v0, 0x1

    move v15, v0

    goto :goto_1c

    .line 168
    :cond_1b
    move v15, v0

    .line 171
    :goto_1c
    :try_start_1c
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v3

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    invoke-virtual/range {v3 .. v15}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JJJJJZ)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2d} :catch_2e

    .line 176
    goto :goto_32

    .line 174
    :catch_2e
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    :goto_32
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/a;)Z
    .registers 11

    .line 99
    const-string v0, "clear_space_use_disk_handler"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    .line 101
    return v1

    .line 105
    :cond_b
    const-wide/32 v3, 0x927c0

    const-string v0, "clear_space_min_time_interval"

    invoke-virtual {p1, v0, v3, v4}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v3

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/d;->a()Lcom/ss/android/downloadlib/addownload/c/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/c/d;->b()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 110
    cmp-long p1, v5, v3

    if-gez p1, :cond_26

    .line 112
    return v1

    .line 114
    :cond_26
    return v2
.end method

.method private b(Lcom/ss/android/socialbase/downloader/g/a;)J
    .registers 7

    .line 133
    const-string v0, "clear_space_sleep_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v3

    .line 134
    cmp-long p1, v3, v1

    if-gtz p1, :cond_d

    .line 135
    return-wide v1

    .line 137
    :cond_d
    const-wide/16 v0, 0x1388

    cmp-long p1, v3, v0

    if-lez p1, :cond_14

    .line 138
    move-wide v3, v0

    .line 140
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "waiting for space clear, sleepTime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppDownloadDiskSpaceHandler"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ss/android/downloadlib/h/j;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 142
    :try_start_2d
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_31

    .line 146
    goto :goto_35

    .line 143
    :catch_31
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 147
    :goto_35
    const-string p1, "waiting end!"

    invoke-static {v0, p1, v1}, Lcom/ss/android/downloadlib/h/j;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 148
    return-wide v3
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/ss/android/downloadlib/addownload/c/a;->a:I

    .line 43
    return-void
.end method

.method public a(JJLcom/ss/android/socialbase/downloader/depend/q;)Z
    .registers 25

    .line 47
    move-object/from16 v11, p0

    move-wide/from16 v12, p3

    iget v0, v11, Lcom/ss/android/downloadlib/addownload/c/a;->a:I

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 49
    invoke-direct {v11, v0}, Lcom/ss/android/downloadlib/addownload/c/a;->a(Lcom/ss/android/socialbase/downloader/g/a;)Z

    move-result v1

    const/4 v14, 0x0

    if-nez v1, :cond_12

    .line 51
    return v14

    .line 55
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 56
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/d;->a()Lcom/ss/android/downloadlib/addownload/c/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/downloadlib/addownload/c/d;->c()V

    .line 57
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/ss/android/downloadlib/h/k;->a(J)J

    move-result-wide v5

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/downloadlib/addownload/c/a;->a()V

    .line 62
    invoke-static {v3, v4}, Lcom/ss/android/downloadlib/h/k;->a(J)J

    move-result-wide v7

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v1

    .line 66
    nop

    .line 68
    cmp-long v1, v7, v12

    if-gez v1, :cond_44

    .line 74
    invoke-direct {v11, v0}, Lcom/ss/android/downloadlib/addownload/c/a;->b(Lcom/ss/android/socialbase/downloader/g/a;)J

    move-result-wide v0

    .line 75
    cmp-long v2, v0, v3

    if-lez v2, :cond_42

    .line 77
    invoke-static {v3, v4}, Lcom/ss/android/downloadlib/h/k;->a(J)J

    move-result-wide v7

    move-wide v15, v0

    goto :goto_45

    .line 75
    :cond_42
    move-wide v15, v0

    goto :goto_45

    .line 68
    :cond_44
    move-wide v15, v3

    .line 82
    :goto_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanUpDisk, byteRequired = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", byteAvailableAfter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cleaned = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v1, v7, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AppDownloadDiskSpaceHandler"

    invoke-static {v2, v0, v1}, Lcom/ss/android/downloadlib/h/j;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 86
    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide v3, v7

    move-wide/from16 v5, p3

    move-wide/from16 v17, v7

    move-wide v7, v9

    move-wide v9, v15

    invoke-direct/range {v0 .. v10}, Lcom/ss/android/downloadlib/addownload/c/a;->a(JJJJJ)V

    .line 88
    cmp-long v0, v17, v12

    if-gez v0, :cond_86

    .line 89
    return v14

    .line 92
    :cond_86
    if-eqz p5, :cond_8b

    .line 93
    invoke-interface/range {p5 .. p5}, Lcom/ss/android/socialbase/downloader/depend/q;->a()V

    .line 95
    :cond_8b
    const/4 v0, 0x1

    return v0
.end method
