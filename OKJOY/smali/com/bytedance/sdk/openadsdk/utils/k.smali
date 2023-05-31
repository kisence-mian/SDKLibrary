.class public Lcom/bytedance/sdk/openadsdk/utils/k;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/k$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .prologue
    .line 34
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 37
    if-eqz p1, :cond_27

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 42
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_46

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_46
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p0, :cond_4

    .line 82
    :cond_3
    :goto_3
    return-object v0

    .line 73
    :cond_4
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 74
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_2a

    :cond_16
    const/4 v1, 0x1

    .line 76
    :goto_17
    if-eqz v1, :cond_2c

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 79
    :goto_1d
    if-nez v1, :cond_23

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 82
    :cond_23
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 74
    :cond_2a
    const/4 v1, 0x0

    goto :goto_17

    :cond_2c
    move-object v1, v0

    goto :goto_1d
.end method

.method public static a(Ljava/io/File;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 113
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_18

    .line 115
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/k$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/k$a;-><init>(Lcom/bytedance/sdk/openadsdk/utils/k$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    :cond_18
    return-object v0
.end method

.method public static b(Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v2

    .line 125
    if-nez v2, :cond_4a

    .line 126
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/k;->e(Ljava/io/File;)V

    .line 127
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_4a

    .line 129
    const-string v0, "Files"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last modified date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not set for file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_4a
    return-void
.end method

.method public static c(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 141
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 170
    :cond_8
    :goto_8
    return-void

    .line 145
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 147
    :try_start_f
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_8

    .line 148
    :catch_13
    move-exception v0

    goto :goto_8

    .line 151
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_36

    array-length v0, v1

    if-lez v0, :cond_36

    .line 153
    array-length v2, v1

    const/4 v0, 0x0

    :goto_20
    if-ge v0, v2, :cond_36

    aget-object v3, v1, v0

    .line 154
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 155
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V

    .line 153
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 158
    :cond_30
    :try_start_30
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_2d

    .line 159
    :catch_34
    move-exception v3

    goto :goto_2d

    .line 166
    :cond_36
    :try_start_36
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_8

    .line 167
    :catch_3a
    move-exception v0

    goto :goto_8
.end method

.method public static d(Ljava/io/File;)[B
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 213
    if-eqz p0, :cond_4a

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4a

    .line 216
    :try_start_1f
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 217
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_2c} :catch_4c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_56

    .line 218
    :try_start_2c
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v0

    new-array v0, v0, [B

    .line 219
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 220
    int-to-long v4, v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_3a} :catch_66
    .catchall {:try_start_2c .. :try_end_3a} :catchall_64

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_45

    .line 225
    if-eqz v2, :cond_44

    .line 227
    :try_start_41
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_5e

    .line 233
    :cond_44
    :goto_44
    return-object v0

    .line 225
    :cond_45
    if-eqz v2, :cond_4a

    .line 227
    :try_start_47
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4a} :catch_60

    :cond_4a
    :goto_4a
    move-object v0, v1

    .line 233
    goto :goto_44

    .line 223
    :catch_4c
    move-exception v0

    move-object v0, v1

    .line 225
    :goto_4e
    if-eqz v0, :cond_4a

    .line 227
    :try_start_50
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_4a

    .line 228
    :catch_54
    move-exception v0

    goto :goto_4a

    .line 225
    :catchall_56
    move-exception v0

    move-object v2, v1

    :goto_58
    if-eqz v2, :cond_5d

    .line 227
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_62

    .line 229
    :cond_5d
    :goto_5d
    throw v0

    .line 228
    :catch_5e
    move-exception v1

    goto :goto_44

    :catch_60
    move-exception v0

    goto :goto_4a

    :catch_62
    move-exception v1

    goto :goto_5d

    .line 225
    :catchall_64
    move-exception v0

    goto :goto_58

    .line 223
    :catch_66
    move-exception v0

    move-object v0, v2

    goto :goto_4e
.end method

.method private static e(Ljava/io/File;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    .line 173
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 174
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    .line 175
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/k;->f(Ljava/io/File;)V

    .line 191
    :cond_f
    :goto_f
    return-void

    .line 178
    :cond_10
    const/4 v1, 0x0

    .line 180
    :try_start_11
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rwd"

    invoke-direct {v0, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_18} :catch_2e
    .catchall {:try_start_11 .. :try_end_18} :catchall_36

    .line 181
    sub-long v4, v2, v6

    :try_start_1a
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 182
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    .line 183
    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 184
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_28} :catch_42
    .catchall {:try_start_1a .. :try_end_28} :catchall_3d

    .line 186
    if-eqz v0, :cond_f

    .line 187
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_f

    .line 185
    :catch_2e
    move-exception v0

    move-object v0, v1

    .line 186
    :goto_30
    if-eqz v0, :cond_f

    .line 187
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_f

    .line 186
    :catchall_36
    move-exception v0

    :goto_37
    if-eqz v1, :cond_3c

    .line 187
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_3c
    throw v0

    .line 186
    :catchall_3d
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_37

    .line 185
    :catch_42
    move-exception v1

    goto :goto_30
.end method

.method private static f(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_25

    .line 195
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error recreate zero-size file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_25
    return-void
.end method
