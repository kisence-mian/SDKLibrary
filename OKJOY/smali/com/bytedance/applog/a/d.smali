.class Lcom/bytedance/applog/a/d;
.super Lcom/bytedance/applog/a/c;
.source "SourceFile"


# static fields
.field private static final e:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/bytedance/applog/b/h;

.field private final c:Lcom/bytedance/applog/b/i;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 316
    const-string v0, "[^+0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/a/d;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/b/h;)V
    .registers 5

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/bytedance/applog/a/c;-><init>(Landroid/content/Context;)V

    .line 154
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/applog/a/d;->d:I

    .line 44
    iput-object p2, p0, Lcom/bytedance/applog/a/d;->c:Lcom/bytedance/applog/b/i;

    .line 45
    iput-object p3, p0, Lcom/bytedance/applog/a/d;->b:Lcom/bytedance/applog/b/h;

    .line 46
    return-void
.end method

.method private static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 303
    invoke-static {p0}, Lcom/bytedance/applog/util/f;->d(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 305
    const-string v0, ""

    .line 313
    :goto_c
    return-object v0

    .line 307
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    const-string v2, "^(\\+86)?(1\\d{10})$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "$2"

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-static {v0, v1}, Lcom/bytedance/applog/a/d;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 311
    invoke-static {v0}, Lcom/bytedance/applog/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 313
    :cond_30
    const-string v0, ""

    goto :goto_c
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 164
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 166
    :try_start_6
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 167
    array-length v2, v1

    .line 168
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_1a

    .line 169
    aget-byte v3, v1, v0

    xor-int/lit8 v3, v3, -0x63

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 171
    :cond_1a
    const/16 v0, 0xa

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_21

    move-result-object v0

    .line 175
    :goto_20
    return-object v0

    .line 172
    :catch_21
    move-exception v0

    .line 175
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

    .line 319
    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    move-object v0, v2

    .line 329
    :goto_10
    return-object v0

    .line 322
    :cond_11
    sget-object v0, Lcom/bytedance/applog/a/d;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 324
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 326
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_44
    move-object v0, v2

    .line 329
    goto :goto_10
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 158
    :cond_8
    const/4 v0, 0x0

    .line 160
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/applog/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private b(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x1e

    const/4 v6, 0x4

    .line 179
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/bytedance/applog/a/d;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->h()Ljava/util/HashSet;

    move-result-object v4

    .line 181
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v1

    .line 299
    :goto_16
    return-object v0

    .line 186
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/bytedance/applog/a/d;->a:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_21} :catch_26

    move-object v3, v0

    .line 189
    :goto_22
    if-nez v3, :cond_29

    move-object v0, v1

    .line 190
    goto :goto_16

    .line 187
    :catch_26
    move-exception v0

    move-object v3, v1

    goto :goto_22

    .line 193
    :cond_29
    const-string v0, "m_phone_number"

    .line 194
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-static {v0}, Lcom/bytedance/applog/util/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 196
    :try_start_42
    invoke-static {v3}, Lcom/bytedance/applog/a/d;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_51

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_51

    .line 198
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_51} :catch_1a5

    .line 207
    :cond_51
    :goto_51
    :try_start_51
    invoke-static {v3}, Lcom/bytedance/applog/util/f;->d(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_1b8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1b8

    .line 209
    const-string v1, "raw_phone_number"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_62} :catch_1c1

    .line 220
    :cond_62
    :goto_62
    const-string v0, "sim_serial"

    .line 221
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-static {v0}, Lcom/bytedance/applog/util/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 223
    :try_start_7b
    invoke-static {v3}, Lcom/bytedance/applog/util/f;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_90

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_90

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_90

    .line 225
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_90} :catch_1e7

    .line 230
    :cond_90
    :goto_90
    const-string v0, "subscribe_id"

    .line 231
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-static {v0}, Lcom/bytedance/applog/util/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 233
    :try_start_a9
    invoke-static {v3}, Lcom/bytedance/applog/util/f;->c(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_be

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_be

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_be

    .line 235
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_be} :catch_1e4

    .line 240
    :cond_be
    :goto_be
    const-string v0, "sim_op"

    .line 241
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eb

    invoke-static {v0}, Lcom/bytedance/applog/util/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 243
    :try_start_d6
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_eb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_eb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_eb

    .line 245
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_eb} :catch_1e1

    .line 250
    :cond_eb
    :goto_eb
    const-string v0, "net_op"

    .line 251
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_118

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    invoke-static {v0}, Lcom/bytedance/applog/util/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 253
    :try_start_103
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 254
    if-eqz v1, :cond_118

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_118

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_118

    .line 255
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_103 .. :try_end_118} :catch_1de

    .line 260
    :cond_118
    :goto_118
    const-string v0, "phone_type"

    .line 261
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_137

    invoke-static {v0}, Lcom/bytedance/applog/util/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 263
    :try_start_130
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_137} :catch_1db

    .line 267
    :cond_137
    :goto_137
    const-string v0, "net_type"

    .line 268
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_156

    invoke-static {v0}, Lcom/bytedance/applog/util/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 270
    :try_start_14f
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_156} :catch_1d8

    .line 275
    :cond_156
    :goto_156
    const-string v0, "third_part_account"

    .line 277
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17a

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17a

    invoke-static {v0}, Lcom/bytedance/applog/util/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17a

    .line 278
    iget-object v1, p0, Lcom/bytedance/applog/a/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/applog/util/j;->f(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_17a

    .line 281
    :try_start_177
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_17a} :catch_1d4

    .line 287
    :cond_17a
    :goto_17a
    const-string v0, "wifi_bssid"

    .line 288
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a2

    invoke-static {v0}, Lcom/bytedance/applog/util/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a2

    .line 290
    :try_start_18d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_199

    .line 291
    iget-object v1, p0, Lcom/bytedance/applog/a/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/applog/util/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 293
    :cond_199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a2

    .line 294
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_1a2} :catch_1d6

    :cond_1a2
    :goto_1a2
    move-object v0, v2

    .line 299
    goto/16 :goto_16

    .line 200
    :catch_1a5
    move-exception v0

    .line 202
    :try_start_1a6
    const-string v1, "no_m_phone"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1b3} :catch_1b5

    goto/16 :goto_51

    .line 203
    :catch_1b5
    move-exception v0

    goto/16 :goto_51

    .line 211
    :cond_1b8
    :try_start_1b8
    const-string v0, "no_raw_phone"

    const-string v1, "empty"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1bf
    .catch Ljava/lang/Throwable; {:try_start_1b8 .. :try_end_1bf} :catch_1c1

    goto/16 :goto_62

    .line 213
    :catch_1c1
    move-exception v0

    .line 215
    :try_start_1c2
    const-string v1, "no_raw_phone"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1cf} :catch_1d1

    goto/16 :goto_62

    .line 216
    :catch_1d1
    move-exception v0

    goto/16 :goto_62

    .line 283
    :catch_1d4
    move-exception v0

    goto :goto_17a

    .line 296
    :catch_1d6
    move-exception v0

    goto :goto_1a2

    .line 271
    :catch_1d8
    move-exception v0

    goto/16 :goto_156

    .line 264
    :catch_1db
    move-exception v0

    goto/16 :goto_137

    .line 257
    :catch_1de
    move-exception v0

    goto/16 :goto_118

    .line 247
    :catch_1e1
    move-exception v0

    goto/16 :goto_eb

    .line 237
    :catch_1e4
    move-exception v0

    goto/16 :goto_be

    .line 227
    :catch_1e7
    move-exception v0

    goto/16 :goto_90
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method b()J
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 60
    iget-object v2, p0, Lcom/bytedance/applog/a/d;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/applog/b/h;->g()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    add-long/2addr v2, v4

    .line 62
    iget-object v4, p0, Lcom/bytedance/applog/a/d;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/applog/b/h;->i()Ljava/lang/Long;

    move-result-object v4

    .line 63
    if-eqz v4, :cond_31

    .line 64
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_1d

    .line 76
    :cond_1c
    :goto_1c
    return-wide v0

    .line 67
    :cond_1d
    iget-object v0, p0, Lcom/bytedance/applog/a/d;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->k()Ljava/lang/Long;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_31

    .line 69
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v4, 0x1b7740

    add-long/2addr v0, v4

    .line 70
    cmp-long v4, v0, v2

    if-ltz v4, :cond_1c

    :cond_31
    move-wide v0, v2

    goto :goto_1c
.end method

.method c()[J
    .registers 2

    .prologue
    .line 81
    sget-object v0, Lcom/bytedance/applog/a/j;->c:[J

    return-object v0
.end method

.method public d()Z
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 86
    iget-object v0, p0, Lcom/bytedance/applog/a/d;->c:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v5

    .line 87
    iget-object v0, p0, Lcom/bytedance/applog/a/d;->c:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->o()I

    move-result v0

    if-eqz v0, :cond_104

    if-eqz v5, :cond_104

    .line 92
    iget-object v0, p0, Lcom/bytedance/applog/a/d;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->i()Ljava/lang/Long;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_112

    .line 94
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_d0

    move-object v0, v1

    move v2, v4

    .line 105
    :goto_27
    if-eqz v2, :cond_106

    .line 106
    invoke-direct {p0, v0}, Lcom/bytedance/applog/a/d;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 107
    invoke-static {v6}, Lcom/bytedance/applog/a/d;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_ff

    .line 109
    const-string v7, "wifi_bssid"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    :goto_3d
    iget-object v6, p0, Lcom/bytedance/applog/a/d;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v6}, Lcom/bytedance/applog/b/h;->g()J

    move-result-wide v6

    const-wide/32 v8, 0x1499700

    add-long/2addr v6, v8

    .line 118
    if-nez v2, :cond_51

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_104

    .line 121
    :cond_51
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 122
    const-string v7, "magic_tag"

    const-string v8, "ss_app_log"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v7, "header"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v5, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 125
    const-string v5, "fingerprint"

    invoke-virtual {v6, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    iget-object v0, p0, Lcom/bytedance/applog/a/d;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/applog/a/d;->c:Lcom/bytedance/applog/b/i;

    .line 128
    invoke-virtual {v5}, Lcom/bytedance/applog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/applog/c/a;->a()Lcom/bytedance/applog/util/UriConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/applog/util/UriConfig;->getSettingUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getIAppParam()Lcom/bytedance/applog/IAppParam;

    move-result-object v8

    .line 127
    invoke-static {v0, v5, v7, v4, v8}, Lcom/bytedance/applog/c/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/IAppParam;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/bytedance/applog/c/a;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 130
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDataObserver()Lcom/bytedance/applog/IDataObserver;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/applog/a/d;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/applog/util/k;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_102

    move v0, v4

    :goto_9d
    invoke-interface {v6, v0, v5}, Lcom/bytedance/applog/IDataObserver;->onRemoteConfigGet(ZLorg/json/JSONObject;)V

    .line 132
    if-eqz v5, :cond_104

    .line 133
    iget-object v0, p0, Lcom/bytedance/applog/a/d;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->h()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    int-to-long v6, v0

    .line 135
    iget-object v0, p0, Lcom/bytedance/applog/a/d;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0, v5, v2, v1}, Lcom/bytedance/applog/b/h;->a(Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/bytedance/applog/a/d;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->h()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    int-to-long v0, v0

    .line 138
    cmp-long v0, v0, v6

    if-lez v0, :cond_cf

    iget v0, p0, Lcom/bytedance/applog/a/d;->d:I

    if-lez v0, :cond_cf

    .line 139
    iget v0, p0, Lcom/bytedance/applog/a/d;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/applog/a/d;->d:I

    .line 140
    invoke-virtual {p0}, Lcom/bytedance/applog/a/d;->d()Z

    move-result v4

    .line 146
    :cond_cf
    :goto_cf
    return v4

    .line 97
    :cond_d0
    iget-object v0, p0, Lcom/bytedance/applog/a/d;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->k()Ljava/lang/Long;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_10e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x1b7740

    add-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-ltz v0, :cond_10e

    .line 99
    iget-object v0, p0, Lcom/bytedance/applog/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/util/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_10b

    iget-object v2, p0, Lcom/bytedance/applog/a/d;->b:Lcom/bytedance/applog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/applog/b/h;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    move v2, v4

    .line 101
    goto/16 :goto_27

    :cond_ff
    move v2, v3

    .line 112
    goto/16 :goto_3d

    :cond_102
    move v0, v3

    .line 130
    goto :goto_9d

    :cond_104
    move v4, v3

    .line 146
    goto :goto_cf

    :cond_106
    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_3d

    :cond_10b
    move v2, v3

    goto/16 :goto_27

    :cond_10e
    move-object v0, v1

    move v2, v3

    goto/16 :goto_27

    :cond_112
    move-object v0, v1

    move v2, v3

    goto/16 :goto_3d
.end method

.method e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 334
    const-string v0, "c"

    return-object v0
.end method
