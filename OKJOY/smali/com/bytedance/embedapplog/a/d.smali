.class Lcom/bytedance/embedapplog/a/d;
.super Lcom/bytedance/embedapplog/a/c;
.source "SourceFile"


# static fields
.field private static final e:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/bytedance/embedapplog/b/h;

.field private final c:Lcom/bytedance/embedapplog/b/i;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 305
    const-string v0, "[^+0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/a/d;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/b/h;)V
    .registers 5

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/a/c;-><init>(Landroid/content/Context;)V

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/embedapplog/a/d;->d:I

    .line 43
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/d;->c:Lcom/bytedance/embedapplog/b/i;

    .line 44
    iput-object p3, p0, Lcom/bytedance/embedapplog/a/d;->b:Lcom/bytedance/embedapplog/b/h;

    .line 45
    return-void
.end method

.method private static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 292
    invoke-static {p0}, Lcom/bytedance/embedapplog/util/e;->d(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 294
    const-string v0, ""

    .line 302
    :goto_c
    return-object v0

    .line 296
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    const-string v2, "^(\\+86)?(1\\d{10})$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "$2"

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/a/d;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 300
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 302
    :cond_30
    const-string v0, ""

    goto :goto_c
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 165
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 167
    :try_start_6
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 168
    array-length v2, v1

    .line 169
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_1a

    .line 170
    aget-byte v3, v1, v0

    xor-int/lit8 v3, v3, -0x63

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 172
    :cond_1a
    const/16 v0, 0xa

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_21

    move-result-object v0

    .line 176
    :goto_20
    return-object v0

    .line 173
    :catch_21
    move-exception v0

    .line 176
    :cond_22
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 308
    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    move-object v0, v2

    .line 318
    :goto_10
    return-object v0

    .line 311
    :cond_11
    sget-object v0, Lcom/bytedance/embedapplog/a/d;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 313
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 315
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_44
    move-object v0, v2

    .line 318
    goto :goto_10
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 159
    :cond_8
    const/4 v0, 0x0

    .line 161
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/embedapplog/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private b(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x1e

    const/4 v6, 0x4

    .line 180
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 181
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/d;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->h()Ljava/util/HashSet;

    move-result-object v4

    .line 182
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v1

    .line 288
    :goto_16
    return-object v0

    .line 187
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/d;->a:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_21} :catch_26

    move-object v3, v0

    .line 190
    :goto_22
    if-nez v3, :cond_29

    move-object v0, v1

    .line 191
    goto :goto_16

    .line 188
    :catch_26
    move-exception v0

    move-object v3, v1

    goto :goto_22

    .line 194
    :cond_29
    const-string v0, "m_phone_number"

    .line 195
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 197
    :try_start_42
    invoke-static {v3}, Lcom/bytedance/embedapplog/a/d;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_51

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_51

    .line 199
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_51} :catch_181

    .line 208
    :cond_51
    :goto_51
    :try_start_51
    invoke-static {v3}, Lcom/bytedance/embedapplog/util/e;->d(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_194

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_194

    .line 210
    const-string v1, "raw_phone_number"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_62} :catch_19d

    .line 221
    :cond_62
    :goto_62
    const-string v0, "sim_serial"

    .line 222
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 224
    :try_start_7b
    invoke-static {v3}, Lcom/bytedance/embedapplog/util/e;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_90

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_90

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_90

    .line 226
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_90} :catch_1bf

    .line 231
    :cond_90
    :goto_90
    const-string v0, "subscribe_id"

    .line 232
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 234
    :try_start_a9
    invoke-static {v3}, Lcom/bytedance/embedapplog/util/e;->c(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_be

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_be

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_be

    .line 236
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_be} :catch_1bc

    .line 241
    :cond_be
    :goto_be
    const-string v0, "sim_op"

    .line 242
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eb

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 244
    :try_start_d6
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_eb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_eb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_eb

    .line 246
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_eb} :catch_1b9

    .line 251
    :cond_eb
    :goto_eb
    const-string v0, "net_op"

    .line 252
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_118

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 254
    :try_start_103
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_118

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_118

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_118

    .line 256
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_103 .. :try_end_118} :catch_1b6

    .line 261
    :cond_118
    :goto_118
    const-string v0, "phone_type"

    .line 262
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_137

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 264
    :try_start_130
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_137} :catch_1b4

    .line 268
    :cond_137
    :goto_137
    const-string v0, "net_type"

    .line 269
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_156

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 271
    :try_start_14f
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_156} :catch_1b2

    .line 276
    :cond_156
    :goto_156
    const-string v0, "wifi_bssid"

    .line 277
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17e

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 279
    :try_start_169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_175

    .line 280
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/embedapplog/util/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 282
    :cond_175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17e

    .line 283
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_17e} :catch_1b0

    :cond_17e
    :goto_17e
    move-object v0, v2

    .line 288
    goto/16 :goto_16

    .line 201
    :catch_181
    move-exception v0

    .line 203
    :try_start_182
    const-string v1, "no_m_phone"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_18f} :catch_191

    goto/16 :goto_51

    .line 204
    :catch_191
    move-exception v0

    goto/16 :goto_51

    .line 212
    :cond_194
    :try_start_194
    const-string v0, "no_raw_phone"

    const-string v1, "empty"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19b
    .catch Ljava/lang/Throwable; {:try_start_194 .. :try_end_19b} :catch_19d

    goto/16 :goto_62

    .line 214
    :catch_19d
    move-exception v0

    .line 216
    :try_start_19e
    const-string v1, "no_raw_phone"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1ab} :catch_1ad

    goto/16 :goto_62

    .line 217
    :catch_1ad
    move-exception v0

    goto/16 :goto_62

    .line 285
    :catch_1b0
    move-exception v0

    goto :goto_17e

    .line 272
    :catch_1b2
    move-exception v0

    goto :goto_156

    .line 265
    :catch_1b4
    move-exception v0

    goto :goto_137

    .line 258
    :catch_1b6
    move-exception v0

    goto/16 :goto_118

    .line 248
    :catch_1b9
    move-exception v0

    goto/16 :goto_eb

    .line 238
    :catch_1bc
    move-exception v0

    goto/16 :goto_be

    .line 228
    :catch_1bf
    move-exception v0

    goto/16 :goto_90
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method b()J
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 59
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/d;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->g()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    add-long/2addr v2, v4

    .line 61
    iget-object v4, p0, Lcom/bytedance/embedapplog/a/d;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/b/h;->i()Ljava/lang/Long;

    move-result-object v4

    .line 62
    if-eqz v4, :cond_31

    .line 63
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_1d

    .line 75
    :cond_1c
    :goto_1c
    return-wide v0

    .line 66
    :cond_1d
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/d;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->k()Ljava/lang/Long;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_31

    .line 68
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v4, 0x1b7740

    add-long/2addr v0, v4

    .line 69
    cmp-long v4, v0, v2

    if-ltz v4, :cond_1c

    :cond_31
    move-wide v0, v2

    goto :goto_1c
.end method

.method c()[J
    .registers 2

    .prologue
    .line 80
    sget-object v0, Lcom/bytedance/embedapplog/a/i;->c:[J

    return-object v0
.end method

.method public d()Z
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 85
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/d;->c:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v5

    .line 86
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/d;->c:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->o()I

    move-result v0

    if-eqz v0, :cond_10a

    if-eqz v5, :cond_10a

    .line 91
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/d;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->i()Ljava/lang/Long;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_118

    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_d6

    move-object v0, v1

    move v2, v4

    .line 104
    :goto_27
    if-eqz v2, :cond_10c

    .line 105
    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/a/d;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 106
    invoke-static {v6}, Lcom/bytedance/embedapplog/a/d;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_105

    .line 108
    const-string v7, "wifi_bssid"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    :goto_3d
    iget-object v6, p0, Lcom/bytedance/embedapplog/a/d;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v6}, Lcom/bytedance/embedapplog/b/h;->g()J

    move-result-wide v6

    const-wide/32 v8, 0x1499700

    add-long/2addr v6, v8

    .line 117
    if-nez v2, :cond_51

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_10a

    .line 120
    :cond_51
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 121
    const-string v7, "magic_tag"

    const-string v8, "ss_app_log"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v7, "header"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v5, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    const-string v5, "fingerprint"

    invoke-virtual {v6, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/d;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/embedapplog/a/d;->c:Lcom/bytedance/embedapplog/b/i;

    .line 127
    invoke-virtual {v5}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/embedapplog/c/a;->a()Lcom/bytedance/embedapplog/util/UriConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/embedapplog/util/UriConfig;->getSettingUri()Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getIAppParam()Lcom/bytedance/embedapplog/IAppParam;

    move-result-object v8

    .line 127
    invoke-static {v0, v5, v7, v4, v8}, Lcom/bytedance/embedapplog/c/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/embedapplog/IAppParam;)Ljava/lang/String;

    move-result-object v0

    .line 129
    sget-object v5, Lcom/bytedance/embedapplog/c/a;->c:[Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/bytedance/embedapplog/c/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/bytedance/embedapplog/c/a;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 131
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getDataObserver()Lcom/bytedance/embedapplog/IDataObserver;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/embedapplog/a/d;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/embedapplog/util/i;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_108

    move v0, v4

    :goto_a3
    invoke-interface {v6, v0, v5}, Lcom/bytedance/embedapplog/IDataObserver;->onRemoteConfigGet(ZLorg/json/JSONObject;)V

    .line 133
    if-eqz v5, :cond_10a

    .line 134
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/d;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->h()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    int-to-long v6, v0

    .line 136
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/d;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0, v5, v2, v1}, Lcom/bytedance/embedapplog/b/h;->a(Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/d;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->h()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    int-to-long v0, v0

    .line 139
    cmp-long v0, v0, v6

    if-lez v0, :cond_d5

    iget v0, p0, Lcom/bytedance/embedapplog/a/d;->d:I

    if-lez v0, :cond_d5

    .line 140
    iget v0, p0, Lcom/bytedance/embedapplog/a/d;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/embedapplog/a/d;->d:I

    .line 141
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/d;->d()Z

    move-result v4

    .line 147
    :cond_d5
    :goto_d5
    return v4

    .line 96
    :cond_d6
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/d;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->k()Ljava/lang/Long;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_114

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x1b7740

    add-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-ltz v0, :cond_114

    .line 98
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_111

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/d;->b:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    move v2, v4

    .line 100
    goto/16 :goto_27

    :cond_105
    move v2, v3

    .line 111
    goto/16 :goto_3d

    :cond_108
    move v0, v3

    .line 131
    goto :goto_a3

    :cond_10a
    move v4, v3

    .line 147
    goto :goto_d5

    :cond_10c
    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_3d

    :cond_111
    move v2, v3

    goto/16 :goto_27

    :cond_114
    move-object v0, v1

    move v2, v3

    goto/16 :goto_27

    :cond_118
    move-object v0, v1

    move v2, v3

    goto/16 :goto_3d
.end method

.method e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    const-string v0, "c"

    return-object v0
.end method
