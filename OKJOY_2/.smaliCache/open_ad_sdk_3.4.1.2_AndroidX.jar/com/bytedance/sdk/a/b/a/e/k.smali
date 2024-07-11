.class Lcom/bytedance/sdk/a/b/a/e/k;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/e/k$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[B

.field private static final c:Lcom/bytedance/sdk/a/b/a/e/k;


# instance fields
.field private final d:Lcom/bytedance/sdk/a/b/a/e/k$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_18

    sput-object v1, Lcom/bytedance/sdk/a/b/a/e/k;->a:[I

    .line 66
    new-array v0, v0, [B

    fill-array-data v0, :array_21c

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/k;->b:[B

    .line 80
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/k;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/e/k;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/k;->c:Lcom/bytedance/sdk/a/b/a/e/k;

    return-void

    :array_18
    .array-data 4
        0x1ff8
        0x7fffd8
        0xfffffe2
        0xfffffe3
        0xfffffe4
        0xfffffe5
        0xfffffe6
        0xfffffe7
        0xfffffe8
        0xffffea
        0x3ffffffc    # 1.9999995f
        0xfffffe9
        0xfffffea
        0x3ffffffd    # 1.9999996f
        0xfffffeb
        0xfffffec
        0xfffffed
        0xfffffee
        0xfffffef
        0xffffff0
        0xffffff1
        0xffffff2
        0x3ffffffe    # 1.9999998f
        0xffffff3
        0xffffff4
        0xffffff5
        0xffffff6
        0xffffff7
        0xffffff8
        0xffffff9
        0xffffffa
        0xffffffb
        0x14
        0x3f8
        0x3f9
        0xffa
        0x1ff9
        0x15
        0xf8
        0x7fa
        0x3fa
        0x3fb
        0xf9
        0x7fb
        0xfa
        0x16
        0x17
        0x18
        0x0
        0x1
        0x2
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x5c
        0xfb
        0x7ffc
        0x20
        0xffb
        0x3fc
        0x1ffa
        0x21
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0xfc
        0x73
        0xfd
        0x1ffb
        0x7fff0
        0x1ffc
        0x3ffc
        0x22
        0x7ffd
        0x3
        0x23
        0x4
        0x24
        0x5
        0x25
        0x26
        0x27
        0x6
        0x74
        0x75
        0x28
        0x29
        0x2a
        0x7
        0x2b
        0x76
        0x2c
        0x8
        0x9
        0x2d
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7ffe
        0x7fc
        0x3ffd
        0x1ffd
        0xffffffc
        0xfffe6
        0x3fffd2
        0xfffe7
        0xfffe8
        0x3fffd3
        0x3fffd4
        0x3fffd5
        0x7fffd9
        0x3fffd6
        0x7fffda
        0x7fffdb
        0x7fffdc
        0x7fffdd
        0x7fffde
        0xffffeb
        0x7fffdf
        0xffffec
        0xffffed
        0x3fffd7
        0x7fffe0
        0xffffee
        0x7fffe1
        0x7fffe2
        0x7fffe3
        0x7fffe4
        0x1fffdc
        0x3fffd8
        0x7fffe5
        0x3fffd9
        0x7fffe6
        0x7fffe7
        0xffffef
        0x3fffda
        0x1fffdd
        0xfffe9
        0x3fffdb
        0x3fffdc
        0x7fffe8
        0x7fffe9
        0x1fffde
        0x7fffea
        0x3fffdd
        0x3fffde
        0xfffff0
        0x1fffdf
        0x3fffdf
        0x7fffeb
        0x7fffec
        0x1fffe0
        0x1fffe1
        0x3fffe0
        0x1fffe2
        0x7fffed
        0x3fffe1
        0x7fffee
        0x7fffef
        0xfffea
        0x3fffe2
        0x3fffe3
        0x3fffe4
        0x7ffff0
        0x3fffe5
        0x3fffe6
        0x7ffff1
        0x3ffffe0
        0x3ffffe1
        0xfffeb
        0x7fff1
        0x3fffe7
        0x7ffff2
        0x3fffe8
        0x1ffffec
        0x3ffffe2
        0x3ffffe3
        0x3ffffe4
        0x7ffffde
        0x7ffffdf
        0x3ffffe5
        0xfffff1
        0x1ffffed
        0x7fff2
        0x1fffe3
        0x3ffffe6
        0x7ffffe0
        0x7ffffe1
        0x3ffffe7
        0x7ffffe2
        0xfffff2
        0x1fffe4
        0x1fffe5
        0x3ffffe8
        0x3ffffe9
        0xffffffd
        0x7ffffe3
        0x7ffffe4
        0x7ffffe5
        0xfffec
        0xfffff3
        0xfffed
        0x1fffe6
        0x3fffe9
        0x1fffe7
        0x1fffe8
        0x7ffff3
        0x3fffea
        0x3fffeb
        0x1ffffee
        0x1ffffef
        0xfffff4
        0xfffff5
        0x3ffffea
        0x7ffff4
        0x3ffffeb
        0x7ffffe6
        0x3ffffec
        0x3ffffed
        0x7ffffe7
        0x7ffffe8
        0x7ffffe9
        0x7ffffea
        0x7ffffeb
        0xffffffe
        0x7ffffec
        0x7ffffed
        0x7ffffee
        0x7ffffef
        0x7fffff0
        0x3ffffee
    .end array-data

    :array_21c
    .array-data 1
        0xdt
        0x17t
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x18t
        0x1et
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x6t
        0xat
        0xat
        0xct
        0xdt
        0x6t
        0x8t
        0xbt
        0xat
        0xat
        0x8t
        0xbt
        0x8t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x8t
        0xft
        0x6t
        0xct
        0xat
        0xdt
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x7t
        0x8t
        0xdt
        0x13t
        0xdt
        0xet
        0x6t
        0xft
        0x5t
        0x6t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x7t
        0x6t
        0x5t
        0x5t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0xft
        0xbt
        0xet
        0xdt
        0x1ct
        0x14t
        0x16t
        0x14t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x17t
        0x18t
        0x18t
        0x16t
        0x17t
        0x18t
        0x17t
        0x17t
        0x17t
        0x17t
        0x15t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x18t
        0x16t
        0x15t
        0x14t
        0x16t
        0x16t
        0x17t
        0x17t
        0x15t
        0x17t
        0x16t
        0x16t
        0x18t
        0x15t
        0x16t
        0x17t
        0x17t
        0x15t
        0x15t
        0x16t
        0x15t
        0x17t
        0x16t
        0x17t
        0x17t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x16t
        0x17t
        0x1at
        0x1at
        0x14t
        0x13t
        0x16t
        0x17t
        0x16t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x18t
        0x19t
        0x13t
        0x15t
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x1bt
        0x18t
        0x15t
        0x15t
        0x1at
        0x1at
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x14t
        0x18t
        0x14t
        0x15t
        0x16t
        0x15t
        0x15t
        0x17t
        0x16t
        0x16t
        0x19t
        0x19t
        0x18t
        0x18t
        0x1at
        0x17t
        0x1at
        0x1bt
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1at
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/k$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/e/k$a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/k;->d:Lcom/bytedance/sdk/a/b/a/e/k$a;

    .line 89
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/k;->b()V

    .line 90
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/a/b/a/e/k;
    .registers 1

    .line 83
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/k;->c:Lcom/bytedance/sdk/a/b/a/e/k;

    return-object v0
.end method

.method private a(IIB)V
    .registers 8

    .line 174
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/k$a;

    invoke-direct {v0, p1, p3}, Lcom/bytedance/sdk/a/b/a/e/k$a;-><init>(II)V

    .line 176
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/k;->d:Lcom/bytedance/sdk/a/b/a/e/k$a;

    .line 177
    :goto_7
    const/16 v1, 0x8

    if-le p3, v1, :cond_32

    .line 178
    add-int/lit8 p3, p3, -0x8

    int-to-byte p3, p3

    .line 179
    ushr-int v1, p2, p3

    and-int/lit16 v1, v1, 0xff

    .line 180
    iget-object v2, p1, Lcom/bytedance/sdk/a/b/a/e/k$a;->a:[Lcom/bytedance/sdk/a/b/a/e/k$a;

    if-eqz v2, :cond_2a

    .line 183
    iget-object v2, p1, Lcom/bytedance/sdk/a/b/a/e/k$a;->a:[Lcom/bytedance/sdk/a/b/a/e/k$a;

    aget-object v2, v2, v1

    if-nez v2, :cond_25

    .line 184
    iget-object v2, p1, Lcom/bytedance/sdk/a/b/a/e/k$a;->a:[Lcom/bytedance/sdk/a/b/a/e/k$a;

    new-instance v3, Lcom/bytedance/sdk/a/b/a/e/k$a;

    invoke-direct {v3}, Lcom/bytedance/sdk/a/b/a/e/k$a;-><init>()V

    aput-object v3, v2, v1

    .line 186
    :cond_25
    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/e/k$a;->a:[Lcom/bytedance/sdk/a/b/a/e/k$a;

    aget-object p1, p1, v1

    .line 187
    goto :goto_7

    .line 181
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid dictionary: prefix not unique"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_32
    sub-int/2addr v1, p3

    .line 190
    shl-int/2addr p2, v1

    and-int/lit16 p2, p2, 0xff

    .line 191
    const/4 p3, 0x1

    shl-int/2addr p3, v1

    .line 192
    move v1, p2

    :goto_39
    add-int v2, p2, p3

    if-ge v1, v2, :cond_44

    .line 193
    iget-object v2, p1, Lcom/bytedance/sdk/a/b/a/e/k$a;->a:[Lcom/bytedance/sdk/a/b/a/e/k$a;

    aput-object v0, v2, v1

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 195
    :cond_44
    return-void
.end method

.method private b()V
    .registers 4

    .line 168
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/k;->b:[B

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 169
    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/k;->a:[I

    aget v2, v2, v0

    aget-byte v1, v1, v0

    invoke-direct {p0, v0, v2, v1}, Lcom/bytedance/sdk/a/b/a/e/k;->a(IIB)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_12
    return-void
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/a/a/f;)I
    .registers 7

    .line 119
    nop

    .line 121
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v3

    if-ge v2, v3, :cond_19

    .line 122
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/a/a/f;->a(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 123
    sget-object v4, Lcom/bytedance/sdk/a/b/a/e/k;->b:[B

    aget-byte v3, v4, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 126
    :cond_19
    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const/4 p1, 0x3

    shr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method a(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/d;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    nop

    .line 94
    nop

    .line 96
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    move v1, v0

    :goto_7
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v4

    const/16 v5, 0xff

    if-ge v0, v4, :cond_30

    .line 97
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/a/f;->a(I)B

    move-result v4

    and-int/2addr v4, v5

    .line 98
    sget-object v5, Lcom/bytedance/sdk/a/b/a/e/k;->a:[I

    aget v5, v5, v4

    .line 99
    sget-object v6, Lcom/bytedance/sdk/a/b/a/e/k;->b:[B

    aget-byte v4, v6, v4

    .line 101
    shl-long/2addr v2, v4

    .line 102
    int-to-long v5, v5

    or-long/2addr v2, v5

    .line 103
    add-int/2addr v1, v4

    .line 105
    :goto_20
    const/16 v4, 0x8

    if-lt v1, v4, :cond_2d

    .line 106
    add-int/lit8 v1, v1, -0x8

    .line 107
    shr-long v4, v2, v1

    long-to-int v4, v4

    invoke-interface {p2, v4}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    goto :goto_20

    .line 96
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 111
    :cond_30
    if-lez v1, :cond_3d

    .line 112
    rsub-int/lit8 p1, v1, 0x8

    shl-long/2addr v2, p1

    .line 113
    ushr-int p1, v5, v1

    int-to-long v0, p1

    or-long/2addr v0, v2

    .line 114
    long-to-int p1, v0

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 116
    :cond_3d
    return-void
.end method

.method a([B)[B
    .registers 8

    .line 130
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/k;->d:Lcom/bytedance/sdk/a/b/a/e/k$a;

    .line 132
    nop

    .line 133
    nop

    .line 134
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    array-length v5, p1

    if-ge v2, v5, :cond_3b

    .line 135
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    .line 136
    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v5

    .line 137
    add-int/lit8 v4, v4, 0x8

    .line 138
    :goto_18
    const/16 v5, 0x8

    if-lt v4, v5, :cond_38

    .line 139
    add-int/lit8 v5, v4, -0x8

    ushr-int v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    .line 140
    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/k$a;->a:[Lcom/bytedance/sdk/a/b/a/e/k$a;

    aget-object v1, v1, v5

    .line 141
    iget-object v5, v1, Lcom/bytedance/sdk/a/b/a/e/k$a;->a:[Lcom/bytedance/sdk/a/b/a/e/k$a;

    if-nez v5, :cond_35

    .line 143
    iget v5, v1, Lcom/bytedance/sdk/a/b/a/e/k$a;->b:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 144
    iget v1, v1, Lcom/bytedance/sdk/a/b/a/e/k$a;->c:I

    sub-int/2addr v4, v1

    .line 145
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/k;->d:Lcom/bytedance/sdk/a/b/a/e/k$a;

    goto :goto_37

    .line 148
    :cond_35
    add-int/lit8 v4, v4, -0x8

    .line 150
    :goto_37
    goto :goto_18

    .line 134
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 153
    :cond_3b
    :goto_3b
    if-lez v4, :cond_5b

    .line 154
    rsub-int/lit8 p1, v4, 0x8

    shl-int p1, v3, p1

    and-int/lit16 p1, p1, 0xff

    .line 155
    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/k$a;->a:[Lcom/bytedance/sdk/a/b/a/e/k$a;

    aget-object p1, v1, p1

    .line 156
    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a/e/k$a;->a:[Lcom/bytedance/sdk/a/b/a/e/k$a;

    if-nez v1, :cond_5b

    iget v1, p1, Lcom/bytedance/sdk/a/b/a/e/k$a;->c:I

    if-le v1, v4, :cond_50

    .line 157
    goto :goto_5b

    .line 159
    :cond_50
    iget v1, p1, Lcom/bytedance/sdk/a/b/a/e/k$a;->b:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 160
    iget p1, p1, Lcom/bytedance/sdk/a/b/a/e/k$a;->c:I

    sub-int/2addr v4, p1

    .line 161
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/k;->d:Lcom/bytedance/sdk/a/b/a/e/k$a;

    .line 162
    goto :goto_3b

    .line 164
    :cond_5b
    :goto_5b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
