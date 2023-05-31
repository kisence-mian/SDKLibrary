.class public Lcom/bytedance/applog/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lorg/json/JSONObject;

.field private static final b:[Ljava/lang/String;

.field private static c:Lcom/bytedance/applog/util/UriConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GET"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "POST"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/applog/c/a;->b:[Ljava/lang/String;

    .line 290
    invoke-static {v3}, Lcom/bytedance/applog/util/UriConfig;->creatUriConfig(I)Lcom/bytedance/applog/util/UriConfig;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/c/a;->c:Lcom/bytedance/applog/util/UriConfig;

    return-void
.end method

.method public static a([Ljava/lang/String;[BLcom/bytedance/applog/b/h;)I
    .registers 13

    .prologue
    const/16 v1, 0xc8

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 370
    new-instance v5, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 371
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getEncryptAndCompress()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 372
    const-string v0, "Content-Type"

    const-string v3, "application/octet-stream;tt-data=a"

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :goto_17
    array-length v6, p0

    move v3, v2

    move-object v0, v4

    :goto_1a
    if-ge v3, v6, :cond_29

    aget-object v0, p0, v3

    .line 379
    const/4 v7, 0x1

    invoke-static {v7, v0, v5, p1}, Lcom/bytedance/applog/c/a;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b6

    .line 388
    :cond_29
    :try_start_29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10a

    .line 389
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_34} :catch_d0

    .line 390
    :try_start_34
    const-string v0, "http_code"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 391
    if-ne v0, v1, :cond_59

    .line 392
    const-string v0, "ss_app_log"

    const-string v5, "magic_tag"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 393
    const-string v0, "success"

    const-string v5, "message"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_55} :catch_108

    move-result v0

    if-eqz v0, :cond_ba

    move v0, v1

    :cond_59
    :goto_59
    move-object v5, v3

    move v3, v0

    .line 412
    :goto_5b
    if-ne v3, v1, :cond_107

    .line 414
    :try_start_5d
    const-string v0, "server_time"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 415
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_81

    .line 416
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 417
    const-string v7, "server_time"

    invoke-virtual {v6, v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long/2addr v0, v8

    .line 419
    const-string v7, "local_time"

    invoke-virtual {v6, v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 420
    sput-object v6, Lcom/bytedance/applog/c/a;->a:Lorg/json/JSONObject;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_81} :catch_d8

    .line 426
    :cond_81
    :goto_81
    const-string v0, "blacklist"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 427
    if-eqz v5, :cond_107

    .line 428
    const-string v0, "v1"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 429
    if-eqz v6, :cond_dd

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 430
    :goto_95
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(I)V

    move v1, v2

    .line 431
    :goto_9b
    if-ge v1, v0, :cond_df

    .line 432
    invoke-virtual {v6, v1, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 433
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_aa

    .line 434
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    .line 374
    :cond_ad
    const-string v0, "Content-Type"

    const-string v3, "application/json; charset=utf-8"

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 378
    :cond_b6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1a

    .line 398
    :cond_ba
    :try_start_ba
    const-string v0, "101"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_59

    .line 402
    :cond_c5
    const-string v0, "102"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_ce
    .catch Lorg/json/JSONException; {:try_start_ba .. :try_end_ce} :catch_108

    move-result v0

    goto :goto_59

    .line 408
    :catch_d0
    move-exception v0

    move-object v3, v4

    .line 409
    :goto_d2
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    move-object v5, v3

    move v3, v2

    goto :goto_5b

    .line 422
    :catch_d8
    move-exception v0

    .line 423
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_81

    :cond_dd
    move v0, v2

    .line 429
    goto :goto_95

    .line 438
    :cond_df
    const-string v0, "v3"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 439
    if-eqz v1, :cond_102

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 440
    :goto_eb
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 441
    :goto_f0
    if-ge v2, v0, :cond_104

    .line 442
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 443
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_ff

    .line 444
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_ff
    add-int/lit8 v2, v2, 0x1

    goto :goto_f0

    :cond_102
    move v0, v2

    .line 439
    goto :goto_eb

    .line 448
    :cond_104
    invoke-virtual {p2, v7, v5}, Lcom/bytedance/applog/b/h;->a(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 451
    :cond_107
    return v3

    .line 408
    :catch_108
    move-exception v0

    goto :goto_d2

    :cond_10a
    move v0, v2

    move-object v3, v4

    goto/16 :goto_59
.end method

.method public static a()Lcom/bytedance/applog/util/UriConfig;
    .registers 1

    .prologue
    .line 297
    sget-object v0, Lcom/bytedance/applog/c/a;->c:Lcom/bytedance/applog/util/UriConfig;

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v6, 0xc8

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 193
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_92

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    if-eqz p2, :cond_79

    .line 196
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 197
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http headers key:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " value:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 202
    :cond_79
    if-eqz p3, :cond_92

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    :cond_92
    :try_start_92
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 214
    if-nez p0, :cond_11b

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 221
    :goto_a3
    sget-object v1, Lcom/bytedance/applog/c/a;->b:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 222
    if-eqz p2, :cond_13a

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13a

    .line 223
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ba
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_135

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_135

    .line 225
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_ed} :catch_ee
    .catchall {:try_start_92 .. :try_end_ed} :catchall_122

    goto :goto_ba

    .line 268
    :catch_ee
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v0, v3

    .line 269
    :goto_f3
    :try_start_f3
    invoke-static {v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_226

    .line 271
    if-eqz v4, :cond_fb

    .line 273
    :try_start_f8
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_20f

    .line 277
    :cond_fb
    :goto_fb
    if-eqz v2, :cond_100

    .line 279
    :try_start_fd
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_212

    .line 284
    :cond_100
    :goto_100
    sget-boolean v1, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v1, :cond_11a

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    :cond_11a
    return-object v0

    .line 216
    :cond_11b
    if-ne p0, v5, :cond_12f

    .line 217
    const/4 v1, 0x1

    :try_start_11e
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_11e .. :try_end_121} :catch_ee
    .catchall {:try_start_11e .. :try_end_121} :catchall_122

    goto :goto_a3

    .line 271
    :catchall_122
    move-exception v0

    move-object v4, v3

    :goto_124
    if-eqz v4, :cond_129

    .line 273
    :try_start_126
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_215

    .line 277
    :cond_129
    :goto_129
    if-eqz v3, :cond_12e

    .line 279
    :try_start_12b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_218

    .line 281
    :cond_12e
    :goto_12e
    throw v0

    .line 219
    :cond_12f
    const/4 v1, 0x0

    :try_start_130
    invoke-static {v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_a3

    .line 227
    :cond_135
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_ba

    .line 232
    :cond_13a
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-eqz p3, :cond_23f

    array-length v1, p3

    if-lez v1, :cond_23f

    .line 234
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14f
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_14f} :catch_ee
    .catchall {:try_start_130 .. :try_end_14f} :catchall_122

    .line 235
    :try_start_14f
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 236
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 237
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_158
    .catch Ljava/lang/Throwable; {:try_start_14f .. :try_end_158} :catch_22a
    .catchall {:try_start_14f .. :try_end_158} :catchall_21b

    move-object v4, v1

    .line 239
    :goto_159
    :try_start_159
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 240
    if-ne v2, v6, :cond_1e0

    .line 241
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 242
    const/16 v2, 0x2800

    if-ge v1, v2, :cond_1d9

    .line 243
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 244
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 246
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_186
    .catch Ljava/lang/Throwable; {:try_start_159 .. :try_end_186} :catch_1b0
    .catchall {:try_start_159 .. :try_end_186} :catchall_21f

    .line 250
    :goto_186
    :try_start_186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 252
    :goto_18f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b6

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19e
    .catch Ljava/lang/Throwable; {:try_start_186 .. :try_end_19e} :catch_19f
    .catchall {:try_start_186 .. :try_end_19e} :catchall_222

    goto :goto_18f

    .line 268
    :catch_19f
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_f3

    .line 248
    :cond_1a5
    :try_start_1a5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1af
    .catch Ljava/lang/Throwable; {:try_start_1a5 .. :try_end_1af} :catch_1b0
    .catchall {:try_start_1a5 .. :try_end_1af} :catchall_21f

    goto :goto_186

    .line 268
    :catch_1b0
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v0, v3

    goto/16 :goto_f3

    .line 256
    :cond_1b6
    :try_start_1b6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1b9
    .catch Ljava/lang/Throwable; {:try_start_1b6 .. :try_end_1b9} :catch_19f
    .catchall {:try_start_1b6 .. :try_end_1b9} :catchall_222

    move-result-object v2

    .line 257
    :try_start_1ba
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 258
    const-string v5, "http_code"

    const/16 v6, 0xc8

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1c9
    .catch Ljava/lang/Throwable; {:try_start_1ba .. :try_end_1c9} :catch_231
    .catchall {:try_start_1ba .. :try_end_1c9} :catchall_222

    move-result-object v0

    .line 271
    :goto_1ca
    if-eqz v4, :cond_1cf

    .line 273
    :try_start_1cc
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1cf} :catch_20d

    .line 277
    :cond_1cf
    :goto_1cf
    if-eqz v1, :cond_100

    .line 279
    :try_start_1d1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1d4
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_1d4} :catch_1d6

    goto/16 :goto_100

    .line 280
    :catch_1d6
    move-exception v1

    goto/16 :goto_100

    .line 261
    :cond_1d9
    const/4 v0, 0x0

    :try_start_1da
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    move-object v0, v3

    move-object v1, v3

    goto :goto_1ca

    .line 264
    :cond_1e0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 265
    const-string v1, "http_code"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1ee
    .catch Ljava/lang/Throwable; {:try_start_1da .. :try_end_1ee} :catch_1b0
    .catchall {:try_start_1da .. :try_end_1ee} :catchall_21f

    move-result-object v1

    .line 266
    :try_start_1ef
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HttpCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_20a
    .catch Ljava/lang/Throwable; {:try_start_1ef .. :try_end_20a} :catch_238
    .catchall {:try_start_1ef .. :try_end_20a} :catchall_21f

    move-object v0, v1

    move-object v1, v3

    goto :goto_1ca

    .line 274
    :catch_20d
    move-exception v2

    goto :goto_1cf

    :catch_20f
    move-exception v1

    goto/16 :goto_fb

    .line 280
    :catch_212
    move-exception v1

    goto/16 :goto_100

    .line 274
    :catch_215
    move-exception v1

    goto/16 :goto_129

    .line 280
    :catch_218
    move-exception v1

    goto/16 :goto_12e

    .line 271
    :catchall_21b
    move-exception v0

    move-object v4, v1

    goto/16 :goto_124

    :catchall_21f
    move-exception v0

    goto/16 :goto_124

    :catchall_222
    move-exception v0

    move-object v3, v1

    goto/16 :goto_124

    :catchall_226
    move-exception v0

    move-object v3, v2

    goto/16 :goto_124

    .line 268
    :catch_22a
    move-exception v0

    move-object v2, v3

    move-object v4, v1

    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_f3

    :catch_231
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_f3

    :catch_238
    move-exception v0

    move-object v2, v3

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_f3

    :cond_23f
    move-object v4, v3

    goto/16 :goto_159
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 301
    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/bytedance/applog/c/a;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object v2

    .line 303
    if-eqz v2, :cond_1a

    .line 305
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_15} :catch_16

    .line 310
    :goto_15
    return-object v0

    .line 306
    :catch_16
    move-exception v0

    .line 307
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1a
    move-object v0, v1

    goto :goto_15
.end method

.method public static a(I)V
    .registers 2

    .prologue
    .line 293
    invoke-static {p0}, Lcom/bytedance/applog/util/UriConfig;->creatUriConfig(I)Lcom/bytedance/applog/util/UriConfig;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/c/a;->c:Lcom/bytedance/applog/util/UriConfig;

    .line 294
    return-void
.end method

.method protected static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 356
    if-eqz p0, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 367
    :cond_e
    :goto_e
    return-void

    .line 359
    :cond_f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_32

    .line 361
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :goto_20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 363
    :cond_32
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20
.end method

.method public static b(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, -0x3ec00000    # -12.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 318
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v5, v7

    const v7, 0x4a5bba00    # 3600000.0f

    div-float/2addr v5, v7

    .line 319
    cmpg-float v7, v5, v1

    if-gez v7, :cond_b8

    .line 322
    :goto_20
    cmpl-float v5, v1, v0

    if-lez v5, :cond_b5

    .line 325
    :goto_24
    const-string v1, "timezone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lcom/bytedance/applog/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "sim_serial_number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 330
    if-eqz v7, :cond_85

    .line 331
    const/4 v0, 0x0

    :try_start_45
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "sim_serial_number"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move-object v5, v0

    .line 332
    :goto_53
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_80

    .line 333
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v8, "sim_serial_number"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 332
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53

    .line 336
    :cond_80
    const-string v0, "sim_serial_number"

    invoke-static {v6, v0, v5}, Lcom/bytedance/applog/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_85} :catch_a8

    .line 343
    :cond_85
    :goto_85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4, v4}, Lcom/bytedance/applog/c/a;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_b1

    .line 347
    :try_start_8f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_94} :catch_ad

    .line 352
    :goto_94
    if-eqz v0, :cond_b3

    const-string v1, "success"

    const-string v4, "message"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    move v0, v2

    :goto_a7
    return v0

    .line 339
    :catch_a8
    move-exception v0

    .line 340
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_85

    .line 348
    :catch_ad
    move-exception v0

    .line 349
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_b1
    move-object v0, v4

    goto :goto_94

    :cond_b3
    move v0, v3

    .line 352
    goto :goto_a7

    :cond_b5
    move v0, v1

    goto/16 :goto_24

    :cond_b8
    move v1, v5

    goto/16 :goto_20
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 455
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, p0, v0, v1}, Lcom/bytedance/applog/c/a;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object v3

    .line 457
    if-eqz v3, :cond_36

    .line 459
    :try_start_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_15} :catch_32

    move-object v3, v1

    .line 464
    :goto_16
    if-eqz v3, :cond_38

    const-string v1, "ss_app_log"

    const-string v4, "magic_tag"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    move v1, v2

    .line 465
    :goto_29
    if-eqz v1, :cond_31

    .line 466
    const-string v0, "config"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 468
    :cond_31
    return-object v0

    .line 460
    :catch_32
    move-exception v1

    .line 461
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_36
    move-object v3, v0

    goto :goto_16

    .line 464
    :cond_38
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public static d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 473
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, p0, v0, v1}, Lcom/bytedance/applog/c/a;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object v3

    .line 475
    if-eqz v3, :cond_36

    .line 477
    :try_start_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_15} :catch_32

    move-object v3, v1

    .line 482
    :goto_16
    if-eqz v3, :cond_38

    const-string v1, "success"

    const-string v4, "message"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    move v1, v2

    .line 483
    :goto_29
    if-eqz v1, :cond_31

    .line 484
    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 486
    :cond_31
    return-object v0

    .line 478
    :catch_32
    move-exception v1

    .line 479
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_36
    move-object v3, v0

    goto :goto_16

    .line 482
    :cond_38
    const/4 v1, 0x0

    goto :goto_29
.end method
