.class public final Lcom/bytedance/sdk/a/b/a/e/e;
.super Ljava/lang/Object;
.source "Http2.java"


# static fields
.field static final a:Lcom/bytedance/sdk/a/a/f;

.field static final b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/16 v7, 0x8

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 26
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 27
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->a:Lcom/bytedance/sdk/a/a/f;

    .line 57
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "DATA"

    aput-object v2, v0, v1

    const-string v2, "HEADERS"

    aput-object v2, v0, v6

    const/4 v2, 0x2

    const-string v3, "PRIORITY"

    aput-object v3, v0, v2

    const-string v2, "RST_STREAM"

    aput-object v2, v0, v9

    const-string v2, "SETTINGS"

    aput-object v2, v0, v10

    const/4 v2, 0x5

    const-string v3, "PUSH_PROMISE"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "PING"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "GOAWAY"

    aput-object v3, v0, v2

    const-string v2, "WINDOW_UPDATE"

    aput-object v2, v0, v7

    const/16 v2, 0x9

    const-string v3, "CONTINUATION"

    aput-object v3, v0, v2

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->d:[Ljava/lang/String;

    .line 74
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    .line 75
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->c:[Ljava/lang/String;

    move v0, v1

    .line 78
    :goto_4f
    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/e;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_71

    .line 79
    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/e;->c:[Ljava/lang/String;

    const-string v3, "%8s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 82
    :cond_71
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    .line 83
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    const-string v2, "END_STREAM"

    aput-object v2, v0, v6

    .line 85
    new-array v3, v6, [I

    aput v6, v3, v1

    .line 87
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    const-string v2, "PADDED"

    aput-object v2, v0, v7

    .line 88
    array-length v2, v3

    move v0, v1

    :goto_89
    if-ge v0, v2, :cond_ad

    aget v4, v3, v0

    .line 89
    sget-object v5, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    or-int/lit8 v6, v4, 0x8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    aget-object v4, v8, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "|PADDED"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 92
    :cond_ad
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    const-string v2, "END_HEADERS"

    aput-object v2, v0, v10

    .line 93
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    const/16 v2, 0x20

    const-string v4, "PRIORITY"

    aput-object v4, v0, v2

    .line 94
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    const/16 v2, 0x24

    const-string v4, "END_HEADERS|PRIORITY"

    aput-object v4, v0, v2

    .line 95
    new-array v4, v9, [I

    fill-array-data v4, :array_144

    .line 99
    array-length v5, v4

    move v2, v1

    :goto_ca
    if-ge v2, v5, :cond_12d

    aget v6, v4, v2

    .line 100
    array-length v7, v3

    move v0, v1

    :goto_d0
    if-ge v0, v7, :cond_129

    aget v8, v3, v0

    .line 101
    sget-object v9, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    or-int v10, v8, v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    aget-object v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x7c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 102
    sget-object v9, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    or-int v10, v8, v6

    or-int/lit8 v10, v10, 0x8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    aget-object v8, v12, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v11, 0x7c

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "|PADDED"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v10

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_d0

    .line 99
    :cond_129
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_ca

    .line 107
    :cond_12d
    :goto_12d
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_143

    .line 108
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_140

    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/e;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    .line 107
    :cond_140
    add-int/lit8 v1, v1, 0x1

    goto :goto_12d

    .line 110
    :cond_143
    return-void

    .line 95
    :array_144
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4

    .prologue
    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(BB)Ljava/lang/String;
    .registers 5

    .prologue
    .line 154
    if-nez p1, :cond_5

    const-string v0, ""

    .line 172
    :cond_4
    :goto_4
    return-object v0

    .line 155
    :cond_5
    packed-switch p0, :pswitch_data_46

    .line 165
    :pswitch_8
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_31

    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 167
    :goto_11
    const/4 v1, 0x5

    if-ne p0, v1, :cond_36

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_36

    .line 168
    const-string v1, "HEADERS"

    const-string v2, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 158
    :pswitch_21
    const/4 v0, 0x1

    if-ne p1, v0, :cond_27

    const-string v0, "ACK"

    goto :goto_4

    :cond_27
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_4

    .line 163
    :pswitch_2c
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_4

    .line 165
    :cond_31
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_11

    .line 169
    :cond_36
    if-nez p0, :cond_4

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4

    .line 170
    const-string v1, "PRIORITY"

    const-string v2, "COMPRESSED"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 155
    nop

    :pswitch_data_46
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_2c
        :pswitch_21
        :pswitch_8
        :pswitch_21
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method static a(ZIIBB)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 142
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->d:[Ljava/lang/String;

    array-length v0, v0

    if-ge p3, v0, :cond_32

    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->d:[Ljava/lang/String;

    aget-object v0, v0, p3

    .line 143
    :goto_b
    invoke-static {p3, p4}, Lcom/bytedance/sdk/a/b/a/e/e;->a(BB)Ljava/lang/String;

    move-result-object v2

    .line 144
    const-string v3, "%s 0x%08x %5d %-13s %s"

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/Object;

    if-eqz p0, :cond_41

    const-string v1, "<<"

    :goto_18
    aput-object v1, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const/4 v0, 0x4

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_32
    const-string v0, "0x%02x"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 144
    :cond_41
    const-string v1, ">>"

    goto :goto_18
.end method

.method static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
