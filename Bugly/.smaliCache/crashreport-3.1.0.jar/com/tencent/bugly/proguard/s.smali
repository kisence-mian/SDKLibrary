.class public final Lcom/tencent/bugly/proguard/s;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static b:Lcom/tencent/bugly/proguard/s;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 52
    iput-object p1, p0, Lcom/tencent/bugly/proguard/s;->c:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/s;
    .registers 2

    .line 62
    sget-object v0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Lcom/tencent/bugly/proguard/s;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    .line 65
    :cond_b
    sget-object p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 4

    .line 291
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->b()Ljava/net/Proxy;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 295
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->b()Ljava/net/Proxy;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_4f

    .line 296
    :cond_16
    if-eqz p0, :cond_49

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "wap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_49

    .line 297
    const-string p0, "http.proxyHost"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 298
    const-string p1, "http.proxyPort"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 299
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 301
    new-instance p0, Ljava/net/Proxy;

    sget-object p1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, p1, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 302
    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 303
    goto :goto_4f

    .line 304
    :cond_49
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 306
    :goto_4f
    const/16 p1, 0x7530

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 307
    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 308
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 309
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 310
    const-string p1, "POST"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 311
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 313
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_6c
    .catchall {:try_start_0 .. :try_end_6c} :catchall_6d

    .line 315
    return-object p0

    .line 316
    :catchall_6d
    move-exception p0

    .line 317
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_77

    .line 318
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 321
    :cond_77
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_c

    .line 239
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "destUrl is null."

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 240
    return-object v0

    .line 243
    :cond_c
    invoke-static {p3, p1}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 244
    if-nez p1, :cond_1a

    .line 245
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Failed to get HttpURLConnection object."

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 246
    return-object v0

    .line 251
    :cond_1a
    :try_start_1a
    const-string v2, "wup_version"

    const-string v3, "3.0"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_73

    .line 252
    const-string v2, "utf-8"

    if-eqz p4, :cond_53

    :try_start_25
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_53

    .line 253
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_33
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    goto :goto_33

    .line 259
    :cond_53
    const-string p4, "A37"

    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string p4, "A38"

    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    .line 267
    if-nez p2, :cond_6f

    .line 268
    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_72

    .line 270
    :cond_6f
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_72
    .catchall {:try_start_25 .. :try_end_72} :catchall_73

    .line 272
    :goto_72
    return-object p1

    .line 273
    :catchall_73
    move-exception p1

    .line 274
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_7d

    .line 275
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    :cond_7d
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Failed to upload, please check your network."

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 279
    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    .line 178
    if-eqz p0, :cond_3c

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_3c

    .line 181
    :cond_12
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 184
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3a

    .line 186
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_3a
    goto :goto_1a

    .line 189
    :cond_3b
    return-object v0

    .line 179
    :cond_3c
    :goto_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)[B
    .registers 6

    .line 199
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 200
    return-object v0

    .line 202
    :cond_4
    nop

    .line 204
    :try_start_5
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_34

    .line 205
    :try_start_e
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 206
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 208
    :goto_17
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_22

    .line 209
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_17

    .line 211
    :cond_22
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 212
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_32

    .line 219
    :try_start_29
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    .line 224
    goto :goto_31

    .line 222
    :catchall_2d
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 224
    :goto_31
    return-object p0

    .line 213
    :catchall_32
    move-exception p0

    goto :goto_36

    :catchall_34
    move-exception p0

    move-object v1, v0

    .line 214
    :goto_36
    :try_start_36
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 215
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_4c

    .line 219
    :cond_3f
    if-eqz v1, :cond_4a

    .line 220
    :try_start_41
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_4a

    .line 222
    :catchall_45
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    goto :goto_4b

    .line 224
    :cond_4a
    :goto_4a
    nop

    .line 226
    :goto_4b
    return-object v0

    .line 218
    :catchall_4c
    move-exception p0

    .line 219
    if-eqz v1, :cond_58

    .line 220
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_58

    .line 222
    :catchall_53
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_59

    .line 224
    :cond_58
    :goto_58
    nop

    :goto_59
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/v;Ljava/util/Map;)[B
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/tencent/bugly/proguard/v;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 78
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_12

    .line 79
    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "Failed for no URL."

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 80
    return-object v4

    .line 82
    :cond_12
    nop

    .line 83
    nop

    .line 84
    if-nez v2, :cond_19

    const-wide/16 v8, 0x0

    goto :goto_1b

    :cond_19
    array-length v0, v2

    int-to-long v8, v0

    .line 86
    :goto_1b
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v0, v11

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v0, v12

    const/4 v10, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v0, v10

    const-string v10, "request: %s, send: %d (pid=%d | tid=%d)"

    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 90
    move-object/from16 v10, p1

    move v0, v5

    move v13, v0

    move v14, v13

    .line 91
    :goto_47
    if-gtz v0, :cond_1c1

    if-gtz v13, :cond_1c1

    .line 93
    if-eqz v14, :cond_50

    .line 94
    move v6, v0

    move v14, v5

    goto :goto_80

    .line 96
    :cond_50
    add-int/lit8 v0, v0, 0x1

    .line 97
    if-le v0, v11, :cond_7f

    .line 98
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "try time: "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 100
    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v6, v11, v12}, Ljava/util/Random;-><init>(J)V

    const/16 v11, 0x2710

    invoke-virtual {v6, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v11, v6

    const-wide/16 v18, 0x2710

    add-long v11, v11, v18

    .line 103
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 107
    :cond_7f
    move v6, v0

    :goto_80
    iget-object v0, v1, Lcom/tencent/bugly/proguard/s;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    if-nez v0, :cond_93

    .line 109
    new-array v0, v5, [Ljava/lang/Object;

    const-string v11, "Failed to request for network not avail"

    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 110
    move v0, v6

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_47

    .line 113
    :cond_93
    invoke-virtual {v3, v8, v9}, Lcom/tencent/bugly/proguard/v;->a(J)V

    .line 115
    move-object/from16 v11, p4

    invoke-direct {v1, v10, v2, v0, v11}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v12

    .line 117
    if-eqz v12, :cond_1ab

    .line 119
    :try_start_9e
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 120
    const/16 v7, 0xc8

    if-ne v0, v7, :cond_cb

    .line 122
    invoke-static {v12}, Lcom/tencent/bugly/proguard/s;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 124
    invoke-static {v12}, Lcom/tencent/bugly/proguard/s;->b(Ljava/net/HttpURLConnection;)[B

    move-result-object v7

    .line 125
    if-nez v7, :cond_b5

    const-wide/16 v4, 0x0

    goto :goto_b7

    :cond_b5
    array-length v0, v7

    int-to-long v4, v0

    :goto_b7
    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/proguard/v;->b(J)V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_ba} :catch_17b
    .catchall {:try_start_9e .. :try_end_ba} :catchall_178

    .line 126
    nop

    .line 153
    :try_start_bb
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_bf

    .line 158
    goto :goto_ca

    .line 154
    :catchall_bf
    move-exception v0

    move-object v2, v0

    .line 155
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 156
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    :cond_ca
    :goto_ca
    return-object v7

    .line 127
    :cond_cb
    const/16 v4, 0x12d

    if-eq v0, v4, :cond_de

    const/16 v4, 0x12e

    if-eq v0, v4, :cond_de

    const/16 v4, 0x12f

    if-eq v0, v4, :cond_de

    const/16 v4, 0x133

    if-ne v0, v4, :cond_dc

    goto :goto_de

    :cond_dc
    const/4 v4, 0x0

    goto :goto_df

    :cond_de
    :goto_de
    const/4 v4, 0x1

    :goto_df
    if-eqz v4, :cond_13f

    .line 128
    nop

    .line 129
    :try_start_e2
    const-string v4, "Location"

    invoke-virtual {v12, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e8} :catch_13a
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_178

    .line 130
    if-nez v4, :cond_115

    .line 132
    :try_start_ea
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to redirect: %d"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ff} :catch_110
    .catchall {:try_start_ea .. :try_end_ff} :catchall_178

    .line 133
    :try_start_ff
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_103

    .line 158
    goto :goto_10e

    .line 154
    :catchall_103
    move-exception v0

    move-object v2, v0

    .line 155
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 156
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    :cond_10e
    :goto_10e
    const/4 v2, 0x0

    return-object v2

    .line 147
    :catch_110
    move-exception v0

    const/4 v7, 0x2

    const/4 v14, 0x1

    goto/16 :goto_17d

    .line 136
    :cond_115
    add-int/lit8 v13, v13, 0x1

    .line 137
    nop

    .line 138
    nop

    .line 139
    :try_start_119
    const-string v5, "redirect code: %d ,to:%s"
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11b} :catch_133
    .catchall {:try_start_119 .. :try_end_11b} :catchall_178

    const/4 v7, 0x2

    :try_start_11c
    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v6, v14
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_125} :catch_131
    .catchall {:try_start_11c .. :try_end_125} :catchall_178

    const/4 v15, 0x1

    :try_start_126
    aput-object v4, v6, v15

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_12b} :catch_12f
    .catchall {:try_start_126 .. :try_end_12b} :catchall_178

    move-object v10, v4

    move v14, v15

    const/4 v6, 0x0

    goto :goto_141

    .line 147
    :catch_12f
    move-exception v0

    goto :goto_136

    :catch_131
    move-exception v0

    goto :goto_135

    :catch_133
    move-exception v0

    const/4 v7, 0x2

    :goto_135
    const/4 v15, 0x1

    :goto_136
    move-object v10, v4

    move v14, v15

    const/4 v6, 0x0

    goto :goto_17e

    :catch_13a
    move-exception v0

    const/4 v7, 0x2

    const/4 v15, 0x1

    move v14, v15

    goto :goto_17e

    .line 127
    :cond_13f
    const/4 v7, 0x2

    const/4 v15, 0x1

    .line 142
    :goto_141
    :try_start_141
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response code "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    .line 145
    const-wide/16 v16, 0x0

    cmp-long v0, v4, v16

    if-gez v0, :cond_163

    const-wide/16 v4, 0x0

    .line 146
    :cond_163
    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/proguard/v;->b(J)V
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_166} :catch_176
    .catchall {:try_start_141 .. :try_end_166} :catchall_178

    .line 153
    :try_start_166
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_169
    .catchall {:try_start_166 .. :try_end_169} :catchall_16a

    goto :goto_18a

    .line 154
    :catchall_16a
    move-exception v0

    move-object v4, v0

    .line 155
    invoke-static {v4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_196

    .line 156
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_196

    .line 147
    :catch_176
    move-exception v0

    goto :goto_17e

    .line 152
    :catchall_178
    move-exception v0

    move-object v2, v0

    goto :goto_19b

    .line 147
    :catch_17b
    move-exception v0

    const/4 v7, 0x2

    :goto_17d
    const/4 v15, 0x1

    .line 148
    :goto_17e
    :try_start_17e
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_187

    .line 149
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_187
    .catchall {:try_start_17e .. :try_end_187} :catchall_178

    .line 153
    :cond_187
    :try_start_187
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18a
    .catchall {:try_start_187 .. :try_end_18a} :catchall_18b

    .line 158
    :goto_18a
    goto :goto_197

    .line 154
    :catchall_18b
    move-exception v0

    move-object v4, v0

    .line 155
    invoke-static {v4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_196

    .line 156
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    :cond_196
    :goto_196
    nop

    .line 165
    :goto_197
    move v0, v6

    const-wide/16 v4, 0x0

    goto :goto_1bb

    .line 153
    :goto_19b
    :try_start_19b
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19e
    .catchall {:try_start_19b .. :try_end_19e} :catchall_19f

    .line 158
    goto :goto_1aa

    .line 154
    :catchall_19f
    move-exception v0

    move-object v3, v0

    .line 155
    invoke-static {v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1aa

    .line 156
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    :cond_1aa
    :goto_1aa
    throw v2

    .line 161
    :cond_1ab
    const/4 v7, 0x2

    const/4 v15, 0x1

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v5, "Failed to execute post."

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 163
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/proguard/v;->b(J)V

    move v0, v6

    .line 165
    :goto_1bb
    move v12, v7

    move v11, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_47

    .line 167
    :cond_1c1
    const/4 v2, 0x0

    return-object v2
.end method
