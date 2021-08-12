.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    new-instance p0, Ljava/io/BufferedOutputStream;

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 114
    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 115
    nop

    .line 116
    :goto_f
    invoke-virtual {v0, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    .line 117
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_f

    .line 119
    :cond_1b
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 120
    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .registers 5

    .line 30
    const/4 v0, 0x1

    if-eqz p0, :cond_50

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_50

    .line 33
    :cond_a
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "delete file\uff0cpid:"

    aput-object v3, v1, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, ", thread:"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 33
    const-string v0, "gecko-debug-tag"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->d(Ljava/io/File;)Z

    move-result p0

    return p0

    .line 31
    :cond_50
    :goto_50
    return v0
.end method

.method public static b(Ljava/io/File;)Ljava/util/List;
    .registers 2
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

    .line 126
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_20

    .line 129
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 130
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 131
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    return-object p0

    .line 127
    :cond_20
    :goto_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/io/File;)Z
    .registers 6

    .line 144
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 146
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 148
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_20

    .line 152
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->c(Ljava/io/File;)Z

    move-result v3

    .line 154
    if-nez v3, :cond_1d

    .line 155
    return v1

    .line 148
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 160
    :cond_20
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/io/File;)Z
    .registers 8

    .line 40
    const/4 v0, 0x1

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_39

    .line 43
    :cond_a
    nop

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_2d

    .line 47
    array-length v3, v1

    move v5, v0

    move v4, v2

    :goto_1b
    if-ge v4, v3, :cond_2e

    aget-object v6, v1, v4

    .line 48
    if-eqz v5, :cond_29

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->d(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_29

    move v5, v0

    goto :goto_2a

    :cond_29
    move v5, v2

    .line 47
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 52
    :cond_2d
    move v5, v0

    :cond_2e
    if-eqz v5, :cond_37

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_37

    goto :goto_38

    :cond_37
    move v0, v2

    .line 54
    :goto_38
    return v0

    .line 41
    :cond_39
    :goto_39
    return v0
.end method
