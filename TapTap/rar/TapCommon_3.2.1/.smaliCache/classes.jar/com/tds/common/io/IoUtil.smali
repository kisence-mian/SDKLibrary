.class public final Lcom/tds/common/io/IoUtil;
.super Ljava/lang/Object;
.source "IoUtil.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final LOG:Lcom/tds/common/log/Logger;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/tds/common/io/IoUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tds/common/io/IoUtil;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "common_log"

    invoke-static {v0}, Lcom/tds/common/log/Logger;->get(Ljava/lang/String;)Lcom/tds/common/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/tds/common/io/IoUtil;->LOG:Lcom/tds/common/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 5
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 127
    if-eqz p0, :cond_13

    .line 129
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 132
    goto :goto_13

    .line 130
    :catch_6
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/tds/common/io/IoUtil;->LOG:Lcom/tds/common/log/Logger;

    sget-object v2, Lcom/tds/common/io/IoUtil;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/tds/common/log/TdsBaseException;

    invoke-direct {v3, v0}, Lcom/tds/common/log/TdsBaseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v3}, Lcom/tds/common/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    :cond_13
    :goto_13
    return-void
.end method

.method public static closeQuietly(Ljava/util/zip/ZipFile;)V
    .registers 5
    .param p0, "closeable"    # Ljava/util/zip/ZipFile;

    .line 137
    if-eqz p0, :cond_13

    .line 139
    :try_start_2
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 142
    goto :goto_13

    .line 140
    :catch_6
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/tds/common/io/IoUtil;->LOG:Lcom/tds/common/log/Logger;

    sget-object v2, Lcom/tds/common/io/IoUtil;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/tds/common/log/TdsBaseException;

    invoke-direct {v3, v0}, Lcom/tds/common/log/TdsBaseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v3}, Lcom/tds/common/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    :cond_13
    :goto_13
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/io/OutputStream;)V
    .registers 4
    .param p0, "src"    # Ljava/io/File;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 100
    invoke-static {v0, p1}, Lcom/tds/common/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 102
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 103
    nop

    .line 104
    return-void

    .line 102
    :catchall_f
    move-exception v1

    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 103
    throw v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tds/common/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/File;Z)V

    .line 84
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/File;Z)V
    .registers 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v0, v1

    .line 90
    invoke-static {p0, v0}, Lcom/tds/common/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 92
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    nop

    .line 94
    return-void

    .line 92
    :catchall_f
    move-exception v1

    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    throw v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 108
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 109
    .local v1, "count":I
    :goto_5
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v1, v2

    if-lez v2, :cond_11

    .line 110
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 112
    :cond_11
    return-void
.end method

.method public static copy(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    .registers 8
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p2, "dest"    # Ljava/io/File;

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 74
    invoke-static {v0, p2}, Lcom/tds/common/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_f
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    .line 78
    :goto_9
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    goto :goto_1d

    .line 78
    :catchall_d
    move-exception v1

    goto :goto_1e

    .line 75
    :catch_f
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    :try_start_10
    sget-object v2, Lcom/tds/common/io/IoUtil;->LOG:Lcom/tds/common/log/Logger;

    sget-object v3, Lcom/tds/common/io/IoUtil;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/tds/common/log/TdsBaseException;

    invoke-direct {v4, v1}, Lcom/tds/common/log/TdsBaseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, v4}, Lcom/tds/common/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_d

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 80
    :goto_1d
    return-void

    .line 78
    :goto_1e
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    throw v1
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)Z
    .registers 7
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 60
    invoke-static {v0, p1}, Lcom/tds/common/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_11
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 61
    const/4 v1, 0x1

    .line 66
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 61
    return v1

    .line 66
    :catchall_f
    move-exception v1

    goto :goto_23

    .line 62
    :catch_11
    move-exception v1

    .line 63
    .local v1, "e":Ljava/io/IOException;
    :try_start_12
    sget-object v2, Lcom/tds/common/io/IoUtil;->LOG:Lcom/tds/common/log/Logger;

    sget-object v3, Lcom/tds/common/io/IoUtil;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/tds/common/log/TdsBaseException;

    invoke-direct {v4, v1}, Lcom/tds/common/log/TdsBaseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, v4}, Lcom/tds/common/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_f

    .line 64
    const/4 v2, 0x0

    .line 66
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 64
    return v2

    .line 66
    .end local v1    # "e":Ljava/io/IOException;
    :goto_23
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 67
    throw v1
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .registers 5
    .param p0, "dir"    # Ljava/io/File;

    .line 167
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 168
    .local v0, "allContents":[Ljava/io/File;
    if-eqz v0, :cond_12

    .line 169
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 170
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/tds/common/io/IoUtil;->deleteDir(Ljava/io/File;)Z

    .line 169
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 173
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 181
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 182
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 184
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->deleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/io/File;)Z
    .registers 2
    .param p0, "dir"    # Ljava/io/File;

    .line 155
    if-nez p0, :cond_4

    .line 156
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 160
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 148
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->mkdirs(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .line 49
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 50
    invoke-static {p0, p1}, Lcom/tds/common/io/IoUtil;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51
    invoke-static {p0}, Lcom/tds/common/io/IoUtil;->deleteFile(Ljava/io/File;)Z

    .line 54
    :cond_f
    return-void
.end method

.method public static readString(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .param p0, "file"    # Ljava/io/File;

    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 29
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    .line 34
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 29
    return-object v1

    .line 34
    :catchall_f
    move-exception v1

    goto :goto_23

    .line 30
    :catch_11
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    :try_start_12
    sget-object v2, Lcom/tds/common/io/IoUtil;->LOG:Lcom/tds/common/log/Logger;

    sget-object v3, Lcom/tds/common/io/IoUtil;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/tds/common/log/TdsBaseException;

    invoke-direct {v4, v1}, Lcom/tds/common/log/TdsBaseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, v4}, Lcom/tds/common/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_f

    .line 32
    const/4 v2, 0x0

    .line 34
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 32
    return-object v2

    .line 34
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_23
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 35
    throw v1
.end method

.method public static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 40
    .local v1, "buffer":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v2

    .line 42
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    :goto_a
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "count":I
    if-lez v2, :cond_16

    .line 43
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 45
    :cond_16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static writeString(Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "s"    # Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_14
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    .line 122
    :goto_e
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    goto :goto_22

    .line 122
    :catchall_12
    move-exception v1

    goto :goto_23

    .line 119
    :catch_14
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    :try_start_15
    sget-object v2, Lcom/tds/common/io/IoUtil;->LOG:Lcom/tds/common/log/Logger;

    sget-object v3, Lcom/tds/common/io/IoUtil;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/tds/common/log/TdsBaseException;

    invoke-direct {v4, v1}, Lcom/tds/common/log/TdsBaseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, v4}, Lcom/tds/common/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_12

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_e

    .line 124
    :goto_22
    return-void

    .line 122
    :goto_23
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    throw v1
.end method
