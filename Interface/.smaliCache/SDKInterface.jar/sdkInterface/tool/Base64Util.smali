.class public LsdkInterface/tool/Base64Util;
.super Ljava/lang/Object;
.source "Base64Util.java"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static PAD:C = '\u0000'

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 11
    const/16 v0, 0x3d

    sput-char v0, LsdkInterface/tool/Base64Util;->PAD:C

    .line 12
    const/16 v1, 0x80

    new-array v2, v1, [B

    sput-object v2, LsdkInterface/tool/Base64Util;->base64Alphabet:[B

    .line 13
    const/16 v2, 0x40

    new-array v2, v2, [C

    sput-object v2, LsdkInterface/tool/Base64Util;->lookUpBase64Alphabet:[C

    .line 15
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_1b

    .line 16
    sget-object v3, LsdkInterface/tool/Base64Util;->base64Alphabet:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    .line 15
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 18
    .end local v2    # "i":I
    :cond_1b
    const/16 v1, 0x5a

    .local v1, "i":I
    :goto_1d
    const/16 v2, 0x41

    if-lt v1, v2, :cond_2b

    .line 19
    sget-object v2, LsdkInterface/tool/Base64Util;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 18
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 21
    .end local v1    # "i":I
    :cond_2b
    const/16 v1, 0x7a

    .restart local v1    # "i":I
    :goto_2d
    const/16 v2, 0x61

    if-lt v1, v2, :cond_3d

    .line 22
    sget-object v2, LsdkInterface/tool/Base64Util;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 21
    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    .line 24
    .end local v1    # "i":I
    :cond_3d
    const/16 v1, 0x39

    .restart local v1    # "i":I
    :goto_3f
    const/16 v2, 0x30

    if-lt v1, v2, :cond_4f

    .line 25
    sget-object v2, LsdkInterface/tool/Base64Util;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 24
    add-int/lit8 v1, v1, -0x1

    goto :goto_3f

    .line 27
    .end local v1    # "i":I
    :cond_4f
    sget-object v1, LsdkInterface/tool/Base64Util;->base64Alphabet:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 28
    const/16 v4, 0x2f

    const/16 v5, 0x3f

    aput-byte v5, v1, v4

    .line 29
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5e
    const/16 v6, 0x19

    if-gt v1, v6, :cond_6c

    .line 30
    sget-object v6, LsdkInterface/tool/Base64Util;->lookUpBase64Alphabet:[C

    add-int/lit8 v7, v1, 0x41

    int-to-char v7, v7

    aput-char v7, v6, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 32
    .end local v1    # "i":I
    :cond_6c
    const/16 v1, 0x1a

    .restart local v1    # "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_6f
    const/16 v7, 0x33

    if-gt v1, v7, :cond_7f

    .line 33
    sget-object v7, LsdkInterface/tool/Base64Util;->lookUpBase64Alphabet:[C

    add-int/lit8 v8, v6, 0x61

    int-to-char v8, v8

    aput-char v8, v7, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    .line 35
    .end local v1    # "i":I
    .end local v6    # "j":I
    :cond_7f
    const/16 v1, 0x34

    .restart local v1    # "i":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_82
    if-gt v1, v0, :cond_90

    .line 36
    sget-object v7, LsdkInterface/tool/Base64Util;->lookUpBase64Alphabet:[C

    add-int/lit8 v8, v6, 0x30

    int-to-char v8, v8

    aput-char v8, v7, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_82

    .line 38
    .end local v1    # "i":I
    .end local v6    # "j":I
    :cond_90
    sget-object v0, LsdkInterface/tool/Base64Util;->lookUpBase64Alphabet:[C

    aput-char v2, v0, v3

    .line 39
    aput-char v4, v0, v5

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 21
    .param p0, "encoded"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 118
    return-object v0

    .line 120
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 122
    .local v1, "base64Data":[C
    invoke-static {v1}, LsdkInterface/tool/Base64Util;->removeWhiteSpace([C)I

    move-result v2

    .line 123
    .local v2, "len":I
    rem-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_11

    .line 124
    return-object v0

    .line 126
    :cond_11
    div-int/lit8 v3, v2, 0x4

    .line 127
    .local v3, "numberQuadruple":I
    const/4 v4, 0x0

    if-nez v3, :cond_19

    .line 128
    new-array v0, v4, [B

    return-object v0

    .line 130
    :cond_19
    const/4 v5, 0x0

    .line 131
    .local v5, "decodedData":[B
    const/4 v6, 0x0

    .local v6, "b1":B
    const/4 v7, 0x0

    .local v7, "b2":B
    const/4 v8, 0x0

    .local v8, "b3":B
    const/4 v9, 0x0

    .line 132
    .local v9, "b4":B
    const/4 v10, 0x0

    .local v10, "d1":C
    const/4 v11, 0x0

    .local v11, "d2":C
    const/4 v12, 0x0

    .local v12, "d3":C
    const/4 v13, 0x0

    .line 133
    .local v13, "d4":C
    const/4 v14, 0x0

    .line 134
    .local v14, "i":I
    const/4 v15, 0x0

    .line 135
    .local v15, "encodedIndex":I
    const/16 v16, 0x0

    .line 136
    .local v16, "dataIndex":I
    mul-int/lit8 v4, v3, 0x3

    new-array v4, v4, [B

    .line 137
    .end local v5    # "decodedData":[B
    .local v4, "decodedData":[B
    :goto_2a
    add-int/lit8 v5, v3, -0x1

    if-ge v14, v5, :cond_93

    .line 138
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "dataIndex":I
    .local v5, "dataIndex":I
    aget-char v16, v1, v16

    move/from16 v10, v16

    invoke-static/range {v16 .. v16}, LsdkInterface/tool/Base64Util;->isData(C)Z

    move-result v16

    if-eqz v16, :cond_91

    add-int/lit8 v16, v5, 0x1

    .end local v5    # "dataIndex":I
    .restart local v16    # "dataIndex":I
    aget-char v5, v1, v5

    move v11, v5

    .line 139
    invoke-static {v5}, LsdkInterface/tool/Base64Util;->isData(C)Z

    move-result v5

    if-eqz v5, :cond_8f

    add-int/lit8 v5, v16, 0x1

    .end local v16    # "dataIndex":I
    .restart local v5    # "dataIndex":I
    aget-char v16, v1, v16

    move/from16 v12, v16

    .line 140
    invoke-static/range {v16 .. v16}, LsdkInterface/tool/Base64Util;->isData(C)Z

    move-result v16

    if-eqz v16, :cond_91

    add-int/lit8 v16, v5, 0x1

    .end local v5    # "dataIndex":I
    .restart local v16    # "dataIndex":I
    aget-char v5, v1, v5

    move v13, v5

    .line 141
    invoke-static {v5}, LsdkInterface/tool/Base64Util;->isData(C)Z

    move-result v5

    if-nez v5, :cond_5f

    move/from16 v5, v16

    goto :goto_91

    .line 144
    :cond_5f
    sget-object v5, LsdkInterface/tool/Base64Util;->base64Alphabet:[B

    aget-byte v6, v5, v10

    .line 145
    aget-byte v7, v5, v11

    .line 146
    aget-byte v8, v5, v12

    .line 147
    aget-byte v9, v5, v13

    .line 148
    add-int/lit8 v5, v15, 0x1

    .end local v15    # "encodedIndex":I
    .local v5, "encodedIndex":I
    shl-int/lit8 v18, v6, 0x2

    shr-int/lit8 v19, v7, 0x4

    or-int v0, v18, v19

    int-to-byte v0, v0

    aput-byte v0, v4, v15

    .line 149
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "encodedIndex":I
    .local v0, "encodedIndex":I
    and-int/lit8 v15, v7, 0xf

    shl-int/lit8 v15, v15, 0x4

    shr-int/lit8 v18, v8, 0x2

    and-int/lit8 v18, v18, 0xf

    or-int v15, v15, v18

    int-to-byte v15, v15

    aput-byte v15, v4, v5

    .line 150
    add-int/lit8 v15, v0, 0x1

    .end local v0    # "encodedIndex":I
    .restart local v15    # "encodedIndex":I
    shl-int/lit8 v5, v8, 0x6

    or-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 137
    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x0

    goto :goto_2a

    .line 139
    :cond_8f
    move/from16 v5, v16

    .line 142
    .end local v16    # "dataIndex":I
    .local v5, "dataIndex":I
    :cond_91
    :goto_91
    const/4 v0, 0x0

    return-object v0

    .line 152
    .end local v5    # "dataIndex":I
    .restart local v16    # "dataIndex":I
    :cond_93
    add-int/lit8 v0, v16, 0x1

    .end local v16    # "dataIndex":I
    .local v0, "dataIndex":I
    aget-char v5, v1, v16

    move v10, v5

    invoke-static {v5}, LsdkInterface/tool/Base64Util;->isData(C)Z

    move-result v5

    if-eqz v5, :cond_162

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "dataIndex":I
    .restart local v5    # "dataIndex":I
    aget-char v0, v1, v0

    move v11, v0

    .line 153
    invoke-static {v0}, LsdkInterface/tool/Base64Util;->isData(C)Z

    move-result v0

    if-nez v0, :cond_b1

    move-object/from16 v18, v1

    move/from16 v16, v2

    move v0, v5

    const/4 v1, 0x0

    goto/16 :goto_167

    .line 156
    :cond_b1
    sget-object v0, LsdkInterface/tool/Base64Util;->base64Alphabet:[B

    aget-byte v6, v0, v10

    .line 157
    aget-byte v0, v0, v11

    .line 158
    .end local v7    # "b2":B
    .local v0, "b2":B
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "dataIndex":I
    .local v7, "dataIndex":I
    aget-char v5, v1, v5

    .line 159
    .end local v12    # "d3":C
    .local v5, "d3":C
    add-int/lit8 v12, v7, 0x1

    .end local v7    # "dataIndex":I
    .local v12, "dataIndex":I
    aget-char v7, v1, v7

    .line 160
    .end local v13    # "d4":C
    .local v7, "d4":C
    invoke-static {v5}, LsdkInterface/tool/Base64Util;->isData(C)Z

    move-result v13

    if-eqz v13, :cond_f9

    invoke-static {v7}, LsdkInterface/tool/Base64Util;->isData(C)Z

    move-result v13

    if-nez v13, :cond_ce

    move-object/from16 v18, v1

    goto :goto_fb

    .line 185
    :cond_ce
    sget-object v13, LsdkInterface/tool/Base64Util;->base64Alphabet:[B

    aget-byte v8, v13, v5

    .line 186
    aget-byte v9, v13, v7

    .line 187
    add-int/lit8 v13, v15, 0x1

    .end local v15    # "encodedIndex":I
    .local v13, "encodedIndex":I
    shl-int/lit8 v16, v6, 0x2

    shr-int/lit8 v17, v0, 0x4

    move-object/from16 v18, v1

    .end local v1    # "base64Data":[C
    .local v18, "base64Data":[C
    or-int v1, v16, v17

    int-to-byte v1, v1

    aput-byte v1, v4, v15

    .line 188
    add-int/lit8 v1, v13, 0x1

    .end local v13    # "encodedIndex":I
    .local v1, "encodedIndex":I
    and-int/lit8 v15, v0, 0xf

    shl-int/lit8 v15, v15, 0x4

    shr-int/lit8 v16, v8, 0x2

    and-int/lit8 v16, v16, 0xf

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v4, v13

    .line 189
    add-int/lit8 v13, v1, 0x1

    .end local v1    # "encodedIndex":I
    .restart local v13    # "encodedIndex":I
    shl-int/lit8 v15, v8, 0x6

    or-int/2addr v15, v9

    int-to-byte v15, v15

    aput-byte v15, v4, v1

    .line 191
    return-object v4

    .line 160
    .end local v13    # "encodedIndex":I
    .end local v18    # "base64Data":[C
    .local v1, "base64Data":[C
    .restart local v15    # "encodedIndex":I
    :cond_f9
    move-object/from16 v18, v1

    .line 161
    .end local v1    # "base64Data":[C
    .restart local v18    # "base64Data":[C
    :goto_fb
    invoke-static {v5}, LsdkInterface/tool/Base64Util;->isPad(C)Z

    move-result v1

    if-eqz v1, :cond_124

    invoke-static {v7}, LsdkInterface/tool/Base64Util;->isPad(C)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 162
    and-int/lit8 v1, v0, 0xf

    if-eqz v1, :cond_10d

    .line 164
    const/4 v1, 0x0

    return-object v1

    .line 166
    :cond_10d
    mul-int/lit8 v1, v14, 0x3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 167
    .local v1, "tmp":[B
    mul-int/lit8 v13, v14, 0x3

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "len":I
    .local v16, "len":I
    invoke-static {v4, v2, v1, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    shl-int/lit8 v2, v6, 0x2

    shr-int/lit8 v13, v0, 0x4

    or-int/2addr v2, v13

    int-to-byte v2, v2

    aput-byte v2, v1, v15

    .line 169
    return-object v1

    .line 161
    .end local v1    # "tmp":[B
    .end local v16    # "len":I
    .restart local v2    # "len":I
    :cond_124
    move/from16 v16, v2

    .line 170
    .end local v2    # "len":I
    .restart local v16    # "len":I
    invoke-static {v5}, LsdkInterface/tool/Base64Util;->isPad(C)Z

    move-result v1

    if-nez v1, :cond_160

    invoke-static {v7}, LsdkInterface/tool/Base64Util;->isPad(C)Z

    move-result v1

    if-eqz v1, :cond_160

    .line 171
    sget-object v1, LsdkInterface/tool/Base64Util;->base64Alphabet:[B

    aget-byte v1, v1, v5

    .line 172
    .end local v8    # "b3":B
    .local v1, "b3":B
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_13c

    .line 174
    const/4 v2, 0x0

    return-object v2

    .line 176
    :cond_13c
    mul-int/lit8 v2, v14, 0x3

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 177
    .local v2, "tmp":[B
    mul-int/lit8 v8, v14, 0x3

    const/4 v13, 0x0

    invoke-static {v4, v13, v2, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "encodedIndex":I
    .local v8, "encodedIndex":I
    shl-int/lit8 v13, v6, 0x2

    shr-int/lit8 v17, v0, 0x4

    or-int v13, v13, v17

    int-to-byte v13, v13

    aput-byte v13, v2, v15

    .line 179
    and-int/lit8 v13, v0, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v15, v1, 0x2

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v2, v8

    .line 180
    return-object v2

    .line 182
    .end local v1    # "b3":B
    .end local v2    # "tmp":[B
    .local v8, "b3":B
    .restart local v15    # "encodedIndex":I
    :cond_160
    const/4 v1, 0x0

    return-object v1

    .line 152
    .end local v5    # "d3":C
    .end local v16    # "len":I
    .end local v18    # "base64Data":[C
    .local v0, "dataIndex":I
    .local v1, "base64Data":[C
    .local v2, "len":I
    .local v7, "b2":B
    .local v12, "d3":C
    .local v13, "d4":C
    :cond_162
    move-object/from16 v18, v1

    move/from16 v16, v2

    const/4 v1, 0x0

    .line 154
    .end local v1    # "base64Data":[C
    .end local v2    # "len":I
    .restart local v16    # "len":I
    .restart local v18    # "base64Data":[C
    :goto_167
    return-object v1
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 22
    .param p0, "binaryData"    # [B

    .line 54
    move-object/from16 v0, p0

    if-nez v0, :cond_6

    .line 55
    const/4 v1, 0x0

    return-object v1

    .line 57
    :cond_6
    array-length v1, v0

    const/16 v2, 0x8

    mul-int/lit8 v1, v1, 0x8

    .line 58
    .local v1, "lengthDataBits":I
    if-nez v1, :cond_10

    .line 59
    const-string v2, ""

    return-object v2

    .line 61
    :cond_10
    rem-int/lit8 v3, v1, 0x18

    .line 62
    .local v3, "fewerThan24bits":I
    div-int/lit8 v4, v1, 0x18

    .line 63
    .local v4, "numberTriplets":I
    if-eqz v3, :cond_19

    add-int/lit8 v5, v4, 0x1

    goto :goto_1a

    .line 64
    :cond_19
    move v5, v4

    :goto_1a
    nop

    .line 65
    .local v5, "numberQuartet":I
    const/4 v6, 0x0

    .line 66
    .local v6, "encodedData":[C
    mul-int/lit8 v7, v5, 0x4

    new-array v6, v7, [C

    .line 67
    const/4 v7, 0x0

    .local v7, "k":B
    const/4 v8, 0x0

    .local v8, "l":B
    const/4 v9, 0x0

    .local v9, "b1":B
    const/4 v10, 0x0

    .local v10, "b2":B
    const/4 v11, 0x0

    .line 68
    .local v11, "b3":B
    const/4 v12, 0x0

    .line 69
    .local v12, "encodedIndex":I
    const/4 v13, 0x0

    .line 70
    .local v13, "dataIndex":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_28
    if-ge v14, v4, :cond_96

    .line 71
    add-int/lit8 v15, v13, 0x1

    .end local v13    # "dataIndex":I
    .local v15, "dataIndex":I
    aget-byte v9, v0, v13

    .line 72
    add-int/lit8 v13, v15, 0x1

    .end local v15    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-byte v10, v0, v15

    .line 73
    add-int/lit8 v15, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v15    # "dataIndex":I
    aget-byte v11, v0, v13

    .line 74
    and-int/lit8 v13, v10, 0xf

    int-to-byte v8, v13

    .line 75
    and-int/lit8 v13, v9, 0x3

    int-to-byte v7, v13

    .line 76
    and-int/lit8 v13, v9, -0x80

    if-nez v13, :cond_44

    shr-int/lit8 v13, v9, 0x2

    int-to-byte v13, v13

    goto :goto_49

    .line 77
    :cond_44
    shr-int/lit8 v13, v9, 0x2

    xor-int/lit16 v13, v13, 0xc0

    int-to-byte v13, v13

    :goto_49
    nop

    .line 78
    .local v13, "val1":B
    and-int/lit8 v16, v10, -0x80

    if-nez v16, :cond_52

    shr-int/lit8 v2, v10, 0x4

    int-to-byte v2, v2

    goto :goto_57

    .line 79
    :cond_52
    shr-int/lit8 v2, v10, 0x4

    xor-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    :goto_57
    nop

    .line 80
    .local v2, "val2":B
    and-int/lit8 v17, v11, -0x80

    if-nez v17, :cond_62

    move/from16 v17, v1

    .end local v1    # "lengthDataBits":I
    .local v17, "lengthDataBits":I
    shr-int/lit8 v1, v11, 0x6

    int-to-byte v1, v1

    goto :goto_69

    .line 81
    .end local v17    # "lengthDataBits":I
    .restart local v1    # "lengthDataBits":I
    :cond_62
    move/from16 v17, v1

    .end local v1    # "lengthDataBits":I
    .restart local v17    # "lengthDataBits":I
    shr-int/lit8 v1, v11, 0x6

    xor-int/lit16 v1, v1, 0xfc

    int-to-byte v1, v1

    :goto_69
    nop

    .line 82
    .local v1, "val3":B
    add-int/lit8 v18, v12, 0x1

    .end local v12    # "encodedIndex":I
    .local v18, "encodedIndex":I
    sget-object v19, LsdkInterface/tool/Base64Util;->lookUpBase64Alphabet:[C

    aget-char v20, v19, v13

    aput-char v20, v6, v12

    .line 83
    add-int/lit8 v12, v18, 0x1

    .end local v18    # "encodedIndex":I
    .restart local v12    # "encodedIndex":I
    shl-int/lit8 v20, v7, 0x4

    or-int v20, v2, v20

    aget-char v20, v19, v20

    aput-char v20, v6, v18

    .line 84
    add-int/lit8 v18, v12, 0x1

    .end local v12    # "encodedIndex":I
    .restart local v18    # "encodedIndex":I
    shl-int/lit8 v20, v8, 0x2

    or-int v20, v20, v1

    aget-char v20, v19, v20

    aput-char v20, v6, v12

    .line 85
    add-int/lit8 v12, v18, 0x1

    .end local v18    # "encodedIndex":I
    .restart local v12    # "encodedIndex":I
    and-int/lit8 v20, v11, 0x3f

    aget-char v19, v19, v20

    aput-char v19, v6, v18

    .line 70
    .end local v1    # "val3":B
    .end local v2    # "val2":B
    .end local v13    # "val1":B
    add-int/lit8 v14, v14, 0x1

    move v13, v15

    move/from16 v1, v17

    const/16 v2, 0x8

    goto :goto_28

    .end local v15    # "dataIndex":I
    .end local v17    # "lengthDataBits":I
    .local v1, "lengthDataBits":I
    .local v13, "dataIndex":I
    :cond_96
    move/from16 v17, v1

    .line 88
    .end local v1    # "lengthDataBits":I
    .end local v14    # "i":I
    .restart local v17    # "lengthDataBits":I
    const/16 v1, 0x8

    if-ne v3, v1, :cond_ca

    .line 89
    aget-byte v9, v0, v13

    .line 90
    and-int/lit8 v1, v9, 0x3

    int-to-byte v7, v1

    .line 91
    and-int/lit8 v1, v9, -0x80

    if-nez v1, :cond_a9

    shr-int/lit8 v1, v9, 0x2

    int-to-byte v1, v1

    goto :goto_ae

    .line 92
    :cond_a9
    shr-int/lit8 v1, v9, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    :goto_ae
    nop

    .line 93
    .local v1, "val1":B
    add-int/lit8 v2, v12, 0x1

    .end local v12    # "encodedIndex":I
    .local v2, "encodedIndex":I
    sget-object v14, LsdkInterface/tool/Base64Util;->lookUpBase64Alphabet:[C

    aget-char v15, v14, v1

    aput-char v15, v6, v12

    .line 94
    add-int/lit8 v12, v2, 0x1

    .end local v2    # "encodedIndex":I
    .restart local v12    # "encodedIndex":I
    shl-int/lit8 v15, v7, 0x4

    aget-char v14, v14, v15

    aput-char v14, v6, v2

    .line 95
    add-int/lit8 v2, v12, 0x1

    .end local v12    # "encodedIndex":I
    .restart local v2    # "encodedIndex":I
    sget-char v14, LsdkInterface/tool/Base64Util;->PAD:C

    aput-char v14, v6, v12

    .line 96
    add-int/lit8 v12, v2, 0x1

    .end local v2    # "encodedIndex":I
    .restart local v12    # "encodedIndex":I
    aput-char v14, v6, v2

    .end local v1    # "val1":B
    goto :goto_117

    .line 97
    :cond_ca
    const/16 v1, 0x10

    if-ne v3, v1, :cond_117

    .line 98
    aget-byte v9, v0, v13

    .line 99
    add-int/lit8 v1, v13, 0x1

    aget-byte v10, v0, v1

    .line 100
    and-int/lit8 v1, v10, 0xf

    int-to-byte v8, v1

    .line 101
    and-int/lit8 v1, v9, 0x3

    int-to-byte v7, v1

    .line 102
    and-int/lit8 v1, v9, -0x80

    if-nez v1, :cond_e2

    shr-int/lit8 v1, v9, 0x2

    int-to-byte v1, v1

    goto :goto_e7

    .line 103
    :cond_e2
    shr-int/lit8 v1, v9, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    :goto_e7
    nop

    .line 104
    .restart local v1    # "val1":B
    and-int/lit8 v2, v10, -0x80

    if-nez v2, :cond_f0

    shr-int/lit8 v2, v10, 0x4

    int-to-byte v2, v2

    goto :goto_f5

    .line 105
    :cond_f0
    shr-int/lit8 v2, v10, 0x4

    xor-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    :goto_f5
    nop

    .line 106
    .local v2, "val2":B
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "encodedIndex":I
    .local v14, "encodedIndex":I
    sget-object v15, LsdkInterface/tool/Base64Util;->lookUpBase64Alphabet:[C

    aget-char v16, v15, v1

    aput-char v16, v6, v12

    .line 107
    add-int/lit8 v12, v14, 0x1

    .end local v14    # "encodedIndex":I
    .restart local v12    # "encodedIndex":I
    shl-int/lit8 v16, v7, 0x4

    or-int v16, v2, v16

    aget-char v16, v15, v16

    aput-char v16, v6, v14

    .line 108
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "encodedIndex":I
    .restart local v14    # "encodedIndex":I
    shl-int/lit8 v16, v8, 0x2

    aget-char v15, v15, v16

    aput-char v15, v6, v12

    .line 109
    add-int/lit8 v12, v14, 0x1

    .end local v14    # "encodedIndex":I
    .restart local v12    # "encodedIndex":I
    sget-char v15, LsdkInterface/tool/Base64Util;->PAD:C

    aput-char v15, v6, v14

    goto :goto_118

    .line 97
    .end local v1    # "val1":B
    .end local v2    # "val2":B
    :cond_117
    :goto_117
    nop

    .line 111
    :goto_118
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private static isData(C)Z
    .registers 3
    .param p0, "octect"    # C

    .line 48
    const/16 v0, 0x80

    if-ge p0, v0, :cond_d

    sget-object v0, LsdkInterface/tool/Base64Util;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private static isPad(C)Z
    .registers 2
    .param p0, "octect"    # C

    .line 45
    sget-char v0, LsdkInterface/tool/Base64Util;->PAD:C

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isWhiteSpace(C)Z
    .registers 2
    .param p0, "octect"    # C

    .line 42
    const/16 v0, 0x20

    if-eq p0, v0, :cond_13

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0x9

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static removeWhiteSpace([C)I
    .registers 6
    .param p0, "data"    # [C

    .line 201
    if-nez p0, :cond_4

    .line 202
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_4
    const/4 v0, 0x0

    .line 206
    .local v0, "newSize":I
    array-length v1, p0

    .line 207
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1b

    .line 208
    aget-char v3, p0, v2

    invoke-static {v3}, LsdkInterface/tool/Base64Util;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_18

    .line 209
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "newSize":I
    .local v3, "newSize":I
    aget-char v4, p0, v2

    aput-char v4, p0, v0

    move v0, v3

    .line 207
    .end local v3    # "newSize":I
    .restart local v0    # "newSize":I
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 212
    .end local v2    # "i":I
    :cond_1b
    return v0
.end method
