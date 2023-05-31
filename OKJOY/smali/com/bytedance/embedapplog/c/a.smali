.class public Lcom/bytedance/embedapplog/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lorg/json/JSONObject;

.field static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static f:Lcom/bytedance/embedapplog/util/UriConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "GET"

    aput-object v1, v0, v3

    const-string v1, "POST"

    aput-object v1, v0, v4

    sput-object v0, Lcom/bytedance/embedapplog/c/a;->d:[Ljava/lang/String;

    .line 202
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "aid"

    aput-object v1, v0, v3

    const-string v1, "app_version"

    aput-object v1, v0, v4

    const-string v1, "tt_data"

    aput-object v1, v0, v5

    const-string v1, "device_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/bytedance/embedapplog/c/a;->e:[Ljava/lang/String;

    .line 208
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "aid"

    aput-object v1, v0, v3

    const-string v1, "version_code"

    aput-object v1, v0, v4

    const-string v1, "ab_client"

    aput-object v1, v0, v5

    const-string v1, "ab_version"

    aput-object v1, v0, v2

    const-string v1, "ab_feature"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "ab_group"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "iid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "device_platform"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/embedapplog/c/a;->b:[Ljava/lang/String;

    .line 213
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "tt_data"

    aput-object v1, v0, v3

    const-string v1, "device_platform"

    aput-object v1, v0, v4

    sput-object v0, Lcom/bytedance/embedapplog/c/a;->c:[Ljava/lang/String;

    .line 364
    invoke-static {v3}, Lcom/bytedance/embedapplog/util/UriConfig;->creatUriConfig(I)Lcom/bytedance/embedapplog/util/UriConfig;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/c/a;->f:Lcom/bytedance/embedapplog/util/UriConfig;

    return-void
.end method

.method public static a([Ljava/lang/String;[BLcom/bytedance/embedapplog/b/h;)I
    .registers 13

    .prologue
    const/16 v1, 0xc8

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 451
    new-instance v5, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 452
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 453
    const-string v0, "Content-Type"

    const-string v3, "application/octet-stream;tt-data=a"

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :goto_17
    array-length v6, p0

    move v3, v2

    move-object v0, v4

    :goto_1a
    if-ge v3, v6, :cond_29

    aget-object v0, p0, v3

    .line 460
    const/4 v7, 0x1

    invoke-static {v7, v0, v5, p1}, Lcom/bytedance/embedapplog/c/a;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b6

    .line 469
    :cond_29
    :try_start_29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10a

    .line 470
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_34} :catch_d0

    .line 471
    :try_start_34
    const-string v0, "http_code"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 472
    if-ne v0, v1, :cond_59

    .line 473
    const-string v0, "ss_app_log"

    const-string v5, "magic_tag"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 474
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

    .line 493
    :goto_5b
    if-ne v3, v1, :cond_107

    .line 495
    :try_start_5d
    const-string v0, "server_time"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 496
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_81

    .line 497
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 498
    const-string v7, "server_time"

    invoke-virtual {v6, v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long/2addr v0, v8

    .line 500
    const-string v7, "local_time"

    invoke-virtual {v6, v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 501
    sput-object v6, Lcom/bytedance/embedapplog/c/a;->a:Lorg/json/JSONObject;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_81} :catch_d8

    .line 507
    :cond_81
    :goto_81
    const-string v0, "blacklist"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 508
    if-eqz v5, :cond_107

    .line 509
    const-string v0, "v1"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 510
    if-eqz v6, :cond_dd

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 511
    :goto_95
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(I)V

    move v1, v2

    .line 512
    :goto_9b
    if-ge v1, v0, :cond_df

    .line 513
    invoke-virtual {v6, v1, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 514
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_aa

    .line 515
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    .line 455
    :cond_ad
    const-string v0, "Content-Type"

    const-string v3, "application/json; charset=utf-8"

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 459
    :cond_b6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1a

    .line 479
    :cond_ba
    :try_start_ba
    const-string v0, "101"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_59

    .line 483
    :cond_c5
    const-string v0, "102"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_ce
    .catch Lorg/json/JSONException; {:try_start_ba .. :try_end_ce} :catch_108

    move-result v0

    goto :goto_59

    .line 489
    :catch_d0
    move-exception v0

    move-object v3, v4

    .line 490
    :goto_d2
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    move-object v5, v3

    move v3, v2

    goto :goto_5b

    .line 503
    :catch_d8
    move-exception v0

    .line 504
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_81

    :cond_dd
    move v0, v2

    .line 510
    goto :goto_95

    .line 519
    :cond_df
    const-string v0, "v3"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 520
    if-eqz v1, :cond_102

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 521
    :goto_eb
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 522
    :goto_f0
    if-ge v2, v0, :cond_104

    .line 523
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 524
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_ff

    .line 525
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_ff
    add-int/lit8 v2, v2, 0x1

    goto :goto_f0

    :cond_102
    move v0, v2

    .line 520
    goto :goto_eb

    .line 529
    :cond_104
    invoke-virtual {p2, v7, v5}, Lcom/bytedance/embedapplog/b/h;->a(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 532
    :cond_107
    return v3

    .line 489
    :catch_108
    move-exception v0

    goto :goto_d2

    :cond_10a
    move v0, v2

    move-object v3, v4

    goto/16 :goto_59
.end method

.method public static a()Lcom/bytedance/embedapplog/util/UriConfig;
    .registers 1

    .prologue
    .line 371
    sget-object v0, Lcom/bytedance/embedapplog/c/a;->f:Lcom/bytedance/embedapplog/util/UriConfig;

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

    .line 267
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v0, :cond_92

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    if-eqz p2, :cond_79

    .line 270
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

    .line 271
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

    .line 272
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

    invoke-static {v0, v3}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 276
    :cond_79
    if-eqz p3, :cond_92

    .line 277
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

    invoke-static {v0, v3}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    :cond_92
    :try_start_92
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 288
    if-nez p0, :cond_11b

    .line 289
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 295
    :goto_a3
    sget-object v1, Lcom/bytedance/embedapplog/c/a;->d:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 296
    if-eqz p2, :cond_13a

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13a

    .line 297
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

    .line 298
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

    .line 299
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

    .line 342
    :catch_ee
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v0, v3

    .line 343
    :goto_f3
    :try_start_f3
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_226

    .line 345
    if-eqz v4, :cond_fb

    .line 347
    :try_start_f8
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_20f

    .line 351
    :cond_fb
    :goto_fb
    if-eqz v2, :cond_100

    .line 353
    :try_start_fd
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_212

    .line 358
    :cond_100
    :goto_100
    sget-boolean v1, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v1, :cond_11a

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    :cond_11a
    return-object v0

    .line 290
    :cond_11b
    if-ne p0, v5, :cond_12f

    .line 291
    const/4 v1, 0x1

    :try_start_11e
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_11e .. :try_end_121} :catch_ee
    .catchall {:try_start_11e .. :try_end_121} :catchall_122

    goto :goto_a3

    .line 345
    :catchall_122
    move-exception v0

    move-object v4, v3

    :goto_124
    if-eqz v4, :cond_129

    .line 347
    :try_start_126
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_215

    .line 351
    :cond_129
    :goto_129
    if-eqz v3, :cond_12e

    .line 353
    :try_start_12b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_218

    .line 355
    :cond_12e
    :goto_12e
    throw v0

    .line 293
    :cond_12f
    const/4 v1, 0x0

    :try_start_130
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_a3

    .line 301
    :cond_135
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_ba

    .line 306
    :cond_13a
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-eqz p3, :cond_23f

    array-length v1, p3

    if-lez v1, :cond_23f

    .line 308
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14f
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_14f} :catch_ee
    .catchall {:try_start_130 .. :try_end_14f} :catchall_122

    .line 309
    :try_start_14f
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 310
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 311
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_158
    .catch Ljava/lang/Throwable; {:try_start_14f .. :try_end_158} :catch_22a
    .catchall {:try_start_14f .. :try_end_158} :catchall_21b

    move-object v4, v1

    .line 313
    :goto_159
    :try_start_159
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 314
    if-ne v2, v6, :cond_1e0

    .line 315
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 316
    const/16 v2, 0x2800

    if-ge v1, v2, :cond_1d9

    .line 317
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 318
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 320
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_186
    .catch Ljava/lang/Throwable; {:try_start_159 .. :try_end_186} :catch_1b0
    .catchall {:try_start_159 .. :try_end_186} :catchall_21f

    .line 324
    :goto_186
    :try_start_186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 326
    :goto_18f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b6

    .line 327
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19e
    .catch Ljava/lang/Throwable; {:try_start_186 .. :try_end_19e} :catch_19f
    .catchall {:try_start_186 .. :try_end_19e} :catchall_222

    goto :goto_18f

    .line 342
    :catch_19f
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_f3

    .line 322
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

    .line 342
    :catch_1b0
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v0, v3

    goto/16 :goto_f3

    .line 330
    :cond_1b6
    :try_start_1b6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1b9
    .catch Ljava/lang/Throwable; {:try_start_1b6 .. :try_end_1b9} :catch_19f
    .catchall {:try_start_1b6 .. :try_end_1b9} :catchall_222

    move-result-object v2

    .line 331
    :try_start_1ba
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 332
    const-string v5, "http_code"

    const/16 v6, 0xc8

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1c9
    .catch Ljava/lang/Throwable; {:try_start_1ba .. :try_end_1c9} :catch_231
    .catchall {:try_start_1ba .. :try_end_1c9} :catchall_222

    move-result-object v0

    .line 345
    :goto_1ca
    if-eqz v4, :cond_1cf

    .line 347
    :try_start_1cc
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1cf} :catch_20d

    .line 351
    :cond_1cf
    :goto_1cf
    if-eqz v1, :cond_100

    .line 353
    :try_start_1d1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1d4
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_1d4} :catch_1d6

    goto/16 :goto_100

    .line 354
    :catch_1d6
    move-exception v1

    goto/16 :goto_100

    .line 335
    :cond_1d9
    const/4 v0, 0x0

    :try_start_1da
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    move-object v0, v3

    move-object v1, v3

    goto :goto_1ca

    .line 338
    :cond_1e0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 339
    const-string v1, "http_code"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1ee
    .catch Ljava/lang/Throwable; {:try_start_1da .. :try_end_1ee} :catch_1b0
    .catchall {:try_start_1da .. :try_end_1ee} :catchall_21f

    move-result-object v1

    .line 340
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

    .line 348
    :catch_20d
    move-exception v2

    goto :goto_1cf

    :catch_20f
    move-exception v1

    goto/16 :goto_fb

    .line 354
    :catch_212
    move-exception v1

    goto/16 :goto_100

    .line 348
    :catch_215
    move-exception v1

    goto/16 :goto_129

    .line 354
    :catch_218
    move-exception v1

    goto/16 :goto_12e

    .line 345
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

    .line 342
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

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    .line 218
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    :cond_6
    :goto_6
    return-object p0

    .line 221
    :cond_7
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 226
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 227
    sget-object v4, Lcom/bytedance/embedapplog/c/a;->e:[Ljava/lang/String;

    array-length v5, v4

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v5, :cond_37

    aget-object v6, v4, v0

    .line 228
    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_34

    .line 230
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 233
    :cond_37
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 234
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 235
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/util/Pair;

    .line 236
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_42

    .line 238
    :cond_5b
    invoke-static {v2}, Lcom/bytedance/embedapplog/AppLog;->toEncryptByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 239
    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 240
    const-string v1, "tt_info"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 241
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 246
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    :goto_6
    return-object p0

    .line 249
    :cond_7
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 250
    new-instance v2, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 251
    array-length v3, p1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_27

    aget-object v4, p1, v0

    .line 252
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    .line 254
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 257
    :cond_27
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 258
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 259
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 260
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_36

    .line 262
    :cond_4d
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 375
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 376
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 377
    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream;tt-data=a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :goto_13
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/bytedance/embedapplog/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/embedapplog/AppLog;->toEncryptByte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/bytedance/embedapplog/c/a;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object v2

    .line 382
    const/4 v1, 0x0

    .line 383
    if-eqz v2, :cond_39

    .line 385
    :try_start_27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_2c} :catch_35

    .line 390
    :goto_2c
    return-object v0

    .line 379
    :cond_2d
    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 386
    :catch_35
    move-exception v0

    .line 387
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_39
    move-object v0, v1

    goto :goto_2c
.end method

.method public static a(I)V
    .registers 2

    .prologue
    .line 367
    invoke-static {p0}, Lcom/bytedance/embedapplog/util/UriConfig;->creatUriConfig(I)Lcom/bytedance/embedapplog/util/UriConfig;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/c/a;->f:Lcom/bytedance/embedapplog/util/UriConfig;

    .line 368
    return-void
.end method

.method protected static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 437
    if-eqz p0, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 448
    :cond_e
    :goto_e
    return-void

    .line 440
    :cond_f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_32

    .line 442
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
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

    .line 444
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

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 398
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v5, v7

    const v7, 0x4a5bba00    # 3600000.0f

    div-float/2addr v5, v7

    .line 399
    cmpg-float v7, v5, v1

    if-gez v7, :cond_bc

    .line 402
    :goto_20
    cmpl-float v5, v1, v0

    if-lez v5, :cond_b9

    .line 405
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

    invoke-static {v6, v1, v0}, Lcom/bytedance/embedapplog/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "sim_serial_number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 410
    if-eqz v7, :cond_85

    .line 411
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

    .line 412
    :goto_53
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_80

    .line 413
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v8, "sim_serial_number"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
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

    .line 412
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53

    .line 416
    :cond_80
    const-string v0, "sim_serial_number"

    invoke-static {v6, v0, v5}, Lcom/bytedance/embedapplog/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_85} :catch_ac

    .line 423
    :cond_85
    :goto_85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/embedapplog/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v3, v0, v4, v4}, Lcom/bytedance/embedapplog/c/a;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object v1

    .line 426
    if-eqz v1, :cond_b5

    .line 428
    :try_start_93
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_98
    .catch Lorg/json/JSONException; {:try_start_93 .. :try_end_98} :catch_b1

    .line 433
    :goto_98
    if-eqz v0, :cond_b7

    const-string v1, "success"

    const-string v4, "message"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    move v0, v2

    :goto_ab
    return v0

    .line 419
    :catch_ac
    move-exception v0

    .line 420
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_85

    .line 429
    :catch_b1
    move-exception v0

    .line 430
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_b5
    move-object v0, v4

    goto :goto_98

    :cond_b7
    move v0, v3

    .line 433
    goto :goto_ab

    :cond_b9
    move v0, v1

    goto/16 :goto_24

    :cond_bc
    move v1, v5

    goto/16 :goto_20
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, p0, v0, v1}, Lcom/bytedance/embedapplog/c/a;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object v3

    .line 538
    if-eqz v3, :cond_36

    .line 540
    :try_start_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_15} :catch_32

    move-object v3, v1

    .line 545
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

    .line 546
    :goto_29
    if-eqz v1, :cond_31

    .line 547
    const-string v0, "config"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 549
    :cond_31
    return-object v0

    .line 541
    :catch_32
    move-exception v1

    .line 542
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_36
    move-object v3, v0

    goto :goto_16

    .line 545
    :cond_38
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public static d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 554
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, p0, v0, v1}, Lcom/bytedance/embedapplog/c/a;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object v3

    .line 556
    if-eqz v3, :cond_36

    .line 558
    :try_start_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_15} :catch_32

    move-object v3, v1

    .line 563
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

    .line 564
    :goto_29
    if-eqz v1, :cond_31

    .line 565
    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 567
    :cond_31
    return-object v0

    .line 559
    :catch_32
    move-exception v1

    .line 560
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_36
    move-object v3, v0

    goto :goto_16

    .line 563
    :cond_38
    const/4 v1, 0x0

    goto :goto_29
.end method
