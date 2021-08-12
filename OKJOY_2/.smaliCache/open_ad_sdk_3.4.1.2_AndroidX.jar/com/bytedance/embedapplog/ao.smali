.class public Lcom/bytedance/embedapplog/ao;
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
    .registers 11

    .line 39
    const-string v0, "GET"

    const-string v1, "POST"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/ao;->d:[Ljava/lang/String;

    .line 202
    const-string v0, "aid"

    const-string v1, "app_version"

    const-string v2, "tt_data"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/ao;->e:[Ljava/lang/String;

    .line 208
    const-string v3, "aid"

    const-string v4, "version_code"

    const-string v5, "ab_client"

    const-string v6, "ab_version"

    const-string v7, "ab_feature"

    const-string v8, "ab_group"

    const-string v9, "iid"

    const-string v10, "device_platform"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/ao;->b:[Ljava/lang/String;

    .line 213
    const-string v0, "device_platform"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/ao;->c:[Ljava/lang/String;

    .line 364
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/UriConfig;->creatUriConfig(I)Lcom/bytedance/embedapplog/util/UriConfig;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/ao;->f:Lcom/bytedance/embedapplog/util/UriConfig;

    return-void
.end method

.method public static a([Ljava/lang/String;[BLcom/bytedance/embedapplog/z;)I
    .registers 12

    .line 451
    const-string v0, "server_time"

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 452
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v2

    const-string v3, "Content-Type"

    if-eqz v2, :cond_16

    .line 453
    const-string v2, "application/octet-stream;tt-data=a"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 455
    :cond_16
    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :goto_1b
    nop

    .line 459
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move v5, v4

    :goto_21
    if-ge v5, v2, :cond_34

    aget-object v6, p0, v5

    .line 460
    const/4 v7, 0x1

    invoke-static {v7, v6, v1, p1}, Lcom/bytedance/embedapplog/ao;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object v6

    .line 461
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_31

    .line 462
    goto :goto_34

    .line 459
    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 466
    :cond_34
    :goto_34
    nop

    .line 467
    nop

    .line 469
    const/16 p0, 0xc8

    :try_start_38
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_82

    .line 470
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_43} :catch_85

    .line 471
    :try_start_43
    const-string v1, "http_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 472
    if-ne v1, p0, :cond_7f

    .line 473
    const-string v1, "ss_app_log"

    const-string v2, "magic_tag"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 474
    const-string v1, "success"

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 476
    move v1, p0

    goto :goto_84

    .line 479
    :cond_69
    const-string v1, "101"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_84

    .line 483
    :cond_74
    const-string v1, "102"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_7e} :catch_80

    goto :goto_84

    .line 486
    :cond_7f
    goto :goto_84

    .line 489
    :catch_80
    move-exception v1

    goto :goto_87

    .line 469
    :cond_82
    move-object p1, v3

    move v1, v4

    .line 491
    :goto_84
    goto :goto_8b

    .line 489
    :catch_85
    move-exception v1

    move-object p1, v3

    .line 490
    :goto_87
    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    move v1, v4

    .line 493
    :goto_8b
    if-ne v1, p0, :cond_109

    .line 495
    :try_start_8d
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 496
    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-lez p0, :cond_ad

    .line 497
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 498
    invoke-virtual {p0, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 500
    const-string v0, "local_time"

    invoke-virtual {p0, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 501
    sput-object p0, Lcom/bytedance/embedapplog/ao;->a:Lorg/json/JSONObject;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_ad} :catch_ae

    .line 505
    :cond_ad
    goto :goto_b2

    .line 503
    :catch_ae
    move-exception p0

    .line 504
    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 507
    :goto_b2
    const-string p0, "blacklist"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 508
    if-eqz p0, :cond_109

    .line 509
    const-string p1, "v1"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 510
    if-eqz p1, :cond_c7

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_c8

    :cond_c7
    move v0, v4

    .line 511
    :goto_c8
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 512
    move v5, v4

    :goto_ce
    if-ge v5, v0, :cond_e0

    .line 513
    invoke-virtual {p1, v5, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 514
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_dd

    .line 515
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_dd
    add-int/lit8 v5, v5, 0x1

    goto :goto_ce

    .line 519
    :cond_e0
    const-string p1, "v3"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 520
    if-eqz p0, :cond_ed

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    goto :goto_ee

    :cond_ed
    move p1, v4

    .line 521
    :goto_ee
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    .line 522
    nop

    :goto_f4
    if-ge v4, p1, :cond_106

    .line 523
    invoke-virtual {p0, v4, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 524
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_103

    .line 525
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_103
    add-int/lit8 v4, v4, 0x1

    goto :goto_f4

    .line 529
    :cond_106
    invoke-virtual {p2, v2, v0}, Lcom/bytedance/embedapplog/z;->a(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 532
    :cond_109
    return v1
.end method

.method public static a()Lcom/bytedance/embedapplog/util/UriConfig;
    .registers 1

    .line 371
    sget-object v0, Lcom/bytedance/embedapplog/ao;->f:Lcom/bytedance/embedapplog/util/UriConfig;

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 267
    const-string v0, "gzip"

    sget-boolean v1, Lcom/bytedance/embedapplog/bo;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_91

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    if-eqz p2, :cond_78

    .line 270
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 271
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_77

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_77

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http headers key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    :cond_77
    goto :goto_27

    .line 276
    :cond_78
    if-eqz p3, :cond_91

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http data length:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    :cond_91
    nop

    .line 282
    nop

    .line 283
    nop

    .line 286
    :try_start_94
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 288
    if-nez p0, :cond_a6

    .line 289
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_b0

    .line 290
    :cond_a6
    const/4 v1, 0x1

    if-ne p0, v1, :cond_ad

    .line 291
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_b0

    .line 293
    :cond_ad
    invoke-static {v2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 295
    :goto_b0
    sget-object v1, Lcom/bytedance/embedapplog/ao;->d:[Ljava/lang/String;

    aget-object p0, v1, p0

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 296
    if-eqz p2, :cond_ff

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_ff

    .line 297
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ff

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fb

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fb

    .line 299
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fe

    .line 301
    :cond_fb
    invoke-static {v2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 303
    :goto_fe
    goto :goto_c7

    .line 306
    :cond_ff
    const-string p0, "Accept-Encoding"

    invoke-virtual {p1, p0, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-eqz p3, :cond_11c

    array-length p0, p3

    if-lez p0, :cond_11c

    .line 308
    new-instance p0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_112
    .catchall {:try_start_94 .. :try_end_112} :catchall_1db

    .line 309
    :try_start_112
    invoke-virtual {p0, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 310
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V

    .line 311
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_11d

    .line 313
    :cond_11c
    move-object p0, v2

    :goto_11d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2
    :try_end_121
    .catchall {:try_start_112 .. :try_end_121} :catchall_1d4

    .line 314
    const-string p3, "http_code"

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_195

    .line 315
    :try_start_127
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p2

    .line 316
    const/16 v3, 0x2800

    if-ge p2, v3, :cond_18f

    .line 317
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 318
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14d

    .line 320
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_157

    .line 322
    :cond_14d
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_157
    .catchall {:try_start_127 .. :try_end_157} :catchall_1d4

    .line 324
    :goto_157
    :try_start_157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 326
    :goto_160
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_170

    .line 327
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_160

    .line 330
    :cond_170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_174
    .catchall {:try_start_157 .. :try_end_174} :catchall_187

    .line 331
    :try_start_174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_180
    .catchall {:try_start_174 .. :try_end_180} :catchall_181

    .line 334
    goto :goto_194

    .line 342
    :catchall_181
    move-exception p3

    move-object v6, p1

    move-object p1, p0

    move-object p0, p3

    move-object p3, p2

    goto :goto_18c

    :catchall_187
    move-exception p2

    move-object p3, v2

    move-object v6, p1

    move-object p1, p0

    move-object p0, p2

    :goto_18c
    move-object p2, v6

    goto/16 :goto_1df

    .line 335
    :cond_18f
    :try_start_18f
    invoke-static {v2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    move-object p1, v2

    move-object p2, p1

    .line 337
    :goto_194
    goto :goto_1bf

    .line 338
    :cond_195
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 339
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1a2
    .catchall {:try_start_18f .. :try_end_1a2} :catchall_1d4

    .line 340
    :try_start_1a2
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1bd
    .catchall {:try_start_1a2 .. :try_end_1bd} :catchall_1ce

    move-object p2, p1

    move-object p1, v2

    .line 345
    :goto_1bf
    if-eqz p0, :cond_1c6

    .line 347
    :try_start_1c1
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1c4} :catch_1c5

    .line 349
    goto :goto_1c6

    .line 348
    :catch_1c5
    move-exception p0

    .line 351
    :cond_1c6
    :goto_1c6
    if-eqz p1, :cond_1f2

    .line 353
    :try_start_1c8
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1cb} :catch_1cc

    .line 355
    :goto_1cb
    goto :goto_1f2

    .line 354
    :catch_1cc
    move-exception p0

    goto :goto_1cb

    .line 342
    :catchall_1ce
    move-exception p2

    move-object p3, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v2

    goto :goto_1df

    :catchall_1d4
    move-exception p1

    move-object p2, v2

    move-object p3, p2

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_1df

    :catchall_1db
    move-exception p0

    move-object p1, v2

    move-object p2, p1

    move-object p3, p2

    .line 343
    :goto_1df
    :try_start_1df
    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V
    :try_end_1e2
    .catchall {:try_start_1df .. :try_end_1e2} :catchall_20d

    .line 345
    if-eqz p1, :cond_1e9

    .line 347
    :try_start_1e4
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_1e8

    .line 349
    goto :goto_1e9

    .line 348
    :catch_1e8
    move-exception p0

    .line 351
    :cond_1e9
    :goto_1e9
    if-eqz p2, :cond_1f1

    .line 353
    :try_start_1eb
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_1ee
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_1ee} :catch_1ef

    .line 355
    :goto_1ee
    goto :goto_1f1

    .line 354
    :catch_1ef
    move-exception p0

    goto :goto_1ee

    .line 358
    :cond_1f1
    :goto_1f1
    move-object p2, p3

    :cond_1f2
    :goto_1f2
    sget-boolean p0, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz p0, :cond_20c

    .line 359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "http response: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    :cond_20c
    return-object p2

    .line 345
    :catchall_20d
    move-exception p0

    if-eqz p1, :cond_215

    .line 347
    :try_start_210
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_213
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_213} :catch_214

    .line 349
    goto :goto_215

    .line 348
    :catch_214
    move-exception p1

    .line 351
    :cond_215
    :goto_215
    if-eqz p2, :cond_21c

    .line 353
    :try_start_217
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_21a
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_21a} :catch_21b

    .line 355
    goto :goto_21c

    .line 354
    :catch_21b
    move-exception p1

    .line 355
    :cond_21c
    :goto_21c
    throw p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 218
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 219
    return-object p0

    .line 221
    :cond_7
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v0

    if-nez v0, :cond_e

    .line 222
    return-object p0

    .line 224
    :cond_e
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    sget-object v2, Lcom/bytedance/embedapplog/ao;->e:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v3, :cond_38

    aget-object v5, v2, v4

    .line 228
    invoke-virtual {p0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 229
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 230
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 233
    :cond_38
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 234
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 235
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 236
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 237
    goto :goto_43

    .line 238
    :cond_5b
    invoke-static {v0}, Lcom/bytedance/embedapplog/AppLog;->toEncryptByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 239
    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 240
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "tt_info"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 241
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 242
    return-object p0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 246
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 247
    return-object p0

    .line 249
    :cond_7
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 250
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 251
    array-length v1, p1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_27

    aget-object v3, p1, v2

    .line 252
    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 254
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 257
    :cond_27
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 258
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 259
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 261
    goto :goto_36

    .line 262
    :cond_4c
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .line 375
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 376
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v1

    const-string v2, "Content-Type"

    if-eqz v1, :cond_14

    .line 377
    const-string v1, "application/octet-stream;tt-data=a"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 379
    :cond_14
    const-string v1, "application/json; charset=utf-8"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :goto_19
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/bytedance/embedapplog/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/embedapplog/AppLog;->toEncryptByte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v1, p0, v0, p1}, Lcom/bytedance/embedapplog/ao;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object p0

    .line 382
    const/4 p1, 0x0

    .line 383
    if-eqz p0, :cond_38

    .line 385
    :try_start_2d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_32} :catch_34

    .line 388
    move-object p1, v0

    goto :goto_38

    .line 386
    :catch_34
    move-exception p0

    .line 387
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 390
    :cond_38
    :goto_38
    return-object p1
.end method

.method public static a(I)V
    .registers 1

    .line 367
    invoke-static {p0}, Lcom/bytedance/embedapplog/util/UriConfig;->creatUriConfig(I)Lcom/bytedance/embedapplog/util/UriConfig;

    move-result-object p0

    sput-object p0, Lcom/bytedance/embedapplog/ao;->f:Lcom/bytedance/embedapplog/util/UriConfig;

    .line 368
    return-void
.end method

.method protected static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 437
    if-eqz p0, :cond_38

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_38

    .line 440
    :cond_f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_21

    .line 442
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 444
    :cond_21
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :goto_26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    return-void

    .line 438
    :cond_38
    :goto_38
    return-void
.end method

.method public static b(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 10

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    .line 398
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p0, v1

    const v1, 0x4a5bba00    # 3600000.0f

    div-float/2addr p0, v1

    .line 399
    const/high16 v1, -0x3ec00000    # -12.0f

    cmpg-float v2, p0, v1

    if-gez v2, :cond_1c

    .line 400
    move p0, v1

    .line 402
    :cond_1c
    const/high16 v1, 0x41400000    # 12.0f

    cmpl-float v2, p0, v1

    if-lez v2, :cond_23

    .line 403
    move p0, v1

    .line 405
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "timezone"

    invoke-static {v0, v2, p0}, Lcom/bytedance/embedapplog/ao;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string p0, "sim_serial_number"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 408
    nop

    .line 410
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_84

    .line 411
    :try_start_46
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 412
    move v5, v2

    :goto_51
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7b

    .line 413
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    invoke-virtual {v6, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 414
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 412
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 416
    :cond_7b
    invoke-static {v0, p0, v4}, Lcom/bytedance/embedapplog/ao;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_7e} :catch_7f

    goto :goto_84

    .line 419
    :catch_7f
    move-exception p0

    .line 420
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_85

    .line 421
    :cond_84
    :goto_84
    nop

    .line 423
    :goto_85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/embedapplog/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 424
    const/4 p1, 0x0

    invoke-static {v3, p0, p1, p1}, Lcom/bytedance/embedapplog/ao;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object p0

    .line 425
    nop

    .line 426
    if-eqz p0, :cond_a0

    .line 428
    :try_start_95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_95 .. :try_end_9a} :catch_9c

    .line 431
    move-object p1, v0

    goto :goto_a0

    .line 429
    :catch_9c
    move-exception p0

    .line 430
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 433
    :cond_a0
    :goto_a0
    if-eqz p1, :cond_b1

    const-string p0, "message"

    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "success"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b1

    goto :goto_b2

    :cond_b1
    move v2, v3

    :goto_b2
    return v2
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .line 536
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/embedapplog/AppLog;->toEncryptByte(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/bytedance/embedapplog/ao;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object p0

    .line 537
    nop

    .line 538
    if-eqz p0, :cond_1b

    .line 540
    :try_start_11
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_17

    .line 543
    goto :goto_1c

    .line 541
    :catch_17
    move-exception p0

    .line 542
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 545
    :cond_1b
    move-object p1, v1

    :goto_1c
    if-eqz p1, :cond_2f

    const-string p0, "magic_tag"

    const-string v2, ""

    invoke-virtual {p1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ss_app_log"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 546
    :goto_30
    if-eqz v0, :cond_39

    .line 547
    const-string p0, "config"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 549
    :cond_39
    return-object v1
.end method

.method public static d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .line 554
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/embedapplog/AppLog;->toEncryptByte(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/bytedance/embedapplog/ao;->a(ILjava/lang/String;Ljava/util/HashMap;[B)Ljava/lang/String;

    move-result-object p0

    .line 555
    nop

    .line 556
    if-eqz p0, :cond_1b

    .line 558
    :try_start_11
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_17

    .line 561
    goto :goto_1c

    .line 559
    :catch_17
    move-exception p0

    .line 560
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 563
    :cond_1b
    move-object p1, v1

    :goto_1c
    if-eqz p1, :cond_2f

    const-string p0, "message"

    const-string v2, ""

    invoke-virtual {p1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "success"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 564
    :goto_30
    if-eqz v0, :cond_39

    .line 565
    const-string p0, "data"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 567
    :cond_39
    return-object v1
.end method
