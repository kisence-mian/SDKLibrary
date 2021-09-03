.class final Lcom/tds/protobuf/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/Utf8$UnsafeProcessor;,
        Lcom/tds/protobuf/Utf8$SafeProcessor;,
        Lcom/tds/protobuf/Utf8$Processor;,
        Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;
    }
.end annotation


# static fields
.field private static final ASCII_MASK_LONG:J = -0x7f7f7f7f7f7f7f80L

.field public static final COMPLETE:I = 0x0

.field public static final MALFORMED:I = -0x1

.field static final MAX_BYTES_PER_CHAR:I = 0x3

.field private static final UNSAFE_COUNT_ASCII_THRESHOLD:I = 0x10

.field private static final processor:Lcom/tds/protobuf/Utf8$Processor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    invoke-static {}, Lcom/tds/protobuf/Utf8$UnsafeProcessor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/tds/protobuf/Utf8$UnsafeProcessor;

    invoke-direct {v0}, Lcom/tds/protobuf/Utf8$UnsafeProcessor;-><init>()V

    goto :goto_11

    :cond_c
    new-instance v0, Lcom/tds/protobuf/Utf8$SafeProcessor;

    invoke-direct {v0}, Lcom/tds/protobuf/Utf8$SafeProcessor;-><init>()V

    :goto_11
    sput-object v0, Lcom/tds/protobuf/Utf8;->processor:Lcom/tds/protobuf/Utf8$Processor;

    .line 86
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(II)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 79
    invoke-static {p0, p1}, Lcom/tds/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(III)I
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 79
    invoke-static {p0, p1, p2}, Lcom/tds/protobuf/Utf8;->incompleteStateFor(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/nio/ByteBuffer;II)I
    .registers 4
    .param p0, "x0"    # Ljava/nio/ByteBuffer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 79
    invoke-static {p0, p1, p2}, Lcom/tds/protobuf/Utf8;->estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/nio/ByteBuffer;III)I
    .registers 5
    .param p0, "x0"    # Ljava/nio/ByteBuffer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 79
    invoke-static {p0, p1, p2, p3}, Lcom/tds/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I

    move-result v0

    return v0
.end method

.method static synthetic access$400([BII)I
    .registers 4
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 79
    invoke-static {p0, p1, p2}, Lcom/tds/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(I)I
    .registers 2
    .param p0, "x0"    # I

    .line 79
    invoke-static {p0}, Lcom/tds/protobuf/Utf8;->incompleteStateFor(I)I

    move-result v0

    return v0
.end method

.method static encode(Ljava/lang/CharSequence;[BII)I
    .registers 5
    .param p0, "in"    # Ljava/lang/CharSequence;
    .param p1, "out"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 304
    sget-object v0, Lcom/tds/protobuf/Utf8;->processor:Lcom/tds/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tds/protobuf/Utf8$Processor;->encodeUtf8(Ljava/lang/CharSequence;[BII)I

    move-result v0

    return v0
.end method

.method static encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "in"    # Ljava/lang/CharSequence;
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .line 345
    sget-object v0, Lcom/tds/protobuf/Utf8;->processor:Lcom/tds/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1}, Lcom/tds/protobuf/Utf8$Processor;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 346
    return-void
.end method

.method static encodedLength(Ljava/lang/CharSequence;)I
    .registers 10
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .line 252
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 253
    .local v0, "utf16Length":I
    move v1, v0

    .line 254
    .local v1, "utf8Length":I
    const/4 v2, 0x0

    .line 257
    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_13

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_13

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 262
    :cond_13
    :goto_13
    if-ge v2, v0, :cond_2a

    .line 263
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 264
    .local v3, "c":C
    const/16 v4, 0x800

    if-ge v3, v4, :cond_25

    .line 265
    rsub-int/lit8 v4, v3, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v1, v4

    .line 262
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 267
    .restart local v3    # "c":C
    :cond_25
    invoke-static {p0, v2}, Lcom/tds/protobuf/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/2addr v1, v4

    .line 272
    .end local v3    # "c":C
    :cond_2a
    if-lt v1, v0, :cond_2d

    .line 277
    return v1

    .line 274
    :cond_2d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UTF-8 length does not fit in int: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-long v5, v1

    const-wide v7, 0x100000000L

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 8
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 281
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 282
    .local v0, "utf16Length":I
    const/4 v1, 0x0

    .line 283
    .local v1, "utf8Length":I
    move v2, p1

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_36

    .line 284
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 285
    .local v3, "c":C
    const/16 v4, 0x800

    if-ge v3, v4, :cond_16

    .line 286
    rsub-int/lit8 v4, v3, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v1, v4

    goto :goto_33

    .line 288
    :cond_16
    add-int/lit8 v1, v1, 0x2

    .line 290
    const v4, 0xd800

    if-gt v4, v3, :cond_33

    const v4, 0xdfff

    if-gt v3, v4, :cond_33

    .line 292
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 293
    .local v4, "cp":I
    const/high16 v5, 0x10000

    if-lt v4, v5, :cond_2d

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 294
    :cond_2d
    new-instance v5, Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v5, v2, v0}, Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v5

    .line 283
    .end local v3    # "c":C
    .end local v4    # "cp":I
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 300
    .end local v2    # "i":I
    :cond_36
    return v1
.end method

.method private static estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I
    .registers 9
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 360
    move v0, p1

    .line 361
    .local v0, "i":I
    add-int/lit8 v1, p2, -0x7

    .line 365
    .local v1, "lim":I
    :goto_3
    if-ge v0, v1, :cond_18

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_18

    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    .line 366
    :cond_18
    sub-int v2, v0, p1

    return v2
.end method

.method private static incompleteStateFor(I)I
    .registers 2
    .param p0, "byte1"    # I

    .line 191
    const/16 v0, -0xc

    if-le p0, v0, :cond_6

    const/4 v0, -0x1

    goto :goto_7

    :cond_6
    move v0, p0

    :goto_7
    return v0
.end method

.method private static incompleteStateFor(II)I
    .registers 3
    .param p0, "byte1"    # I
    .param p1, "byte2"    # I

    .line 196
    const/16 v0, -0xc

    if-gt p0, v0, :cond_d

    const/16 v0, -0x41

    if-le p1, v0, :cond_9

    goto :goto_d

    :cond_9
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method private static incompleteStateFor(III)I
    .registers 5
    .param p0, "byte1"    # I
    .param p1, "byte2"    # I
    .param p2, "byte3"    # I

    .line 202
    const/16 v0, -0xc

    if-gt p0, v0, :cond_12

    const/16 v0, -0x41

    if-gt p1, v0, :cond_12

    if-le p2, v0, :cond_b

    goto :goto_12

    :cond_b
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x10

    xor-int/2addr v0, v1

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, -0x1

    :goto_13
    return v0
.end method

.method private static incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    .registers 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "byte1"    # I
    .param p2, "index"    # I
    .param p3, "remaining"    # I

    .line 220
    packed-switch p3, :pswitch_data_26

    .line 228
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 226
    :pswitch_9
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/tds/protobuf/Utf8;->incompleteStateFor(III)I

    move-result v0

    return v0

    .line 224
    :pswitch_18
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {p1, v0}, Lcom/tds/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v0

    return v0

    .line 222
    :pswitch_21
    invoke-static {p1}, Lcom/tds/protobuf/Utf8;->incompleteStateFor(I)I

    move-result v0

    return v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_21
        :pswitch_18
        :pswitch_9
    .end packed-switch
.end method

.method private static incompleteStateFor([BII)I
    .registers 6
    .param p0, "bytes"    # [B
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 209
    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    .line 210
    .local v0, "byte1":I
    sub-int v1, p2, p1

    packed-switch v1, :pswitch_data_26

    .line 214
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 213
    :pswitch_f
    aget-byte v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/tds/protobuf/Utf8;->incompleteStateFor(III)I

    move-result v1

    return v1

    .line 212
    :pswitch_1a
    aget-byte v1, p0, p1

    invoke-static {v0, v1}, Lcom/tds/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v1

    return v1

    .line 211
    :pswitch_21
    invoke-static {v0}, Lcom/tds/protobuf/Utf8;->incompleteStateFor(I)I

    move-result v1

    return v1

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1a
        :pswitch_f
    .end packed-switch
.end method

.method static isValidUtf8(Ljava/nio/ByteBuffer;)Z
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 318
    sget-object v0, Lcom/tds/protobuf/Utf8;->processor:Lcom/tds/protobuf/Utf8$Processor;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/tds/protobuf/Utf8$Processor;->isValidUtf8(Ljava/nio/ByteBuffer;II)Z

    move-result v0

    return v0
.end method

.method public static isValidUtf8([B)Z
    .registers 4
    .param p0, "bytes"    # [B

    .line 152
    sget-object v0, Lcom/tds/protobuf/Utf8;->processor:Lcom/tds/protobuf/Utf8$Processor;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/tds/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method public static isValidUtf8([BII)Z
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 165
    sget-object v0, Lcom/tds/protobuf/Utf8;->processor:Lcom/tds/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/tds/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method static partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .registers 5
    .param p0, "state"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "limit"    # I

    .line 331
    sget-object v0, Lcom/tds/protobuf/Utf8;->processor:Lcom/tds/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tds/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public static partialIsValidUtf8(I[BII)I
    .registers 5
    .param p0, "state"    # I
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "limit"    # I

    .line 187
    sget-object v0, Lcom/tds/protobuf/Utf8;->processor:Lcom/tds/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tds/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result v0

    return v0
.end method
