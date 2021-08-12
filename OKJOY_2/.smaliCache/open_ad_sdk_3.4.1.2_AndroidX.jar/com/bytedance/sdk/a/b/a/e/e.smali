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
    .registers 16

    .line 26
    nop

    .line 27
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->a:Lcom/bytedance/sdk/a/a/f;

    .line 57
    const-string v1, "DATA"

    const-string v2, "HEADERS"

    const-string v3, "PRIORITY"

    const-string v4, "RST_STREAM"

    const-string v5, "SETTINGS"

    const-string v6, "PUSH_PROMISE"

    const-string v7, "PING"

    const-string v8, "GOAWAY"

    const-string v9, "WINDOW_UPDATE"

    const-string v10, "CONTINUATION"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->d:[Ljava/lang/String;

    .line 74
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    .line 75
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->c:[Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    move v1, v0

    :goto_31
    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/e;->c:[Ljava/lang/String;

    array-length v3, v2

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ge v1, v3, :cond_52

    .line 79
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    const-string v5, "%8s"

    invoke-static {v5, v3}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 82
    :cond_52
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 83
    const-string v2, "END_STREAM"

    aput-object v2, v1, v5

    .line 85
    new-array v2, v5, [I

    aput v5, v2, v0

    .line 87
    const-string v3, "PADDED"

    const/16 v6, 0x8

    aput-object v3, v1, v6

    .line 88
    move v1, v0

    :goto_67
    const-string v3, "|PADDED"

    if-ge v1, v5, :cond_89

    aget v7, v2, v1

    .line 89
    sget-object v8, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    or-int/lit8 v9, v7, 0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v8, v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 92
    :cond_89
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    const/4 v7, 0x4

    const-string v8, "END_HEADERS"

    aput-object v8, v1, v7

    .line 93
    const-string v7, "PRIORITY"

    aput-object v7, v1, v4

    .line 94
    const/16 v4, 0x24

    const-string v7, "END_HEADERS|PRIORITY"

    aput-object v7, v1, v4

    .line 95
    const/4 v1, 0x3

    new-array v4, v1, [I

    fill-array-data v4, :array_106

    .line 99
    move v7, v0

    :goto_a1
    if-ge v7, v1, :cond_f1

    aget v8, v4, v7

    .line 100
    move v9, v0

    :goto_a6
    if-ge v9, v5, :cond_ee

    aget v10, v2, v9

    .line 101
    sget-object v11, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    or-int v12, v10, v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v11, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x7c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v15, v11, v8

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 102
    or-int/2addr v12, v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v11, v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v13, v11, v8

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v12

    .line 100
    add-int/lit8 v9, v9, 0x1

    goto :goto_a6

    .line 99
    :cond_ee
    add-int/lit8 v7, v7, 0x1

    goto :goto_a1

    .line 107
    :cond_f1
    nop

    :goto_f2
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_104

    .line 108
    aget-object v2, v1, v0

    if-nez v2, :cond_101

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/e;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 107
    :cond_101
    add-int/lit8 v0, v0, 0x1

    goto :goto_f2

    .line 110
    :cond_104
    return-void

    nop

    :array_106
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(BB)Ljava/lang/String;
    .registers 4

    .line 154
    if-nez p1, :cond_5

    const-string p0, ""

    return-object p0

    .line 155
    :cond_5
    packed-switch p0, :pswitch_data_44

    .line 165
    :pswitch_8
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->b:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_20

    aget-object v0, v0, p1

    goto :goto_24

    .line 158
    :pswitch_10
    const/4 p0, 0x1

    if-ne p1, p0, :cond_16

    const-string p0, "ACK"

    goto :goto_1a

    :cond_16
    sget-object p0, Lcom/bytedance/sdk/a/b/a/e/e;->c:[Ljava/lang/String;

    aget-object p0, p0, p1

    :goto_1a
    return-object p0

    .line 163
    :pswitch_1b
    sget-object p0, Lcom/bytedance/sdk/a/b/a/e/e;->c:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 165
    :cond_20
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 167
    :goto_24
    const/4 v1, 0x5

    if-ne p0, v1, :cond_34

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_34

    .line 168
    const-string p0, "HEADERS"

    const-string p1, "PUSH_PROMISE"

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_34
    if-nez p0, :cond_43

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_43

    .line 170
    const-string p0, "PRIORITY"

    const-string p1, "COMPRESSED"

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 172
    :cond_43
    return-object v0

    :pswitch_data_44
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1b
        :pswitch_10
        :pswitch_8
        :pswitch_10
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method static a(ZIIBB)Ljava/lang/String;
    .registers 9

    .line 142
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/e;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p3, v1, :cond_a

    aget-object v0, v0, p3

    goto :goto_18

    :cond_a
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "0x%02x"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_18
    invoke-static {p3, p4}, Lcom/bytedance/sdk/a/b/a/e/e;->a(BB)Ljava/lang/String;

    move-result-object p3

    .line 144
    const/4 p4, 0x5

    new-array p4, p4, [Ljava/lang/Object;

    if-eqz p0, :cond_24

    const-string p0, "<<"

    goto :goto_26

    :cond_24
    const-string p0, ">>"

    :goto_26
    aput-object p0, p4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p4, v3

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, p0

    const/4 p0, 0x3

    aput-object v0, p4, p0

    const/4 p0, 0x4

    aput-object p3, p4, p0

    const-string p0, "%s 0x%08x %5d %-13s %s"

    invoke-static {p0, p4}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
