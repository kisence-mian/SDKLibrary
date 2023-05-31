.class public Lcom/tds/common/websocket/util/Charsetfunctions;
.super Ljava/lang/Object;
.source "Charsetfunctions.java"


# static fields
.field private static final codingErrorAction:Ljava/nio/charset/CodingErrorAction;

.field private static final utf8d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    sput-object v0, Lcom/tds/common/websocket/util/Charsetfunctions;->codingErrorAction:Ljava/nio/charset/CodingErrorAction;

    .line 92
    const/16 v0, 0x190

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/tds/common/websocket/util/Charsetfunctions;->utf8d:[I

    return-void

    :array_e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x8
        0x8
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0xa
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x3
        0x3
        0xb
        0x6
        0x6
        0x6
        0x5
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x0
        0x1
        0x2
        0x3
        0x5
        0x8
        0x7
        0x1
        0x1
        0x1
        0x4
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static asciiBytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 58
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static isValidUTF8(Ljava/nio/ByteBuffer;)Z
    .registers 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 152
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tds/common/websocket/util/Charsetfunctions;->isValidUTF8(Ljava/nio/ByteBuffer;I)Z

    move-result v0

    return v0
.end method

.method public static isValidUTF8(Ljava/nio/ByteBuffer;I)Z
    .registers 10
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "off"    # I

    .line 131
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 132
    .local v0, "len":I
    const/4 v1, 0x0

    if-ge v0, p1, :cond_8

    .line 133
    return v1

    .line 135
    :cond_8
    const/4 v2, 0x0

    .line 136
    .local v2, "state":I
    move v3, p1

    .local v3, "i":I
    :goto_a
    const/4 v4, 0x1

    if-ge v3, v0, :cond_24

    .line 137
    sget-object v5, Lcom/tds/common/websocket/util/Charsetfunctions;->utf8d:[I

    shl-int/lit8 v6, v2, 0x4

    add-int/lit16 v6, v6, 0x100

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v5, v7

    add-int/2addr v6, v7

    aget v2, v5, v6

    .line 138
    if-ne v2, v4, :cond_21

    .line 139
    return v1

    .line 136
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 142
    .end local v3    # "i":I
    :cond_24
    return v4
.end method

.method public static stringAscii([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .line 62
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/tds/common/websocket/util/Charsetfunctions;->stringAscii([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringAscii([BII)Ljava/lang/String;
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 66
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 5
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 74
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 75
    .local v0, "decode":Ljava/nio/charset/CharsetDecoder;
    sget-object v1, Lcom/tds/common/websocket/util/Charsetfunctions;->codingErrorAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 76
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 79
    :try_start_e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 80
    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;
    :try_end_1c
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_e .. :try_end_1c} :catch_1e

    .line 84
    nop

    .line 85
    return-object v1

    .line 82
    .end local v1    # "s":Ljava/lang/String;
    :catch_1e
    move-exception v1

    .line 83
    .local v1, "e":Ljava/nio/charset/CharacterCodingException;
    new-instance v2, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const/16 v3, 0x3ef

    invoke-direct {v2, v3, v1}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/Throwable;)V

    throw v2
.end method

.method public static stringUtf8([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 70
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static utf8Bytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 51
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method
