.class public Lcom/sigmob/wire/okio/ByteString;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sigmob/wire/okio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/sigmob/wire/okio/ByteString;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/sigmob/wire/okio/ByteString;->HEX_DIGITS:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/sigmob/wire/okio/ByteString;->of([B)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    return-void

    nop

    :array_14
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    return-void
.end method

.method static codePointIndexToCharIndex(Ljava/lang/String;I)I
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v0, v2, :cond_2c

    if-ne v1, p1, :cond_b

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1d

    const/16 v4, 0xd

    if-ne v3, v4, :cond_22

    :cond_1d
    const v4, 0xfffd

    if-ne v3, v4, :cond_24

    :cond_22
    const/4 v0, -0x1

    goto :goto_a

    :cond_24
    add-int/lit8 v1, v1, 0x1

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_6

    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_a
.end method

.method public static decodeBase64(Ljava/lang/String;)Lcom/sigmob/wire/okio/ByteString;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "base64 == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p0}, Lcom/sigmob/wire/okio/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v0, Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {v0, v1}, Lcom/sigmob/wire/okio/ByteString;-><init>([B)V

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static decodeHex(Ljava/lang/String;)Lcom/sigmob/wire/okio/ByteString;
    .registers 5

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hex == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_34
    array-length v2, v1

    if-ge v0, v2, :cond_56

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sigmob/wire/okio/ByteString;->decodeHexDigit(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sigmob/wire/okio/ByteString;->decodeHexDigit(C)I

    move-result v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_56
    invoke-static {v1}, Lcom/sigmob/wire/okio/ByteString;->of([B)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private static decodeHexDigit(C)I
    .registers 4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private digest(Ljava/lang/String;)Lcom/sigmob/wire/okio/ByteString;
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/wire/okio/ByteString;->of([B)Lcom/sigmob/wire/okio/ByteString;
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    return-object v0

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/ByteString;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/sigmob/wire/okio/ByteString;

    sget-object v1, Lcom/sigmob/wire/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/wire/okio/ByteString;-><init>([B)V

    iput-object p0, v0, Lcom/sigmob/wire/okio/ByteString;->utf8:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs of([B)Lcom/sigmob/wire/okio/ByteString;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v1, Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/sigmob/wire/okio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static of([BII)Lcom/sigmob/wire/okio/ByteString;
    .registers 9

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    array-length v0, p0

    int-to-long v0, v0

    int-to-long v2, p1

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {v1, v0}, Lcom/sigmob/wire/okio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static read(Ljava/io/InputStream;I)Lcom/sigmob/wire/okio/ByteString;
    .registers 6

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-gez p1, :cond_25

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_28
    if-ge v0, p1, :cond_3b

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_39

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_39
    add-int/2addr v0, v2

    goto :goto_28

    :cond_3b
    new-instance v0, Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {v0, v1}, Lcom/sigmob/wire/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sigmob/wire/okio/ByteString;->read(Ljava/io/InputStream;I)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    :try_start_8
    const-class v1, Lcom/sigmob/wire/okio/ByteString;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v0, v0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_19} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_19} :catch_21

    return-void

    :catch_1a
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_21
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    invoke-static {v0}, Lcom/sigmob/wire/okio/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    invoke-static {v0}, Lcom/sigmob/wire/okio/Base64;->encodeUrl([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/sigmob/wire/okio/ByteString;)I
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v3, v2

    :goto_10
    if-ge v3, v6, :cond_28

    invoke-virtual {p0, v3}, Lcom/sigmob/wire/okio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v3}, Lcom/sigmob/wire/okio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_23

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_23
    if-ge v7, v8, :cond_26

    :cond_25
    :goto_25
    return v0

    :cond_26
    move v0, v1

    goto :goto_25

    :cond_28
    if-ne v4, v5, :cond_2c

    move v0, v2

    goto :goto_25

    :cond_2c
    if-lt v4, v5, :cond_25

    move v0, v1

    goto :goto_25
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/ByteString;->compareTo(Lcom/sigmob/wire/okio/ByteString;)I

    move-result v0

    return v0
.end method

.method public final endsWith(Lcom/sigmob/wire/okio/ByteString;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sigmob/wire/okio/ByteString;->rangeEquals(ILcom/sigmob/wire/okio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public final endsWith([B)Z
    .registers 5

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sigmob/wire/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_5

    :goto_4
    return v1

    :cond_5
    instance-of v0, p1, Lcom/sigmob/wire/okio/ByteString;

    if-eqz v0, :cond_25

    move-object v0, p1

    check-cast v0, Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    iget-object v3, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v3, v3

    if-ne v0, v3, :cond_25

    check-cast p1, Lcom/sigmob/wire/okio/ByteString;

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    iget-object v3, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v3, v3

    invoke-virtual {p1, v2, v0, v2, v3}, Lcom/sigmob/wire/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_23
    move v1, v0

    goto :goto_4

    :cond_25
    move v0, v2

    goto :goto_23
.end method

.method public getByte(I)B
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/sigmob/wire/okio/ByteString;->hashCode:I

    if-eqz v0, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/sigmob/wire/okio/ByteString;->hashCode:I

    goto :goto_4
.end method

.method public hex()Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    iget-object v3, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v4, v3

    move v1, v0

    :goto_c
    if-ge v0, v4, :cond_29

    aget-byte v5, v3, v0

    add-int/lit8 v6, v1, 0x1

    sget-object v7, Lcom/sigmob/wire/okio/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v1

    add-int/lit8 v1, v6, 0x1

    sget-object v7, Lcom/sigmob/wire/okio/ByteString;->HEX_DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final indexOf(Lcom/sigmob/wire/okio/ByteString;)I
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->internalArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public final indexOf(Lcom/sigmob/wire/okio/ByteString;I)I
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sigmob/wire/okio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public final indexOf([B)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/wire/okio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public indexOf([BI)I
    .registers 8

    const/4 v4, 0x0

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v1, v1

    array-length v2, p1

    sub-int/2addr v1, v2

    :goto_a
    if-gt v0, v1, :cond_19

    iget-object v2, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v3, p1

    invoke-static {v2, v0, p1, v4, v3}, Lcom/sigmob/wire/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_16

    :goto_15
    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_19
    const/4 v0, -0x1

    goto :goto_15
.end method

.method internalArray()[B
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    return-object v0
.end method

.method public final lastIndexOf(Lcom/sigmob/wire/okio/ByteString;)I
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public final lastIndexOf(Lcom/sigmob/wire/okio/ByteString;I)I
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sigmob/wire/okio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public final lastIndexOf([B)I
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/wire/okio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf([BI)I
    .registers 7

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_9
    if-ltz v0, :cond_19

    iget-object v1, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v1, v0, p1, v2, v3}, Lcom/sigmob/wire/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v1

    if-eqz v1, :cond_16

    :goto_15
    return v0

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_19
    const/4 v0, -0x1

    goto :goto_15
.end method

.method public md5()Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lcom/sigmob/wire/okio/ByteString;->digest(Ljava/lang/String;)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILcom/sigmob/wire/okio/ByteString;II)Z
    .registers 6

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lcom/sigmob/wire/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(I[BII)Z
    .registers 6

    if-ltz p1, :cond_18

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_18

    if-ltz p3, :cond_18

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_18

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sigmob/wire/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public sha1()Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lcom/sigmob/wire/okio/ByteString;->digest(Ljava/lang/String;)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lcom/sigmob/wire/okio/ByteString;->digest(Ljava/lang/String;)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public final startsWith(Lcom/sigmob/wire/okio/ByteString;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/sigmob/wire/okio/ByteString;->rangeEquals(ILcom/sigmob/wire/okio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public final startsWith([B)Z
    .registers 4

    const/4 v1, 0x0

    array-length v0, p1

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/sigmob/wire/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public substring(I)Lcom/sigmob/wire/okio/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/wire/okio/ByteString;->substring(II)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lcom/sigmob/wire/okio/ByteString;
    .registers 7

    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "beginIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v0, v0

    if-le p2, v0, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    sub-int v0, p2, p1

    if-gez v0, :cond_3d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endIndex < beginIndex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    if-nez p1, :cond_45

    iget-object v1, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v1, v1

    if-ne p2, v1, :cond_45

    :goto_44
    return-object p0

    :cond_45
    new-array v1, v0, [B

    iget-object v2, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {p0, v1}, Lcom/sigmob/wire/okio/ByteString;-><init>([B)V

    goto :goto_44
.end method

.method public toAsciiLowercase()Lcom/sigmob/wire/okio/ByteString;
    .registers 7

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v0, v0

    if-ge v1, v0, :cond_3e

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    aget-byte v3, v0, v1

    if-lt v3, v4, :cond_13

    if-le v3, v5, :cond_17

    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    move v1, v2

    :goto_27
    array-length v2, v0

    if-ge v1, v2, :cond_39

    aget-byte v2, v0, v1

    if-lt v2, v4, :cond_30

    if-le v2, v5, :cond_33

    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_33
    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_30

    :cond_39
    new-instance p0, Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {p0, v0}, Lcom/sigmob/wire/okio/ByteString;-><init>([B)V

    :cond_3e
    return-object p0
.end method

.method public toAsciiUppercase()Lcom/sigmob/wire/okio/ByteString;
    .registers 7

    const/16 v5, 0x7a

    const/16 v4, 0x61

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v0, v0

    if-ge v1, v0, :cond_3e

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    aget-byte v3, v0, v1

    if-lt v3, v4, :cond_13

    if-le v3, v5, :cond_17

    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v3, -0x20

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    move v1, v2

    :goto_27
    array-length v2, v0

    if-ge v1, v2, :cond_39

    aget-byte v2, v0, v1

    if-lt v2, v4, :cond_30

    if-le v2, v5, :cond_33

    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_33
    add-int/lit8 v2, v2, -0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_30

    :cond_39
    new-instance p0, Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {p0, v0}, Lcom/sigmob/wire/okio/ByteString;-><init>([B)V

    :cond_3e
    return-object p0
.end method

.method public toByteArray()[B
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    const/16 v3, 0x40

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v0, v0

    if-nez v0, :cond_b

    const-string v0, "[size=0]"

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/sigmob/wire/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sigmob/wire/okio/ByteString;->codePointIndexToCharIndex(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_68

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v0, v0

    if-gt v0, v3, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[hex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4, v3}, Lcom/sigmob/wire/okio/ByteString;->substring(II)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_68
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "\\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r"

    const-string v4, "\\r"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_b2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a
.end method

.method public utf8()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->utf8:Ljava/lang/String;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    sget-object v2, Lcom/sigmob/wire/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->utf8:Ljava/lang/String;

    goto :goto_4
.end method

.method write(Lcom/sigmob/wire/okio/Buffer;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sigmob/wire/okio/Buffer;->write([BII)Lcom/sigmob/wire/okio/Buffer;

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/sigmob/wire/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
