.class final Lcom/tds/common/widgets/image/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static final US_ASCII:Ljava/nio/charset/Charset;

.field static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/tds/common/widgets/image/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 29
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/tds/common/widgets/image/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 68
    if-eqz p0, :cond_a

    .line 70
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 74
    goto :goto_a

    .line 73
    :catch_6
    move-exception v0

    goto :goto_a

    .line 71
    :catch_8
    move-exception v0

    .line 72
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 76
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method static deleteContents(Ljava/io/File;)V
    .registers 6
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_38

    .line 57
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_37

    aget-object v3, v0, v2

    .line 58
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 59
    invoke-static {v3}, Lcom/tds/common/widgets/image/Util;->deleteContents(Ljava/io/File;)V

    .line 61
    :cond_15
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 57
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 62
    .restart local v3    # "file":Ljava/io/File;
    :cond_1e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to delete file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v3    # "file":Ljava/io/File;
    :cond_37
    return-void

    .line 55
    :cond_38
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a readable directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 37
    .local v0, "writer":Ljava/io/StringWriter;
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 39
    .local v1, "buffer":[C
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    move v3, v2

    .local v3, "count":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_16

    .line 40
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_9

    .line 42
    :cond_16
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1e

    .line 44
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 42
    return-object v2

    .line 44
    .end local v0    # "writer":Ljava/io/StringWriter;
    .end local v1    # "buffer":[C
    .end local v3    # "count":I
    :catchall_1e
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 45
    throw v0
.end method
