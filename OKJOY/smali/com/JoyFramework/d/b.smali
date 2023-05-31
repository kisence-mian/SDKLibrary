.class public final Lcom/JoyFramework/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x80

.field private static final b:I = 0x40

.field private static final c:I = 0x18

.field private static final d:I = 0x8

.field private static final e:I = 0x10

.field private static final f:I = 0x4

.field private static final g:I = -0x80

.field private static final h:C = '='

.field private static final i:Z

.field private static final j:[B

.field private static final k:[C


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    .line 19
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/JoyFramework/d/b;->j:[B

    .line 20
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/JoyFramework/d/b;->k:[C

    move v1, v0

    .line 23
    :goto_16
    const/16 v2, 0x80

    if-ge v1, v2, :cond_22

    .line 24
    sget-object v2, Lcom/JoyFramework/d/b;->j:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 26
    :cond_22
    const/16 v1, 0x5a

    :goto_24
    const/16 v2, 0x41

    if-lt v1, v2, :cond_32

    .line 27
    sget-object v2, Lcom/JoyFramework/d/b;->j:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 26
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 29
    :cond_32
    const/16 v1, 0x7a

    :goto_34
    const/16 v2, 0x61

    if-lt v1, v2, :cond_44

    .line 30
    sget-object v2, Lcom/JoyFramework/d/b;->j:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    .line 33
    :cond_44
    const/16 v1, 0x39

    :goto_46
    const/16 v2, 0x30

    if-lt v1, v2, :cond_56

    .line 34
    sget-object v2, Lcom/JoyFramework/d/b;->j:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 33
    add-int/lit8 v1, v1, -0x1

    goto :goto_46

    .line 37
    :cond_56
    sget-object v1, Lcom/JoyFramework/d/b;->j:[B

    aput-byte v7, v1, v5

    .line 38
    sget-object v1, Lcom/JoyFramework/d/b;->j:[B

    aput-byte v8, v1, v6

    move v1, v0

    .line 40
    :goto_5f
    const/16 v2, 0x19

    if-gt v1, v2, :cond_6d

    .line 41
    sget-object v2, Lcom/JoyFramework/d/b;->k:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 44
    :cond_6d
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_71
    const/16 v3, 0x33

    if-gt v2, v3, :cond_81

    .line 45
    sget-object v3, Lcom/JoyFramework/d/b;->k:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 44
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 48
    :cond_81
    const/16 v1, 0x34

    :goto_83
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_93

    .line 49
    sget-object v2, Lcom/JoyFramework/d/b;->k:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 51
    :cond_93
    sget-object v0, Lcom/JoyFramework/d/b;->k:[C

    aput-char v5, v0, v7

    .line 52
    sget-object v0, Lcom/JoyFramework/d/b;->k:[C

    aput-char v6, v0, v8

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([C)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 278
    if-nez p0, :cond_4

    .line 290
    :cond_3
    return v1

    .line 284
    :cond_4
    array-length v3, p0

    move v2, v1

    .line 285
    :goto_6
    if-ge v2, v3, :cond_3

    .line 286
    aget-char v0, p0, v2

    invoke-static {v0}, Lcom/JoyFramework/d/b;->a(C)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 287
    add-int/lit8 v0, v1, 0x1

    aget-char v4, p0, v2

    aput-char v4, p0, v1

    .line 285
    :goto_16
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    :cond_1b
    move v0, v1

    goto :goto_16
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 178
    if-nez p0, :cond_5

    .line 267
    :cond_4
    :goto_4
    return-object v0

    .line 182
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 184
    invoke-static {v5}, Lcom/JoyFramework/d/b;->a([C)I

    move-result v1

    .line 186
    rem-int/lit8 v3, v1, 0x4

    if-nez v3, :cond_4

    .line 190
    div-int/lit8 v6, v1, 0x4

    .line 192
    if-nez v6, :cond_18

    .line 193
    const-string v0, ""

    goto :goto_4

    .line 203
    :cond_18
    mul-int/lit8 v1, v6, 0x3

    new-array v7, v1, [B

    move v1, v2

    move v3, v2

    move v4, v2

    .line 205
    :goto_1f
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_7e

    .line 207
    add-int/lit8 v8, v1, 0x1

    aget-char v9, v5, v1

    invoke-static {v9}, Lcom/JoyFramework/d/b;->c(C)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v8, 0x1

    aget-char v8, v5, v8

    .line 208
    invoke-static {v8}, Lcom/JoyFramework/d/b;->c(C)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v10, v1, 0x1

    aget-char v11, v5, v1

    .line 209
    invoke-static {v11}, Lcom/JoyFramework/d/b;->c(C)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v10, 0x1

    aget-char v10, v5, v10

    .line 210
    invoke-static {v10}, Lcom/JoyFramework/d/b;->c(C)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 214
    sget-object v12, Lcom/JoyFramework/d/b;->j:[B

    aget-byte v9, v12, v9

    .line 215
    sget-object v12, Lcom/JoyFramework/d/b;->j:[B

    aget-byte v8, v12, v8

    .line 216
    sget-object v12, Lcom/JoyFramework/d/b;->j:[B

    aget-byte v11, v12, v11

    .line 217
    sget-object v12, Lcom/JoyFramework/d/b;->j:[B

    aget-byte v10, v12, v10

    .line 219
    add-int/lit8 v12, v3, 0x1

    shl-int/lit8 v9, v9, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v7, v3

    .line 220
    add-int/lit8 v9, v12, 0x1

    and-int/lit8 v3, v8, 0xf

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v7, v12

    .line 221
    add-int/lit8 v3, v9, 0x1

    shl-int/lit8 v8, v11, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v7, v9

    .line 205
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 224
    :cond_7e
    add-int/lit8 v6, v1, 0x1

    aget-char v1, v5, v1

    invoke-static {v1}, Lcom/JoyFramework/d/b;->c(C)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v8, v6, 0x1

    aget-char v6, v5, v6

    .line 225
    invoke-static {v6}, Lcom/JoyFramework/d/b;->c(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 229
    sget-object v9, Lcom/JoyFramework/d/b;->j:[B

    aget-byte v1, v9, v1

    .line 230
    sget-object v9, Lcom/JoyFramework/d/b;->j:[B

    aget-byte v6, v9, v6

    .line 232
    add-int/lit8 v9, v8, 0x1

    aget-char v8, v5, v8

    .line 233
    add-int/lit8 v10, v9, 0x1

    aget-char v5, v5, v9

    .line 234
    invoke-static {v8}, Lcom/JoyFramework/d/b;->c(C)Z

    move-result v9

    if-eqz v9, :cond_ae

    invoke-static {v5}, Lcom/JoyFramework/d/b;->c(C)Z

    move-result v9

    if-nez v9, :cond_114

    .line 235
    :cond_ae
    invoke-static {v8}, Lcom/JoyFramework/d/b;->b(C)Z

    move-result v9

    if-eqz v9, :cond_d8

    invoke-static {v5}, Lcom/JoyFramework/d/b;->b(C)Z

    move-result v9

    if-eqz v9, :cond_d8

    .line 236
    and-int/lit8 v5, v6, 0xf

    if-nez v5, :cond_4

    .line 240
    mul-int/lit8 v0, v4, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [B

    .line 241
    mul-int/lit8 v0, v4, 0x3

    invoke-static {v7, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    shl-int/lit8 v0, v1, 0x2

    shr-int/lit8 v1, v6, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v3

    .line 243
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_4

    .line 244
    :cond_d8
    invoke-static {v8}, Lcom/JoyFramework/d/b;->b(C)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v5}, Lcom/JoyFramework/d/b;->b(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 245
    sget-object v5, Lcom/JoyFramework/d/b;->j:[B

    aget-byte v5, v5, v8

    .line 246
    and-int/lit8 v8, v5, 0x3

    if-nez v8, :cond_4

    .line 250
    mul-int/lit8 v0, v4, 0x3

    add-int/lit8 v0, v0, 0x2

    new-array v8, v0, [B

    .line 251
    mul-int/lit8 v0, v4, 0x3

    invoke-static {v7, v2, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    add-int/lit8 v0, v3, 0x1

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, v6, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v8, v3

    .line 253
    and-int/lit8 v1, v6, 0xf

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 v2, v5, 0x2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v8, v0

    .line 254
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_4

    .line 259
    :cond_114
    sget-object v0, Lcom/JoyFramework/d/b;->j:[B

    aget-byte v0, v0, v8

    .line 260
    sget-object v2, Lcom/JoyFramework/d/b;->j:[B

    aget-byte v2, v2, v5

    .line 261
    add-int/lit8 v4, v3, 0x1

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v5, v6, 0x4

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v7, v3

    .line 262
    add-int/lit8 v1, v4, 0x1

    and-int/lit8 v3, v6, 0xf

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v7, v4

    .line 263
    add-int/lit8 v3, v1, 0x1

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v7, v1

    .line 267
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_4
.end method

.method public static a([B)Ljava/lang/String;
    .registers 16

    .prologue
    const/16 v14, 0x3d

    const/4 v2, 0x0

    .line 78
    if-nez p0, :cond_7

    .line 79
    const/4 v0, 0x0

    .line 165
    :goto_6
    return-object v0

    .line 82
    :cond_7
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 83
    if-nez v0, :cond_f

    .line 84
    const-string v0, ""

    goto :goto_6

    .line 87
    :cond_f
    rem-int/lit8 v7, v0, 0x18

    .line 88
    div-int/lit8 v1, v0, 0x18

    .line 89
    if-eqz v7, :cond_76

    add-int/lit8 v0, v1, 0x1

    .line 93
    :goto_17
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v6, v2

    .line 103
    :goto_1d
    if-ge v4, v1, :cond_8c

    .line 104
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    .line 105
    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    .line 106
    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    .line 112
    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    .line 113
    and-int/lit8 v0, v2, 0x3

    int-to-byte v12, v0

    .line 115
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_78

    shr-int/lit8 v0, v2, 0x2

    int-to-byte v0, v0

    move v3, v0

    .line 117
    :goto_39
    and-int/lit8 v0, v9, -0x80

    if-nez v0, :cond_7f

    shr-int/lit8 v0, v9, 0x4

    int-to-byte v0, v0

    move v2, v0

    .line 119
    :goto_41
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_86

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    .line 128
    :goto_48
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lcom/JoyFramework/d/b;->k:[C

    aget-char v3, v13, v3

    aput-char v3, v8, v6

    .line 129
    add-int/lit8 v3, v9, 0x1

    sget-object v6, Lcom/JoyFramework/d/b;->k:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    aput-char v2, v8, v9

    .line 130
    add-int/lit8 v6, v3, 0x1

    sget-object v2, Lcom/JoyFramework/d/b;->k:[C

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v0, v9

    aget-char v0, v2, v0

    aput-char v0, v8, v3

    .line 131
    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lcom/JoyFramework/d/b;->k:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    aput-char v0, v8, v6

    .line 103
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v2, v5

    goto :goto_1d

    :cond_76
    move v0, v1

    .line 89
    goto :goto_17

    .line 115
    :cond_78
    shr-int/lit8 v0, v2, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_39

    .line 117
    :cond_7f
    shr-int/lit8 v0, v9, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v2, v0

    goto :goto_41

    .line 119
    :cond_86
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_48

    .line 135
    :cond_8c
    const/16 v0, 0x8

    if-ne v7, v0, :cond_c3

    .line 136
    aget-byte v0, p0, v2

    .line 137
    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    .line 142
    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_bd

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 144
    :goto_9c
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lcom/JoyFramework/d/b;->k:[C

    aget-char v0, v3, v0

    aput-char v0, v8, v6

    .line 145
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/JoyFramework/d/b;->k:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    aput-char v1, v8, v2

    .line 146
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    .line 147
    add-int/lit8 v0, v1, 0x1

    aput-char v14, v8, v1

    .line 165
    :cond_b6
    :goto_b6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_6

    .line 142
    :cond_bd
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto :goto_9c

    .line 148
    :cond_c3
    const/16 v0, 0x10

    if-ne v7, v0, :cond_b6

    .line 149
    aget-byte v0, p0, v2

    .line 150
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v1

    .line 151
    and-int/lit8 v1, v2, 0xf

    int-to-byte v3, v1

    .line 152
    and-int/lit8 v1, v0, 0x3

    int-to-byte v4, v1

    .line 154
    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_104

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v1, v0

    .line 156
    :goto_db
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_10b

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    .line 159
    :goto_e2
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lcom/JoyFramework/d/b;->k:[C

    aget-char v1, v5, v1

    aput-char v1, v8, v6

    .line 160
    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lcom/JoyFramework/d/b;->k:[C

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    aget-char v0, v5, v0

    aput-char v0, v8, v2

    .line 161
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/JoyFramework/d/b;->k:[C

    shl-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    aput-char v2, v8, v1

    .line 162
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    goto :goto_b6

    .line 154
    :cond_104
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_db

    .line 156
    :cond_10b
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    goto :goto_e2
.end method

.method private static a(C)Z
    .registers 2

    .prologue
    .line 57
    const/16 v0, 0x20

    if-eq p0, v0, :cond_10

    const/16 v0, 0xd

    if-eq p0, v0, :cond_10

    const/16 v0, 0xa

    if-eq p0, v0, :cond_10

    const/16 v0, 0x9

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static b(C)Z
    .registers 2

    .prologue
    .line 61
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static c(C)Z
    .registers 3

    .prologue
    .line 65
    const/16 v0, 0x80

    if-ge p0, v0, :cond_d

    sget-object v0, Lcom/JoyFramework/d/b;->j:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
