.class public Lcom/bytedance/sdk/openadsdk/utils/l;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/l$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 34
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 37
    if-eqz p1, :cond_28

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_29

    .line 40
    :cond_28
    nop

    .line 42
    :goto_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 43
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_48

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_48
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 87
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 88
    return-object v0

    .line 90
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 91
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    .line 92
    :goto_1a
    nop

    .line 93
    if-eqz v1, :cond_22

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    goto :goto_23

    .line 93
    :cond_22
    move-object v1, v0

    .line 96
    :goto_23
    if-nez v1, :cond_29

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 99
    :cond_29
    if-nez v1, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_30
    return-object v0
.end method

.method public static a(Ljava/io/File;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 139
    if-eqz p0, :cond_18

    .line 140
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 141
    new-instance p0, Lcom/bytedance/sdk/openadsdk/utils/l$a;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/l$a;-><init>(Lcom/bytedance/sdk/openadsdk/utils/l$1;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    :cond_18
    return-object v0
.end method

.method public static b(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 52
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 55
    if-eqz p1, :cond_28

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_29

    .line 58
    :cond_28
    nop

    .line 60
    :goto_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 61
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_48

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 65
    :cond_48
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 103
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 104
    return-object v0

    .line 106
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 107
    if-nez p0, :cond_b

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public static b(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 148
    const-string v0, "splashLoadAd"

    const-string v1, "\u5f53\u6587\u4ef6\u5b58\u5728\u66f4\u65b0\u6587\u4ef6\u7684\u4fee\u6539\u65f6\u95f4"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 150
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v2

    .line 151
    if-nez v2, :cond_51

    .line 152
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/l;->e(Ljava/io/File;)V

    .line 153
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_51

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last modified date "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not set for file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Files"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_51
    return-void
.end method

.method public static c(Ljava/io/File;)V
    .registers 6

    .line 167
    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3c

    .line 171
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 173
    :try_start_f
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    .line 175
    :goto_12
    goto :goto_3b

    .line 174
    :catchall_13
    move-exception p0

    goto :goto_12

    .line 177
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_36

    array-length v1, v0

    if-lez v1, :cond_36

    .line 179
    array-length v1, v0

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_36

    aget-object v3, v0, v2

    .line 180
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 181
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/l;->c(Ljava/io/File;)V

    goto :goto_33

    .line 184
    :cond_2e
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    .line 186
    goto :goto_33

    .line 185
    :catchall_32
    move-exception v3

    .line 179
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 192
    :cond_36
    :try_start_36
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    .line 194
    goto :goto_3b

    .line 193
    :catchall_3a
    move-exception p0

    .line 196
    :goto_3b
    return-void

    .line 168
    :cond_3c
    :goto_3c
    return-void
.end method

.method public static d(Ljava/io/File;)[B
    .registers 8

    .line 239
    const/4 v0, 0x0

    if-eqz p0, :cond_59

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_59

    .line 240
    nop

    .line 242
    :try_start_20
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 243
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_4f

    .line 244
    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result p0

    new-array p0, p0, [B

    .line 245
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 246
    int-to-long v3, v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_4d

    cmp-long v1, v3, v5

    if-nez v1, :cond_48

    .line 247
    nop

    .line 251
    nop

    .line 253
    :try_start_42
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    .line 255
    goto :goto_47

    .line 254
    :catchall_46
    move-exception v0

    .line 247
    :goto_47
    return-object p0

    .line 251
    :cond_48
    nop

    .line 253
    :try_start_49
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_56

    .line 249
    :catchall_4d
    move-exception p0

    goto :goto_51

    :catchall_4f
    move-exception p0

    move-object v2, v0

    .line 251
    :goto_51
    if-eqz v2, :cond_59

    .line 253
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_57

    .line 255
    :goto_56
    goto :goto_59

    .line 254
    :catchall_57
    move-exception p0

    goto :goto_56

    .line 259
    :cond_59
    :goto_59
    return-object v0
.end method

.method private static e(Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 200
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    .line 201
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/l;->f(Ljava/io/File;)V

    .line 202
    return-void

    .line 204
    :cond_e
    const/4 v2, 0x0

    .line 206
    :try_start_f
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rwd"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_2e

    .line 207
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    :try_start_19
    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 208
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result p0

    .line 209
    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 210
    invoke-virtual {v3, p0}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_2b

    .line 212
    nop

    .line 213
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_34

    .line 211
    :catchall_2b
    move-exception p0

    move-object v2, v3

    goto :goto_2f

    :catchall_2e
    move-exception p0

    .line 212
    :goto_2f
    if-eqz v2, :cond_34

    .line 213
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 217
    :cond_34
    :goto_34
    return-void
.end method

.method private static f(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 223
    return-void

    .line 221
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error recreate zero-size file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
