.class public Lcom/umeng/commonsdk/statistics/common/b;
.super Ljava/lang/Object;
.source "DeflaterHelper.java"


# static fields
.field public static a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/b;->b([B)[B

    move-result-object p0

    .line 85
    if-eqz p0, :cond_c

    .line 86
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 89
    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32
    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/b;->a([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    if-eqz p0, :cond_48

    array-length v1, p0

    if-gtz v1, :cond_7

    goto :goto_48

    .line 48
    :cond_7
    new-instance v1, Ljava/util/zip/Deflater;

    invoke-direct {v1}, Ljava/util/zip/Deflater;-><init>()V

    .line 49
    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 50
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 52
    const/16 p0, 0x2000

    new-array p0, p0, [B

    .line 53
    const/4 v2, 0x0

    sput v2, Lcom/umeng/commonsdk/statistics/common/b;->a:I

    .line 54
    nop

    .line 56
    :try_start_1a
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_41

    .line 57
    :goto_1f
    :try_start_1f
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_32

    .line 58
    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    .line 59
    sget v4, Lcom/umeng/commonsdk/statistics/common/b;->a:I

    add-int/2addr v4, v0

    sput v4, Lcom/umeng/commonsdk/statistics/common/b;->a:I

    .line 60
    invoke-virtual {v3, p0, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 61
    goto :goto_1f

    .line 62
    :cond_32
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_3e

    .line 64
    nop

    .line 65
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 67
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 68
    return-object p0

    .line 64
    :catchall_3e
    move-exception p0

    move-object v0, v3

    goto :goto_42

    :catchall_41
    move-exception p0

    :goto_42
    if-eqz v0, :cond_47

    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_47
    throw p0

    .line 45
    :cond_48
    :goto_48
    return-object v0
.end method

.method public static b([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 93
    if-eqz p0, :cond_32

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_32

    .line 95
    :cond_6
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 97
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 98
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 101
    nop

    .line 102
    nop

    .line 103
    :goto_1b
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    .line 105
    invoke-virtual {p0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 106
    add-int/2addr v2, v3

    goto :goto_1b

    .line 109
    :cond_2a
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 110
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 94
    :cond_32
    :goto_32
    const/4 p0, 0x0

    return-object p0
.end method
