.class public Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final a:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a:Ljava/util/TimeZone;

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .registers 4

    .line 345
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_18

    .line 346
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 347
    const/16 v1, 0x30

    if-lt v0, v1, :cond_17

    const/16 v1, 0x39

    if-le v0, v1, :cond_14

    goto :goto_17

    .line 345
    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 347
    :cond_17
    :goto_17
    return p1

    .line 349
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;II)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 301
    if-ltz p1, :cond_6d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_6d

    if-gt p1, p2, :cond_6d

    .line 305
    nop

    .line 306
    const/4 v0, 0x0

    .line 308
    const-string v1, "Invalid number: "

    const/16 v2, 0xa

    if-ge p1, p2, :cond_3b

    .line 309
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 310
    if-ltz v3, :cond_20

    .line 313
    neg-int v3, v3

    goto :goto_3d

    .line 311
    :cond_20
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_3b
    move v3, v0

    move v0, p1

    .line 315
    :goto_3d
    if-ge v0, p2, :cond_6b

    .line 316
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 317
    if-ltz v0, :cond_50

    .line 320
    mul-int/lit8 v3, v3, 0xa

    .line 321
    sub-int/2addr v3, v0

    move v0, v4

    goto :goto_3d

    .line 318
    :cond_50
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_6b
    neg-int p0, v3

    return p0

    .line 302
    :cond_6d
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 124
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 126
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 129
    add-int/lit8 v3, v0, 0x4

    invoke-static {v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    .line 130
    const/16 v4, 0x2d

    invoke-static {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;IC)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 135
    :cond_18
    add-int/lit8 v5, v3, 0x2

    invoke-static {v1, v3, v5}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v3

    .line 136
    invoke-static {v1, v5, v4}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;IC)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 137
    add-int/lit8 v5, v5, 0x1

    .line 141
    :cond_26
    add-int/lit8 v6, v5, 0x2

    invoke-static {v1, v5, v6}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v5

    .line 143
    nop

    .line 144
    nop

    .line 145
    nop

    .line 146
    nop

    .line 149
    const/16 v7, 0x54

    invoke-static {v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;IC)Z

    move-result v7

    .line 151
    const/4 v8, 0x1

    if-nez v7, :cond_4d

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v9, v6, :cond_4d

    .line 152
    new-instance v4, Ljava/util/GregorianCalendar;

    sub-int/2addr v3, v8

    invoke-direct {v4, v0, v3, v5}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 154
    invoke-virtual {v2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 155
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 158
    :cond_4d
    const/16 v9, 0x2b

    const/16 v10, 0x5a

    if-eqz v7, :cond_cb

    .line 161
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v6, 0x2

    invoke-static {v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v6

    .line 162
    const/16 v12, 0x3a

    invoke-static {v1, v7, v12}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;IC)Z

    move-result v13

    if-eqz v13, :cond_65

    .line 163
    add-int/lit8 v7, v7, 0x1

    .line 166
    :cond_65
    add-int/lit8 v13, v7, 0x2

    invoke-static {v1, v7, v13}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v7

    .line 167
    invoke-static {v1, v13, v12}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;IC)Z

    move-result v12

    if-eqz v12, :cond_73

    .line 168
    add-int/lit8 v13, v13, 0x1

    .line 171
    :cond_73
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v13, :cond_c5

    .line 172
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 173
    if-eq v12, v10, :cond_c5

    if-eq v12, v9, :cond_c5

    if-eq v12, v4, :cond_c5

    .line 174
    add-int/lit8 v12, v13, 0x2

    invoke-static {v1, v13, v12}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v13

    .line 175
    const/16 v14, 0x3b

    if-le v13, v14, :cond_92

    const/16 v15, 0x3f

    if-ge v13, v15, :cond_92

    move v13, v14

    .line 177
    :cond_92
    const/16 v14, 0x2e

    invoke-static {v1, v12, v14}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;IC)Z

    move-result v14

    if-eqz v14, :cond_bd

    .line 178
    add-int/lit8 v12, v12, 0x1

    .line 179
    add-int/lit8 v14, v12, 0x1

    invoke-static {v1, v14}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;I)I

    move-result v14

    .line 180
    add-int/lit8 v15, v12, 0x3

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 181
    invoke-static {v1, v12, v15}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v16

    .line 183
    sub-int/2addr v15, v12

    packed-switch v15, :pswitch_data_24a

    .line 191
    goto :goto_b7

    .line 185
    :pswitch_b1
    mul-int/lit8 v16, v16, 0xa

    .line 186
    goto :goto_b7

    .line 188
    :pswitch_b4
    mul-int/lit8 v16, v16, 0x64

    .line 189
    nop

    .line 193
    :goto_b7
    move v12, v7

    move v7, v6

    move v6, v14

    move/from16 v14, v16

    goto :goto_cf

    .line 177
    :cond_bd
    const/4 v14, 0x0

    move/from16 v17, v7

    move v7, v6

    move v6, v12

    move/from16 v12, v17

    goto :goto_cf

    .line 200
    :cond_c5
    move v12, v7

    const/4 v14, 0x0

    move v7, v6

    move v6, v13

    const/4 v13, 0x0

    goto :goto_cf

    .line 158
    :cond_cb
    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 200
    :goto_cf
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-le v15, v6, :cond_1c8

    .line 204
    nop

    .line 205
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 207
    const/4 v11, 0x5

    if-ne v15, v10, :cond_e2

    .line 208
    sget-object v4, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a:Ljava/util/TimeZone;

    .line 209
    add-int/2addr v6, v8

    goto/16 :goto_197

    .line 210
    :cond_e2
    if-eq v15, v9, :cond_106

    if-ne v15, v4, :cond_e7

    goto :goto_106

    .line 245
    :cond_e7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid time zone indicator \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_106
    :goto_106
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v11, :cond_111

    :goto_110
    goto :goto_125

    :cond_111
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "00"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_110

    .line 216
    :goto_125
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v6, v9

    .line 218
    const-string v9, "+0000"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_194

    const-string v9, "+00:00"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13b

    goto :goto_194

    .line 225
    :cond_13b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GMT"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 230
    invoke-virtual {v9}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    .line 231
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_192

    .line 237
    const-string v15, ":"

    const-string v11, ""

    invoke-virtual {v10, v15, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 238
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16b

    goto :goto_192

    .line 239
    :cond_16b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatching time zone indicator: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " given, resolves to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 240
    invoke-virtual {v9}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_192
    :goto_192
    move-object v4, v9

    goto :goto_196

    .line 219
    :cond_194
    :goto_194
    sget-object v4, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a/a;->a:Ljava/util/TimeZone;

    .line 244
    :goto_196
    nop

    .line 248
    :goto_197
    new-instance v9, Ljava/util/GregorianCalendar;

    invoke-direct {v9, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 249
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/util/Calendar;->setLenient(Z)V

    .line 250
    invoke-virtual {v9, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 251
    sub-int/2addr v3, v8

    const/4 v0, 0x2

    invoke-virtual {v9, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/4 v0, 0x5

    invoke-virtual {v9, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v0, 0xb

    invoke-virtual {v9, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v0, 0xc

    invoke-virtual {v9, v0, v12}, Ljava/util/Calendar;->set(II)V

    .line 255
    const/16 v0, 0xd

    invoke-virtual {v9, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v0, 0xe

    invoke-virtual {v9, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 258
    invoke-virtual {v2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 259
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 201
    :cond_1c8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "No time zone indicator"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_1d0} :catch_1d4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1d0} :catch_1d2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1d0} :catch_1d0

    .line 266
    :catch_1d0
    move-exception v0

    .line 267
    goto :goto_1d7

    .line 264
    :catch_1d2
    move-exception v0

    .line 265
    goto :goto_1d6

    .line 262
    :catch_1d4
    move-exception v0

    .line 263
    nop

    .line 268
    :goto_1d6
    nop

    .line 269
    :goto_1d7
    if-nez v1, :cond_1db

    const/4 v1, 0x0

    goto :goto_1f2

    :cond_1db
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    :goto_1f2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 271
    if-eqz v3, :cond_1fe

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_21f

    .line 272
    :cond_1fe
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 274
    :cond_21f
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse date ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 275
    invoke-virtual {v4, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    throw v4

    nop

    :pswitch_data_24a
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_b1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;IC)Z
    .registers 4

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_e

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p2, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
