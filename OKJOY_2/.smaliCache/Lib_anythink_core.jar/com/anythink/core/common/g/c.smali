.class public Lcom/anythink/core/common/g/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:[C

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-class v0, Lcom/anythink/core/common/g/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/g/c;->a:Ljava/lang/String;

    .line 19
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/anythink/core/common/g/c;->b:[C

    .line 24
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_60

    sput-object v0, Lcom/anythink/core/common/g/c;->c:[B

    return-void

    nop

    :array_1c
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data

    :array_60
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37
    const-string p0, ""

    return-object p0

    .line 39
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/anythink/core/common/g/c;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 9

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    array-length v1, p0

    .line 53
    const/4 v2, 0x0

    .line 56
    :goto_7
    if-ge v2, v1, :cond_98

    .line 57
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 58
    if-ne v3, v1, :cond_2b

    .line 59
    sget-object p0, Lcom/anythink/core/common/g/c;->b:[C

    ushr-int/lit8 v1, v2, 0x2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    sget-object p0, Lcom/anythink/core/common/g/c;->b:[C

    and-int/lit8 v1, v2, 0x3

    shl-int/lit8 v1, v1, 0x4

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    const-string p0, "=="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    goto :goto_98

    .line 64
    :cond_2b
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 65
    if-ne v4, v1, :cond_5d

    .line 66
    sget-object p0, Lcom/anythink/core/common/g/c;->b:[C

    ushr-int/lit8 v1, v2, 0x2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    sget-object p0, Lcom/anythink/core/common/g/c;->b:[C

    and-int/lit8 v1, v2, 0x3

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v2, v3, 0xf0

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    sget-object p0, Lcom/anythink/core/common/g/c;->b:[C

    and-int/lit8 v1, v3, 0xf

    shl-int/lit8 v1, v1, 0x2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    goto :goto_98

    .line 72
    :cond_5d
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 73
    sget-object v6, Lcom/anythink/core/common/g/c;->b:[C

    ushr-int/lit8 v7, v2, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    sget-object v6, Lcom/anythink/core/common/g/c;->b:[C

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v2, v7

    aget-char v2, v6, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    sget-object v2, Lcom/anythink/core/common/g/c;->b:[C

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v6, v4, 0xc0

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v3, v6

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    sget-object v2, Lcom/anythink/core/common/g/c;->b:[C

    and-int/lit8 v3, v4, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v5

    goto/16 :goto_7

    .line 78
    :cond_98
    :goto_98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 45
    const-string p0, ""

    return-object p0

    .line 47
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/anythink/core/common/g/c;->c(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static c(Ljava/lang/String;)[B
    .registers 9

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 83
    array-length v0, p0

    .line 84
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 85
    const/4 v2, 0x0

    .line 88
    :goto_b
    if-ge v2, v0, :cond_82

    .line 92
    :goto_d
    sget-object v3, Lcom/anythink/core/common/g/c;->c:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v3, v2

    .line 93
    const/4 v3, -0x1

    if-ge v4, v0, :cond_1d

    if-eq v2, v3, :cond_1b

    goto :goto_1d

    :cond_1b
    move v2, v4

    goto :goto_d

    .line 94
    :cond_1d
    :goto_1d
    if-eq v2, v3, :cond_82

    .line 100
    :goto_1f
    sget-object v5, Lcom/anythink/core/common/g/c;->c:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v5, v4

    .line 101
    if-ge v6, v0, :cond_2e

    if-eq v4, v3, :cond_2c

    goto :goto_2e

    :cond_2c
    move v4, v6

    goto :goto_1f

    .line 102
    :cond_2e
    :goto_2e
    if-eq v4, v3, :cond_82

    .line 105
    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v5, v4, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 109
    :goto_3a
    add-int/lit8 v2, v6, 0x1

    aget-byte v5, p0, v6

    .line 110
    const/16 v6, 0x3d

    if-ne v5, v6, :cond_47

    .line 111
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 113
    :cond_47
    sget-object v7, Lcom/anythink/core/common/g/c;->c:[B

    aget-byte v5, v7, v5

    .line 114
    if-ge v2, v0, :cond_52

    if-eq v5, v3, :cond_50

    goto :goto_52

    :cond_50
    move v6, v2

    goto :goto_3a

    .line 115
    :cond_52
    :goto_52
    if-eq v5, v3, :cond_82

    .line 118
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v7, v5, 0x3c

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v4, v7

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 122
    :goto_60
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    .line 123
    if-ne v2, v6, :cond_6b

    .line 124
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 126
    :cond_6b
    sget-object v7, Lcom/anythink/core/common/g/c;->c:[B

    aget-byte v2, v7, v2

    .line 127
    if-ge v4, v0, :cond_76

    if-eq v2, v3, :cond_74

    goto :goto_76

    :cond_74
    move v2, v4

    goto :goto_60

    .line 128
    :cond_76
    :goto_76
    if-eq v2, v3, :cond_82

    .line 131
    and-int/lit8 v3, v5, 0x3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v2, v4

    goto :goto_b

    .line 133
    :cond_82
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
