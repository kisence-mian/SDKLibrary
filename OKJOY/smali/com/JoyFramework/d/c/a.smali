.class Lcom/JoyFramework/d/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/c/a;->a:[C

    .line 8
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(C)I
    .registers 4

    .prologue
    .line 82
    const/16 v0, 0x41

    if-lt p0, v0, :cond_b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_b

    .line 84
    add-int/lit8 v0, p0, -0x41

    .line 108
    :goto_a
    return v0

    .line 86
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_18

    .line 88
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x1a

    goto :goto_a

    .line 90
    :cond_18
    const/16 v0, 0x30

    if-lt p0, v0, :cond_27

    const/16 v0, 0x39

    if-gt p0, v0, :cond_27

    .line 92
    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x1a

    add-int/lit8 v0, v0, 0x1a

    goto :goto_a

    .line 96
    :cond_27
    sparse-switch p0, :sswitch_data_4c

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :sswitch_43
    const/16 v0, 0x3e

    goto :goto_a

    .line 104
    :sswitch_46
    const/16 v0, 0x3f

    goto :goto_a

    .line 108
    :sswitch_49
    const/4 v0, 0x0

    goto :goto_a

    .line 96
    nop

    :sswitch_data_4c
    .sparse-switch
        0x2b -> :sswitch_43
        0x2f -> :sswitch_46
        0x3d -> :sswitch_49
    .end sparse-switch
.end method

.method static a([B)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 13
    .line 15
    array-length v4, p0

    .line 17
    new-instance v5, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 19
    add-int/lit8 v6, v4, -0x3

    move v2, v1

    move v0, v1

    .line 25
    :goto_10
    if-gt v0, v6, :cond_5e

    .line 27
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v3, v7

    add-int/lit8 v7, v0, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    .line 31
    sget-object v7, Lcom/JoyFramework/d/c/a;->a:[C

    shr-int/lit8 v8, v3, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 33
    sget-object v7, Lcom/JoyFramework/d/c/a;->a:[C

    shr-int/lit8 v8, v3, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 35
    sget-object v7, Lcom/JoyFramework/d/c/a;->a:[C

    shr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    sget-object v7, Lcom/JoyFramework/d/c/a;->a:[C

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v7, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    add-int/lit8 v3, v0, 0x3

    .line 41
    add-int/lit8 v0, v2, 0x1

    const/16 v7, 0xe

    if-lt v2, v7, :cond_5b

    move v0, v1

    :cond_5b
    move v2, v0

    move v0, v3

    .line 49
    goto :goto_10

    .line 51
    :cond_5e
    add-int v2, v1, v4

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_9e

    .line 53
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 56
    sget-object v1, Lcom/JoyFramework/d/c/a;->a:[C

    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    sget-object v1, Lcom/JoyFramework/d/c/a;->a:[C

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    sget-object v1, Lcom/JoyFramework/d/c/a;->a:[C

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    :cond_99
    :goto_99
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_9e
    add-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_99

    .line 66
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 68
    sget-object v1, Lcom/JoyFramework/d/c/a;->a:[C

    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    sget-object v1, Lcom/JoyFramework/d/c/a;->a:[C

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    const-string v0, "=="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_99
.end method

.method private static a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 7

    .prologue
    const/16 v4, 0x3d

    .line 157
    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 163
    :goto_7
    if-ge v0, v1, :cond_14

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_14

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 167
    :cond_14
    if-ne v0, v1, :cond_17

    .line 194
    :cond_16
    return-void

    .line 171
    :cond_17
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/JoyFramework/d/c/a;->a(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, v0, 0x1

    .line 172
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/JoyFramework/d/c/a;->a(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    .line 173
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/JoyFramework/d/c/a;->a(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    .line 174
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/JoyFramework/d/c/a;->a(C)I

    move-result v3

    add-int/2addr v2, v3

    .line 176
    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 178
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_16

    .line 182
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 184
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_16

    .line 188
    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 190
    add-int/lit8 v0, v0, 0x4

    .line 192
    goto :goto_7
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 6

    .prologue
    .line 125
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    :try_start_5
    invoke-static {p0, v0}, Lcom/JoyFramework/d/c/a;->a(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_10

    .line 137
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 141
    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_17

    .line 151
    :goto_f
    return-object v1

    .line 131
    :catch_10
    move-exception v0

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 145
    :catch_17
    move-exception v0

    .line 147
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while decoding BASE64: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f
.end method
