.class public final Lcom/efs/sdk/base/a/c/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/efs/sdk/base/a/c/a/d;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 346
    const-string v0, "0"

    if-nez p0, :cond_5

    move-object p0, v0

    .line 347
    :cond_5
    if-nez p1, :cond_8

    move-object p1, v0

    .line 348
    :cond_8
    nop

    .line 349
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 350
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 351
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 352
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_3f

    .line 353
    array-length v3, p0

    if-ge v2, v3, :cond_27

    aget-object v3, p0, v2

    .line 354
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    .line 355
    :goto_28
    array-length v4, p1

    if-ge v2, v4, :cond_32

    aget-object v4, p1, v2

    .line 356
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    .line 357
    :goto_33
    if-ge v3, v4, :cond_37

    .line 358
    const/4 v1, -0x1

    .line 359
    goto :goto_3f

    .line 361
    :cond_37
    if-le v3, v4, :cond_3c

    .line 362
    nop

    .line 363
    const/4 v1, 0x1

    goto :goto_3f

    .line 352
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 366
    :cond_3f
    :goto_3f
    return v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 306
    const-string v0, "ver"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 307
    invoke-static {p1, p2}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 308
    :cond_d
    const-string v0, "datetime"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 309
    invoke-static {p1, p2}, Lcom/efs/sdk/base/a/c/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 311
    :cond_1a
    const/16 p0, -0x64

    return p0
.end method

.method private static a(Ljava/util/Map;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .line 144
    nop

    .line 146
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_5
    :try_start_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ge v2, v4, :cond_20b

    .line 147
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 148
    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-ge v7, v6, :cond_1f

    .line 149
    nop

    .line 150
    const/4 v3, 0x0

    goto/16 :goto_20b

    .line 153
    :cond_1f
    const-string v7, "fld"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 154
    const-string v8, "val"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 155
    const-string v9, "opc"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    if-eqz v7, :cond_209

    if-eqz v8, :cond_209

    if-nez v4, :cond_39

    goto/16 :goto_209

    .line 162
    :cond_39
    nop

    .line 1320
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v9

    .line 1321
    iget-object v10, v9, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    .line 1323
    invoke-virtual {v9}, Lcom/efs/sdk/base/a/c/a;->a()Ljava/util/Map;

    move-result-object v9

    .line 1325
    const-string v11, "ver"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_51

    .line 1326
    invoke-static {v10}, Lcom/efs/sdk/base/a/h/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    goto :goto_8e

    .line 1327
    :cond_51
    const-string v11, "datetime"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6c

    .line 1328
    sget-object v9, Lcom/efs/sdk/base/a/c/a/d;->a:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->b()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    goto :goto_8e

    .line 1329
    :cond_6c
    const-string v11, "pkg"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7a

    .line 1330
    nop

    .line 2026
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1330
    goto :goto_8e

    .line 1331
    :cond_7a
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8d

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 1332
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_8e

    .line 1334
    :cond_8d
    move-object v9, v5

    .line 162
    :goto_8e
    nop

    .line 163
    if-nez v9, :cond_9d

    .line 164
    const-string v7, "isNull"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_205

    .line 167
    nop

    .line 168
    const/4 v3, 0x0

    goto/16 :goto_20b

    .line 173
    :cond_9d
    const/4 v10, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_284

    :cond_a5
    goto/16 :goto_148

    :sswitch_a7
    const-string v11, "isEmpty"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/16 v10, 0xd

    goto/16 :goto_148

    :sswitch_b3
    const-string v11, "endsWith"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/16 v10, 0x9

    goto/16 :goto_148

    :sswitch_bf
    const-string v11, "matches"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/16 v10, 0xe

    goto/16 :goto_148

    :sswitch_cb
    const-string v11, "equalsIgnoreCase"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/16 v10, 0xc

    goto/16 :goto_148

    :sswitch_d7
    const-string v11, ">="

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/4 v10, 0x3

    goto/16 :goto_148

    :sswitch_e2
    const-string v11, "=="

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/4 v10, 0x0

    goto :goto_148

    :sswitch_ec
    const-string v11, "<>"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/4 v10, 0x7

    goto :goto_148

    :sswitch_f6
    const-string v11, "<="

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/4 v10, 0x4

    goto :goto_148

    :sswitch_100
    const-string v11, "!="

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/4 v10, 0x6

    goto :goto_148

    :sswitch_10a
    const-string v11, ">"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/4 v10, 0x1

    goto :goto_148

    :sswitch_114
    const-string v11, "<"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/4 v10, 0x2

    goto :goto_148

    :sswitch_11e
    const-string v11, "!"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/4 v10, 0x5

    goto :goto_148

    :sswitch_128
    const-string v11, "contains"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/16 v10, 0xa

    goto :goto_148

    :sswitch_133
    const-string v11, "equals"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/16 v10, 0xb

    goto :goto_148

    :sswitch_13e
    const-string v11, "startsWith"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/16 v10, 0x8

    :goto_148
    const/16 v4, -0x64

    packed-switch v10, :pswitch_data_2c2

    goto/16 :goto_203

    .line 256
    :pswitch_14f
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_203

    .line 252
    :pswitch_155
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    .line 254
    goto/16 :goto_203

    .line 248
    :pswitch_15b
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 250
    goto/16 :goto_203

    .line 244
    :pswitch_161
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 246
    goto/16 :goto_203

    .line 240
    :pswitch_167
    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 242
    goto/16 :goto_203

    .line 236
    :pswitch_16d
    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 238
    goto/16 :goto_203

    .line 232
    :pswitch_173
    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 234
    goto/16 :goto_203

    .line 223
    :pswitch_179
    invoke-static {v7, v9, v8}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 224
    if-ne v3, v4, :cond_18b

    .line 225
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_188

    const/4 v3, 0x1

    goto/16 :goto_203

    :cond_188
    const/4 v3, 0x0

    goto/16 :goto_203

    .line 227
    :cond_18b
    if-eqz v3, :cond_18f

    const/4 v3, 0x1

    goto :goto_190

    :cond_18f
    const/4 v3, 0x0

    .line 230
    :goto_190
    goto/16 :goto_203

    .line 212
    :pswitch_192
    invoke-static {v7, v9, v8}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 213
    if-ne v3, v4, :cond_1a4

    .line 214
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_1a1

    const/4 v3, 0x1

    goto/16 :goto_203

    :cond_1a1
    const/4 v3, 0x0

    goto/16 :goto_203

    .line 216
    :cond_1a4
    if-gtz v3, :cond_1a8

    const/4 v3, 0x1

    goto :goto_1a9

    :cond_1a8
    const/4 v3, 0x0

    .line 219
    :goto_1a9
    goto/16 :goto_203

    .line 203
    :pswitch_1ab
    invoke-static {v7, v9, v8}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 204
    if-ne v3, v4, :cond_1bb

    .line 205
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1b9

    const/4 v3, 0x1

    goto :goto_203

    :cond_1b9
    const/4 v3, 0x0

    goto :goto_203

    .line 207
    :cond_1bb
    if-ltz v3, :cond_1bf

    const/4 v3, 0x1

    goto :goto_1c0

    :cond_1bf
    const/4 v3, 0x0

    .line 210
    :goto_1c0
    goto :goto_203

    .line 194
    :pswitch_1c1
    invoke-static {v7, v9, v8}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 195
    if-ne v3, v4, :cond_1d1

    .line 196
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1cf

    const/4 v3, 0x1

    goto :goto_203

    :cond_1cf
    const/4 v3, 0x0

    goto :goto_203

    .line 198
    :cond_1d1
    if-gez v3, :cond_1d5

    const/4 v3, 0x1

    goto :goto_1d6

    :cond_1d5
    const/4 v3, 0x0

    .line 201
    :goto_1d6
    goto :goto_203

    .line 185
    :pswitch_1d7
    invoke-static {v7, v9, v8}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 186
    if-ne v3, v4, :cond_1e7

    .line 187
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1e5

    const/4 v3, 0x1

    goto :goto_203

    :cond_1e5
    const/4 v3, 0x0

    goto :goto_203

    .line 189
    :cond_1e7
    if-lez v3, :cond_1eb

    const/4 v3, 0x1

    goto :goto_1ec

    :cond_1eb
    const/4 v3, 0x0

    .line 192
    :goto_1ec
    goto :goto_203

    .line 176
    :pswitch_1ed
    invoke-static {v7, v9, v8}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 177
    if-ne v3, v4, :cond_1fd

    .line 178
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1fb

    const/4 v3, 0x1

    goto :goto_203

    :cond_1fb
    const/4 v3, 0x0

    goto :goto_203

    .line 180
    :cond_1fd
    if-nez v3, :cond_201

    const/4 v3, 0x1

    goto :goto_202

    :cond_201
    const/4 v3, 0x0

    .line 183
    :goto_202
    nop

    .line 261
    :goto_203
    if-eqz v3, :cond_20b

    .line 146
    :cond_205
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 158
    :cond_209
    :goto_209
    nop

    .line 159
    const/4 v3, 0x0

    .line 266
    :cond_20b
    :goto_20b
    if-nez v3, :cond_20e

    .line 267
    return-void

    .line 270
    :cond_20e
    nop

    :goto_20f
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v1, p1, :cond_27a

    .line 271
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 272
    if-eqz p1, :cond_277

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lt v0, v6, :cond_277

    .line 273
    const-string v0, "opt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v2, "set"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 275
    if-eqz v0, :cond_277

    if-eqz v2, :cond_277

    .line 279
    nop

    .line 280
    const-string v3, "lt"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    const-string v4, "net"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_240
    .catchall {:try_start_5 .. :try_end_240} :catchall_27b

    .line 283
    const-string v4, "_"

    if-eqz v3, :cond_259

    .line 284
    :try_start_244
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_259
    if-eqz p1, :cond_270

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    :cond_270
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_277
    .catchall {:try_start_244 .. :try_end_277} :catchall_27b

    .line 270
    :cond_277
    add-int/lit8 v1, v1, 0x1

    goto :goto_20f

    .line 295
    :cond_27a
    return-void

    .line 293
    :catchall_27b
    move-exception p0

    .line 294
    const-string p1, "efs.config"

    const-string p2, "updateConfigCond error"

    invoke-static {p1, p2, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    return-void

    :sswitch_data_284
    .sparse-switch
        -0x5cb7a349 -> :sswitch_13e
        -0x4d378041 -> :sswitch_133
        -0x21d289e1 -> :sswitch_128
        0x21 -> :sswitch_11e
        0x3c -> :sswitch_114
        0x3e -> :sswitch_10a
        0x43c -> :sswitch_100
        0x781 -> :sswitch_f6
        0x782 -> :sswitch_ec
        0x7a0 -> :sswitch_e2
        0x7bf -> :sswitch_d7
        0xf5dad41 -> :sswitch_cb
        0x321e8933 -> :sswitch_bf
        0x67e67bde -> :sswitch_b3
        0x7aab3243 -> :sswitch_a7
    .end sparse-switch

    :pswitch_data_2c2
    .packed-switch 0x0
        :pswitch_1ed
        :pswitch_1d7
        :pswitch_1c1
        :pswitch_1ab
        :pswitch_192
        :pswitch_179
        :pswitch_179
        :pswitch_179
        :pswitch_173
        :pswitch_16d
        :pswitch_167
        :pswitch_161
        :pswitch_15b
        :pswitch_155
        :pswitch_14f
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lcom/efs/sdk/base/a/c/a/b;)Z
    .registers 10

    .line 57
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v3, "config"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 62
    const-string v4, "cver"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 64
    if-eqz v3, :cond_87

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_87

    .line 66
    const-string v4, "common"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 68
    if-eqz v4, :cond_47

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_47

    .line 69
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 70
    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 71
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 72
    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    goto :goto_31

    .line 78
    :cond_47
    const-string v4, "app_configs"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 80
    if-eqz v3, :cond_87

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_87

    .line 81
    const/4 v4, 0x0

    :goto_56
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_87

    .line 82
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 84
    if-eqz v5, :cond_84

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_84

    .line 86
    const-string v6, "conditions"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 88
    const-string v7, "actions"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 90
    if-eqz v6, :cond_84

    if-eqz v5, :cond_84

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_84

    .line 91
    invoke-static {v1, v6, v5}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/util/Map;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 81
    :cond_84
    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .line 98
    :cond_87
    invoke-virtual {p1, v1}, Lcom/efs/sdk/base/a/c/a/b;->a(Ljava/util/Map;)V

    .line 101
    nop

    .line 1112
    iput v2, p1, Lcom/efs/sdk/base/a/c/a/b;->a:I
    :try_end_8d
    .catchall {:try_start_1 .. :try_end_8d} :catchall_90

    .line 105
    nop

    .line 106
    const/4 p0, 0x1

    return p0

    .line 102
    :catchall_90
    move-exception p1

    .line 103
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "parseConfig error, data is "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "efs.config"

    invoke-static {v1, p0, p1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 377
    const-string v0, "1970/01/01 00:00:00"

    if-nez p0, :cond_5

    .line 378
    move-object p0, v0

    .line 380
    :cond_5
    if-nez p1, :cond_8

    .line 381
    move-object p1, v0

    .line 383
    :cond_8
    nop

    .line 385
    const-string v0, "[:/\\s]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 386
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 387
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 388
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_3f

    .line 389
    array-length v3, p0

    if-ge v2, v3, :cond_27

    aget-object v3, p0, v2

    .line 390
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    .line 391
    :goto_28
    array-length v4, p1

    if-ge v2, v4, :cond_32

    aget-object v4, p1, v2

    .line 392
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    .line 393
    :goto_33
    if-ge v3, v4, :cond_37

    .line 394
    const/4 v1, -0x1

    .line 395
    goto :goto_3f

    .line 397
    :cond_37
    if-le v3, v4, :cond_3c

    .line 398
    nop

    .line 399
    const/4 v1, 0x1

    goto :goto_3f

    .line 388
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 402
    :cond_3f
    :goto_3f
    return v1
.end method
