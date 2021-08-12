.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/l;
.super Ljava/lang/Object;
.source "UnZipUtils.java"


# static fields
.field private static a:[B

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_10

    sput-object v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/l;->a:[B

    .line 13
    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/l;->b:[B

    return-void

    :array_10
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data

    :array_16
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    nop

    .line 18
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_121

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_11
    :try_start_11
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_dc

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/l;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 26
    goto :goto_11

    .line 28
    :cond_23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 32
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_78

    .line 33
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 37
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 38
    goto :goto_a0

    .line 35
    :cond_55
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "directory traversal, dir:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", channel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_78
    nop

    .line 40
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 45
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_94
    .catchall {:try_start_11 .. :try_end_94} :catchall_11e

    .line 48
    :try_start_94
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_a5

    .line 49
    :try_start_99
    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_a2

    .line 51
    :try_start_9c
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;->a(Ljava/io/Closeable;)Z

    .line 52
    nop

    .line 54
    :goto_a0
    goto/16 :goto_11

    .line 51
    :catchall_a2
    move-exception p0

    move-object v0, v3

    goto :goto_a6

    :catchall_a5
    move-exception p0

    :goto_a6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;->a(Ljava/io/Closeable;)Z

    .line 52
    throw p0

    .line 43
    :cond_aa
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "directory traversal, file name:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_c3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "the zip package outermost folder is not named by channel channel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_dc
    if-nez v2, :cond_119

    .line 58
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 59
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/l;->a(Ljava/io/InputStream;)Z

    move-result p0

    if-nez p0, :cond_100

    .line 60
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not zip file  channel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_100
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unzip file: channel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_119
    .catchall {:try_start_9c .. :try_end_119} :catchall_11e

    .line 65
    :cond_119
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;->a(Ljava/io/Closeable;)Z

    .line 66
    nop

    .line 67
    return-void

    .line 65
    :catchall_11e
    move-exception p0

    move-object v0, v1

    goto :goto_122

    :catchall_121
    move-exception p0

    :goto_122
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;->a(Ljava/io/Closeable;)Z

    .line 66
    throw p0
.end method

.method private static a(Ljava/io/InputStream;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    const/4 v0, 0x4

    :try_start_1
    new-array v1, v0, [B

    .line 77
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 78
    if-ne v3, v0, :cond_1f

    .line 79
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/l;->a:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/l;->b:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_24

    if-eqz v0, :cond_1b

    :cond_1a
    const/4 v2, 0x1

    .line 82
    :cond_1b
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;->a(Ljava/io/Closeable;)Z

    .line 79
    return v2

    .line 82
    :cond_1f
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;->a(Ljava/io/Closeable;)Z

    .line 83
    nop

    .line 84
    return v2

    .line 82
    :catchall_24
    move-exception v0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;->a(Ljava/io/Closeable;)Z

    .line 83
    throw v0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    .line 71
    const-string v0, "__MACOSX/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, ".DS_Store"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method
