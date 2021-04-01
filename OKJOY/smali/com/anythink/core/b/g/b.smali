.class public Lcom/anythink/core/b/g/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:[C

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/anythink/core/b/g/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/g/b;->a:Ljava/lang/String;

    .line 12
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/anythink/core/b/g/b;->b:[C

    .line 17
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_60

    sput-object v0, Lcom/anythink/core/b/g/b;->c:[B

    return-void

    .line 12
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

    .line 17
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

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    const-string v0, ""

    .line 33
    :goto_8
    return-object v0

    .line 32
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1044
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1045
    array-length v3, v1

    .line 1046
    const/4 v0, 0x0

    .line 1049
    :goto_14
    if-ge v0, v3, :cond_37

    .line 1050
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v5, v0, 0xff

    .line 1051
    if-ne v4, v3, :cond_3c

    .line 1052
    sget-object v0, Lcom/anythink/core/b/g/b;->b:[C

    ushr-int/lit8 v1, v5, 0x2

    aget-char v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1053
    sget-object v0, Lcom/anythink/core/b/g/b;->b:[C

    and-int/lit8 v1, v5, 0x3

    shl-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1054
    const-string v0, "=="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1071
    :cond_37
    :goto_37
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1057
    :cond_3c
    add-int/lit8 v6, v4, 0x1

    aget-byte v0, v1, v4

    and-int/lit16 v4, v0, 0xff

    .line 1058
    if-ne v6, v3, :cond_6e

    .line 1059
    sget-object v0, Lcom/anythink/core/b/g/b;->b:[C

    ushr-int/lit8 v1, v5, 0x2

    aget-char v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1060
    sget-object v0, Lcom/anythink/core/b/g/b;->b:[C

    and-int/lit8 v1, v5, 0x3

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v3, v4, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    aget-char v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1061
    sget-object v0, Lcom/anythink/core/b/g/b;->b:[C

    and-int/lit8 v1, v4, 0xf

    shl-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1062
    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_37

    .line 1065
    :cond_6e
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    .line 1066
    sget-object v7, Lcom/anythink/core/b/g/b;->b:[C

    ushr-int/lit8 v8, v5, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1067
    sget-object v7, Lcom/anythink/core/b/g/b;->b:[C

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v8, v4, 0xf0

    ushr-int/lit8 v8, v8, 0x4

    or-int/2addr v5, v8

    aget-char v5, v7, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1068
    sget-object v5, Lcom/anythink/core/b/g/b;->b:[C

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    and-int/lit16 v7, v6, 0xc0

    ushr-int/lit8 v7, v7, 0x6

    or-int/2addr v4, v7

    aget-char v4, v5, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1069
    sget-object v4, Lcom/anythink/core/b/g/b;->b:[C

    and-int/lit8 v5, v6, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_14
.end method

.method private static a([B)Ljava/lang/String;
    .registers 9

    .prologue
    .line 44
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    array-length v2, p0

    .line 46
    const/4 v0, 0x0

    .line 49
    :goto_7
    if-ge v0, v2, :cond_2a

    .line 50
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v4, v0, 0xff

    .line 51
    if-ne v3, v2, :cond_2f

    .line 52
    sget-object v0, Lcom/anythink/core/b/g/b;->b:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    sget-object v0, Lcom/anythink/core/b/g/b;->b:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    const-string v0, "=="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :cond_2a
    :goto_2a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_2f
    add-int/lit8 v5, v3, 0x1

    aget-byte v0, p0, v3

    and-int/lit16 v3, v0, 0xff

    .line 58
    if-ne v5, v2, :cond_61

    .line 59
    sget-object v0, Lcom/anythink/core/b/g/b;->b:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    sget-object v0, Lcom/anythink/core/b/g/b;->b:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    sget-object v0, Lcom/anythink/core/b/g/b;->b:[C

    and-int/lit8 v2, v3, 0xf

    shl-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a

    .line 65
    :cond_61
    add-int/lit8 v0, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 66
    sget-object v6, Lcom/anythink/core/b/g/b;->b:[C

    ushr-int/lit8 v7, v4, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    sget-object v6, Lcom/anythink/core/b/g/b;->b:[C

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v4, v7

    aget-char v4, v6, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    sget-object v4, Lcom/anythink/core/b/g/b;->b:[C

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v6, v5, 0xc0

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v3, v6

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    sget-object v3, Lcom/anythink/core/b/g/b;->b:[C

    and-int/lit8 v4, v5, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_7
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    const-string v0, ""

    .line 40
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/anythink/core/b/g/b;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_8
.end method

.method private static c(Ljava/lang/String;)[B
    .registers 10

    .prologue
    const/16 v8, 0x3d

    const/4 v7, -0x1

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 76
    array-length v3, v2

    .line 77
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_e
    if-ge v0, v3, :cond_75

    .line 85
    :goto_10
    sget-object v5, Lcom/anythink/core/b/g/b;->c:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    aget-byte v5, v5, v0

    .line 86
    if-ge v1, v3, :cond_1c

    if-eq v5, v7, :cond_80

    .line 87
    :cond_1c
    if-eq v5, v7, :cond_75

    .line 93
    :goto_1e
    sget-object v6, Lcom/anythink/core/b/g/b;->c:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    aget-byte v6, v6, v1

    .line 94
    if-ge v0, v3, :cond_2a

    if-eq v6, v7, :cond_7e

    .line 95
    :cond_2a
    if-eq v6, v7, :cond_75

    .line 98
    shl-int/lit8 v1, v5, 0x2

    and-int/lit8 v5, v6, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 102
    :goto_36
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    .line 103
    if-ne v0, v8, :cond_41

    .line 104
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 126
    :goto_40
    return-object v0

    .line 106
    :cond_41
    sget-object v5, Lcom/anythink/core/b/g/b;->c:[B

    aget-byte v5, v5, v0

    .line 107
    if-ge v1, v3, :cond_49

    if-eq v5, v7, :cond_7c

    .line 108
    :cond_49
    if-eq v5, v7, :cond_75

    .line 111
    and-int/lit8 v0, v6, 0xf

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v6, v5, 0x3c

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v0, v6

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 115
    :goto_57
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    .line 116
    if-ne v1, v8, :cond_62

    .line 117
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_40

    .line 119
    :cond_62
    sget-object v6, Lcom/anythink/core/b/g/b;->c:[B

    aget-byte v1, v6, v1

    .line 120
    if-ge v0, v3, :cond_6a

    if-eq v1, v7, :cond_7a

    .line 121
    :cond_6a
    if-eq v1, v7, :cond_75

    .line 124
    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_e

    .line 126
    :cond_75
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_40

    :cond_7a
    move v1, v0

    goto :goto_57

    :cond_7c
    move v0, v1

    goto :goto_36

    :cond_7e
    move v1, v0

    goto :goto_1e

    :cond_80
    move v0, v1

    goto :goto_10
.end method
