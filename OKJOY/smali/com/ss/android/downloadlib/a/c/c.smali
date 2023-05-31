.class public Lcom/ss/android/downloadlib/a/c/c;
.super Ljava/lang/Object;
.source "ClearSpaceUtil.java"


# direct methods
.method public static a()V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 27
    if-eqz v3, :cond_7d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7d

    move v1, v2

    .line 28
    :goto_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7d

    .line 29
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 30
    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 33
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v4

    .line 34
    const-string v5, "download_file_expire_hours"

    invoke-virtual {v4, v5, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v4, v10

    .line 35
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-gtz v7, :cond_4f

    .line 36
    const-wide/32 v4, 0x240c8400

    .line 42
    :cond_4f
    if-eqz v6, :cond_79

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_79

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_79

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    cmp-long v4, v8, v4

    if-ltz v4, :cond_79

    .line 43
    invoke-static {v6}, Lcom/ss/android/downloadlib/a/c/c;->a(Ljava/io/File;)V

    .line 44
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->j(I)V

    .line 28
    :cond_79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 48
    :cond_7d
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 94
    .line 96
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_21
    .catchall {:try_start_1 .. :try_end_6} :catchall_31

    .line 97
    :try_start_6
    const-string v0, "1"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 98
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_40
    .catchall {:try_start_6 .. :try_end_12} :catchall_3e

    .line 99
    const/4 v0, 0x0

    .line 104
    if-eqz v2, :cond_18

    .line 105
    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1c

    .line 113
    :cond_18
    :goto_18
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 114
    return-void

    .line 108
    :catch_1c
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 100
    :catch_21
    move-exception v0

    move-object v1, v2

    .line 101
    :goto_23
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3e

    .line 104
    if-eqz v1, :cond_18

    .line 105
    :try_start_28
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_18

    .line 108
    :catch_2c
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 103
    :catchall_31
    move-exception v0

    move-object v1, v2

    .line 104
    :goto_33
    if-eqz v1, :cond_38

    .line 105
    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    .line 110
    :cond_38
    :goto_38
    throw v0

    .line 108
    :catch_39
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38

    .line 103
    :catchall_3e
    move-exception v0

    goto :goto_33

    .line 100
    :catch_40
    move-exception v0

    goto :goto_23
.end method

.method public static b()V
    .registers 14

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 55
    if-eqz v6, :cond_18

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 86
    :cond_18
    return-void

    :cond_19
    move v1, v2

    .line 59
    :goto_1a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_18

    .line 60
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 61
    if-eqz v0, :cond_84

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 63
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    if-eqz v8, :cond_84

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    sub-long v10, v4, v10

    .line 68
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    .line 69
    const-string v4, "download_complete_file_expire_hours"

    invoke-virtual {v0, v4, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v12, 0x36ee80

    mul-long/2addr v4, v12

    .line 70
    const-wide/16 v12, 0x0

    cmp-long v0, v4, v12

    if-gtz v0, :cond_7a

    .line 71
    const-wide/32 v4, 0x240c8400

    .line 74
    :cond_7a
    cmp-long v0, v10, v4

    if-ltz v0, :cond_88

    move v0, v3

    .line 80
    :goto_7f
    if-eqz v0, :cond_84

    .line 81
    invoke-static {v8}, Lcom/ss/android/downloadlib/a/c/c;->a(Ljava/io/File;)V

    .line 59
    :cond_84
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    .line 76
    :cond_88
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/ss/android/downloadlib/e/g;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    move v0, v3

    .line 77
    goto :goto_7f

    :cond_94
    move v0, v2

    goto :goto_7f
.end method
