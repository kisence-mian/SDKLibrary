.class public final Lcom/tds/protobuf/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/Internal$FloatList;,
        Lcom/tds/protobuf/Internal$DoubleList;,
        Lcom/tds/protobuf/Internal$LongList;,
        Lcom/tds/protobuf/Internal$BooleanList;,
        Lcom/tds/protobuf/Internal$IntList;,
        Lcom/tds/protobuf/Internal$ProtobufList;,
        Lcom/tds/protobuf/Internal$MapAdapter;,
        Lcom/tds/protobuf/Internal$ListAdapter;,
        Lcom/tds/protobuf/Internal$EnumLiteMap;,
        Lcom/tds/protobuf/Internal$EnumLite;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

.field public static final EMPTY_CODED_INPUT_STREAM:Lcom/tds/protobuf/CodedInputStream;

.field static final ISO_8859_1:Ljava/nio/charset/Charset;

.field static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/tds/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 60
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/tds/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 400
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/tds/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 405
    nop

    .line 406
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcom/tds/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    .line 409
    nop

    .line 410
    invoke-static {v0}, Lcom/tds/protobuf/CodedInputStream;->newInstance([B)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    sput-object v0, Lcom/tds/protobuf/Internal;->EMPTY_CODED_INPUT_STREAM:Lcom/tds/protobuf/CodedInputStream;

    .line 409
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayDefaultValue(Ljava/lang/String;)[B
    .registers 2
    .param p0, "bytes"    # Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/tds/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static byteBufferDefaultValue(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 2
    .param p0, "bytes"    # Ljava/lang/String;

    .line 122
    invoke-static {p0}, Lcom/tds/protobuf/Internal;->byteArrayDefaultValue(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)Lcom/tds/protobuf/ByteString;
    .registers 2
    .param p0, "bytes"    # Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/tds/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->copyFrom([B)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static copyByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "source"    # Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 137
    .local v0, "temp":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 138
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 139
    .local v1, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 141
    return-object v1
.end method

.method public static equals(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 261
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    .line 262
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 263
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    .line 264
    return v2

    .line 262
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 267
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method public static equalsByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 4
    .param p0, "a"    # Ljava/nio/ByteBuffer;
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .line 319
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 320
    const/4 v0, 0x0

    return v0

    .line 324
    :cond_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalsByteBuffer(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)Z"
        }
    .end annotation

    .line 333
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 334
    return v2

    .line 336
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 337
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Lcom/tds/protobuf/Internal;->equalsByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 338
    return v2

    .line 336
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 341
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method public static getDefaultInstance(Ljava/lang/Class;)Lcom/tds/protobuf/MessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tds/protobuf/MessageLite;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 389
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-string v0, "getDefaultInstance"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 390
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/protobuf/MessageLite;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 391
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_12
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get default instance for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hashBoolean(Z)I
    .registers 2
    .param p0, "b"    # Z

    .line 231
    if-eqz p0, :cond_5

    const/16 v0, 0x4cf

    goto :goto_7

    :cond_5
    const/16 v0, 0x4d5

    :goto_7
    return v0
.end method

.method public static hashCode(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation

    .line 274
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x1

    .line 275
    .local v0, "hash":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 276
    .local v2, "bytes":[B
    mul-int/lit8 v3, v0, 0x1f

    invoke-static {v2}, Lcom/tds/protobuf/Internal;->hashCode([B)I

    move-result v4

    add-int v0, v3, v4

    .line 277
    .end local v2    # "bytes":[B
    goto :goto_5

    .line 278
    :cond_1a
    return v0
.end method

.method public static hashCode([B)I
    .registers 3
    .param p0, "bytes"    # [B

    .line 289
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/tds/protobuf/Internal;->hashCode([BII)I

    move-result v0

    return v0
.end method

.method static hashCode([BII)I
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 300
    invoke-static {p2, p0, p1, p2}, Lcom/tds/protobuf/Internal;->partialHash(I[BII)I

    move-result v0

    .line 301
    .local v0, "h":I
    if-nez v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    return v1
.end method

.method public static hashCodeByteBuffer(Ljava/nio/ByteBuffer;)I
    .registers 8
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 363
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 365
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/tds/protobuf/Internal;->partialHash(I[BII)I

    move-result v0

    .line 366
    .local v0, "h":I
    if-nez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v0

    :goto_1f
    return v1

    .line 370
    .end local v0    # "h":I
    :cond_20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v2, 0x1000

    if-le v0, v2, :cond_29

    goto :goto_2d

    .line 371
    :cond_29
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    :goto_2d
    move v0, v2

    .line 372
    .local v0, "bufferSize":I
    new-array v2, v0, [B

    .line 373
    .local v2, "buffer":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 374
    .local v3, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 375
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    .line 376
    .local v4, "h":I
    :goto_3b
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_56

    .line 377
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-gt v5, v0, :cond_4c

    .line 378
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    goto :goto_4d

    :cond_4c
    move v5, v0

    .line 379
    .local v5, "length":I
    :goto_4d
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 380
    invoke-static {v4, v2, v6, v5}, Lcom/tds/protobuf/Internal;->partialHash(I[BII)I

    move-result v4

    .line 381
    .end local v5    # "length":I
    goto :goto_3b

    .line 382
    :cond_56
    if-nez v4, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v4

    :goto_5a
    return v1
.end method

.method public static hashCodeByteBuffer(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)I"
        }
    .end annotation

    .line 349
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const/4 v0, 0x1

    .line 350
    .local v0, "hash":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 351
    .local v2, "bytes":Ljava/nio/ByteBuffer;
    mul-int/lit8 v3, v0, 0x1f

    invoke-static {v2}, Lcom/tds/protobuf/Internal;->hashCodeByteBuffer(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int v0, v3, v4

    .line 352
    .end local v2    # "bytes":Ljava/nio/ByteBuffer;
    goto :goto_5

    .line 353
    :cond_1a
    return v0
.end method

.method public static hashEnum(Lcom/tds/protobuf/Internal$EnumLite;)I
    .registers 2
    .param p0, "e"    # Lcom/tds/protobuf/Internal$EnumLite;

    .line 242
    invoke-interface {p0}, Lcom/tds/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    return v0
.end method

.method public static hashEnumList(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tds/protobuf/Internal$EnumLite;",
            ">;)I"
        }
    .end annotation

    .line 250
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/tds/protobuf/Internal$EnumLite;>;"
    const/4 v0, 0x1

    .line 251
    .local v0, "hash":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/Internal$EnumLite;

    .line 252
    .local v2, "e":Lcom/tds/protobuf/Internal$EnumLite;
    mul-int/lit8 v3, v0, 0x1f

    invoke-static {v2}, Lcom/tds/protobuf/Internal;->hashEnum(Lcom/tds/protobuf/Internal$EnumLite;)I

    move-result v4

    add-int v0, v3, v4

    .line 253
    .end local v2    # "e":Lcom/tds/protobuf/Internal$EnumLite;
    goto :goto_5

    .line 254
    :cond_1a
    return v0
.end method

.method public static hashLong(J)I
    .registers 4
    .param p0, "n"    # J

    .line 222
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static isValidUtf8(Lcom/tds/protobuf/ByteString;)Z
    .registers 2
    .param p0, "byteString"    # Lcom/tds/protobuf/ByteString;

    .line 173
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    return v0
.end method

.method public static isValidUtf8([B)Z
    .registers 2
    .param p0, "byteArray"    # [B

    .line 180
    invoke-static {p0}, Lcom/tds/protobuf/Utf8;->isValidUtf8([B)Z

    move-result v0

    return v0
.end method

.method static partialHash(I[BII)I
    .registers 7
    .param p0, "h"    # I
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 308
    move v0, p2

    .local v0, "i":I
    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_e

    .line 309
    mul-int/lit8 v1, p0, 0x1f

    aget-byte v2, p1, v0

    add-int p0, v1, v2

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    .end local v0    # "i":I
    :cond_e
    return p0
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/tds/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Lcom/tds/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 187
    sget-object v0, Lcom/tds/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toStringUtf8([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .line 194
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/tds/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
