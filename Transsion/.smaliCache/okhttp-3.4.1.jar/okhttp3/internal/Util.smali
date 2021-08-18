.class public final Lokhttp3/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final UTC:Ljava/util/TimeZone;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 46
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 49
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 52
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    .line 64
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static checkOffsetAndCount(JJJ)V
    .registers 11
    .param p0, "arrayLength"    # J
    .param p2, "offset"    # J
    .param p4, "count"    # J

    .line 71
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_13

    cmp-long v0, p2, p0

    if-gtz v0, :cond_13

    sub-long v0, p0, p2

    cmp-long v2, v0, p4

    if-ltz v2, :cond_13

    .line 74
    return-void

    .line 72
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    .registers 4
    .param p0, "a"    # Ljava/io/Closeable;
    .param p1, "b"    # Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_5

    .line 138
    goto :goto_7

    .line 136
    :catchall_5
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 140
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_7
    :try_start_7
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    .line 143
    goto :goto_f

    .line 141
    :catchall_b
    move-exception v1

    .line 142
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_f

    move-object v0, v1

    .line 144
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_f
    :goto_f
    if-nez v0, :cond_12

    return-void

    .line 145
    :cond_12
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_2c

    .line 146
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_28

    .line 147
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_22

    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 148
    :cond_22
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 146
    :cond_28
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 145
    :cond_2c
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 86
    if-eqz p0, :cond_a

    .line 88
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 92
    goto :goto_a

    .line 91
    :catch_6
    move-exception v0

    goto :goto_a

    .line 89
    :catch_8
    move-exception v0

    .line 90
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 94
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .registers 2
    .param p0, "serverSocket"    # Ljava/net/ServerSocket;

    .line 118
    if-eqz p0, :cond_a

    .line 120
    :try_start_2
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 124
    goto :goto_a

    .line 123
    :catch_6
    move-exception v0

    goto :goto_a

    .line 121
    :catch_8
    move-exception v0

    .line 122
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 126
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .registers 3
    .param p0, "socket"    # Ljava/net/Socket;

    .line 101
    if-eqz p0, :cond_13

    .line 103
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 109
    :goto_5
    goto :goto_13

    .line 108
    :catch_6
    move-exception v0

    goto :goto_13

    .line 106
    :catch_8
    move-exception v0

    .line 107
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 104
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_a
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_12

    .end local v0    # "e":Ljava/lang/AssertionError;
    goto :goto_5

    .restart local v0    # "e":Ljava/lang/AssertionError;
    :cond_12
    throw v0

    .line 111
    .end local v0    # "e":Ljava/lang/AssertionError;
    :cond_13
    :goto_13
    return-void
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 325
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 326
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 328
    return-object v0
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .registers 6
    .param p0, "hostnameAscii"    # Ljava/lang/String;

    .line 423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 424
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 428
    .local v1, "c":C
    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-le v1, v2, :cond_22

    const/16 v2, 0x7f

    if-lt v1, v2, :cond_15

    goto :goto_22

    .line 434
    :cond_15
    const-string v2, " #%/:?@[\\]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1f

    .line 435
    return v3

    .line 423
    .end local v1    # "c":C
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 429
    .restart local v1    # "c":C
    :cond_22
    :goto_22
    return v3

    .line 438
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiter"    # C

    .line 394
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_d

    .line 395
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_a

    return v0

    .line 394
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    .end local v0    # "i":I
    :cond_d
    return p2
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .registers 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiters"    # Ljava/lang/String;

    .line 383
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_12

    .line 384
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    return v0

    .line 383
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 386
    .end local v0    # "i":I
    :cond_12
    return p2
.end method

.method public static discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p0, "source"    # Lokio/Source;
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 158
    :try_start_0
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 159
    :catch_5
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v0

    .line 412
    :cond_12
    invoke-static {v1}, Lokhttp3/internal/Util;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z

    move-result v2
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_16} :catch_1a

    if-eqz v2, :cond_19

    .line 413
    return-object v0

    .line 416
    :cond_19
    return-object v1

    .line 417
    .end local v1    # "result":Ljava/lang/String;
    :catch_1a
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 78
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 448
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;
    .registers 6
    .param p0, "url"    # Lokhttp3/HttpUrl;
    .param p1, "includeDefaultPort"    # Z

    .line 283
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 285
    :cond_2a
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    nop

    .line 286
    .local v0, "host":Ljava/lang/String;
    if-nez p1, :cond_42

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_40

    goto :goto_42

    .line 287
    :cond_40
    move-object v1, v0

    goto :goto_5b

    .line 286
    :cond_42
    :goto_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    :goto_5b
    return-object v1
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 237
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 242
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 318
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "size":I
    :goto_2
    if-ge v0, v1, :cond_10

    .line 319
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    return v0

    .line 318
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 321
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method private static intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 270
    .local p0, "first":[Ljava/lang/Object;, "[TT;"
    .local p1, "second":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_22

    aget-object v4, p0, v3

    .line 272
    .local v4, "a":Ljava/lang/Object;, "TT;"
    array-length v5, p1

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_1f

    aget-object v7, p1, v6

    .line 273
    .local v7, "b":Ljava/lang/Object;, "TT;"
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 274
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    goto :goto_1f

    .line 272
    .end local v7    # "b":Ljava/lang/Object;, "TT;"
    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 271
    .end local v4    # "a":Ljava/lang/Object;, "TT;"
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 279
    :cond_22
    return-object v0
.end method

.method public static intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .line 261
    .local p0, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "first":[Ljava/lang/Object;, "[TT;"
    .local p2, "second":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2}, Lokhttp3/internal/Util;->intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 262
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .registers 3
    .param p0, "e"    # Ljava/lang/AssertionError;

    .line 313
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 314
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 313
    :goto_1b
    return v0
.end method

.method public static md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 194
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 195
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 196
    .local v1, "md5bytes":[B
    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v2

    .line 197
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "md5bytes":[B
    :catch_19
    move-exception v0

    goto :goto_1c

    :catch_1b
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    :goto_1c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static sha1(Lokio/ByteString;)Lokio/ByteString;
    .registers 4
    .param p0, "s"    # Lokio/ByteString;

    .line 216
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 217
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 218
    .local v1, "sha1Bytes":[B
    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v2
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v2

    .line 219
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "sha1Bytes":[B
    :catch_13
    move-exception v0

    .line 220
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static sha256(Lokio/ByteString;)Lokio/ByteString;
    .registers 4
    .param p0, "s"    # Lokio/ByteString;

    .line 227
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 228
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 229
    .local v1, "sha1Bytes":[B
    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v2
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v2

    .line 230
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "sha1Bytes":[B
    :catch_13
    move-exception v0

    .line 231
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static shaBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 205
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 206
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 207
    .local v1, "sha1Bytes":[B
    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v2

    .line 208
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "sha1Bytes":[B
    :catch_19
    move-exception v0

    goto :goto_1c

    :catch_1b
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    :goto_1c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .registers 15
    .param p0, "source"    # Lokio/Source;
    .param p1, "duration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 170
    .local v0, "now":J
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Timeout;->hasDeadline()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_1d

    .line 171
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_1e

    :cond_1d
    move-wide v5, v3

    .line 173
    .local v5, "originalDuration":J
    :goto_1e
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 175
    :try_start_2f
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 176
    .local v2, "skipBuffer":Lokio/Buffer;
    :goto_34
    const-wide/16 v7, 0x2000

    invoke-interface {p0, v2, v7, v8}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_44

    .line 177
    invoke-virtual {v2}, Lokio/Buffer;->clear()V
    :try_end_43
    .catch Ljava/io/InterruptedIOException; {:try_start_2f .. :try_end_43} :catch_72
    .catchall {:try_start_2f .. :try_end_43} :catchall_5b

    goto :goto_34

    .line 179
    :cond_44
    const/4 v7, 0x1

    .line 183
    cmp-long v8, v5, v3

    if-nez v8, :cond_51

    .line 184
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_5a

    .line 186
    :cond_51
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v3

    add-long v8, v0, v5

    invoke-virtual {v3, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 179
    :goto_5a
    return v7

    .line 183
    .end local v2    # "skipBuffer":Lokio/Buffer;
    :catchall_5b
    move-exception v2

    cmp-long v7, v5, v3

    if-nez v7, :cond_68

    .line 184
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_71

    .line 186
    :cond_68
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v3

    add-long v7, v0, v5

    invoke-virtual {v3, v7, v8}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :goto_71
    throw v2

    .line 180
    :catch_72
    move-exception v2

    .line 181
    .local v2, "e":Ljava/io/InterruptedIOException;
    const/4 v7, 0x0

    .line 183
    cmp-long v8, v5, v3

    if-nez v8, :cond_80

    .line 184
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_89

    .line 186
    :cond_80
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v3

    add-long v8, v0, v5

    invoke-virtual {v3, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 181
    :goto_89
    return v7
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 336
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_f

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_10

    .line 345
    return v0

    .line 343
    :sswitch_b
    nop

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    .end local v0    # "i":I
    :cond_f
    return p2

    :sswitch_data_10
    .sparse-switch
        0x9 -> :sswitch_b
        0xa -> :sswitch_b
        0xc -> :sswitch_b
        0xd -> :sswitch_b
        0x20 -> :sswitch_b
    .end sparse-switch
.end method

.method public static skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 356
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p1, :cond_12

    .line 357
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_14

    .line 365
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 363
    :sswitch_e
    nop

    .line 356
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 368
    .end local v0    # "i":I
    :cond_12
    return p1

    nop

    :sswitch_data_14
    .sparse-switch
        0x9 -> :sswitch_e
        0xa -> :sswitch_e
        0xc -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_e
    .end sparse-switch
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z

    .line 246
    new-instance v0, Lokhttp3/internal/Util$1;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/Util$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "s"    # Ljava/lang/String;

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    :goto_5
    if-ge v0, v1, :cond_3f

    .line 294
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 295
    .local v2, "c":I
    const/16 v3, 0x7f

    const/16 v4, 0x1f

    if-le v2, v4, :cond_19

    if-ge v2, v3, :cond_19

    .line 293
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_5

    .line 297
    :cond_19
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 298
    .local v5, "buffer":Lokio/Buffer;
    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 299
    move v6, v0

    .local v6, "j":I
    :goto_23
    if-ge v6, v1, :cond_3a

    .line 300
    invoke-virtual {p0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 301
    if-le v2, v4, :cond_2f

    if-ge v2, v3, :cond_2f

    move v7, v2

    goto :goto_31

    :cond_2f
    const/16 v7, 0x3f

    :goto_31
    invoke-virtual {v5, v7}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 299
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_23

    .line 303
    .end local v6    # "j":I
    :cond_3a
    invoke-virtual {v5}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 305
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "c":I
    .end local v5    # "buffer":Lokio/Buffer;
    :cond_3f
    return-object p0
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 373
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v0

    .line 374
    .local v0, "start":I
    invoke-static {p0, v0, p2}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v1

    .line 375
    .local v1, "end":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "host"    # Ljava/lang/String;

    .line 443
    sget-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
