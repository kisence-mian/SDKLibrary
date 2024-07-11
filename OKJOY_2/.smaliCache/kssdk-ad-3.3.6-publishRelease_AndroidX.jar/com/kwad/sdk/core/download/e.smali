.class public Lcom/kwad/sdk/core/download/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/download/e$b;,
        Lcom/kwad/sdk/core/download/e$c;,
        Lcom/kwad/sdk/core/download/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/utils/z;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/downloadFileSync/.temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/download/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;IIZZ)Ljava/net/URLConnection;
    .registers 6

    :try_start_0
    new-instance p4, Ljava/net/URL;

    invoke-direct {p4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/core/network/l;->a(Ljava/net/URLConnection;)V

    const-string p4, "Accept-Language"

    const-string v0, "zh-CN"

    invoke-virtual {p0, p4, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_18

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    :cond_18
    if-lez p2, :cond_1d

    invoke-virtual {p0, p2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_1d
    invoke-virtual {p0, p3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    const-string p1, "Connection"

    const-string p2, "keep-alive"

    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Charset"

    const-string p2, "UTF-8"

    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdInfo;)V
    .registers 4

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getProxyForDownload()Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/kwad/sdk/core/download/DownloadParams;->transfrom(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/download/DownloadParams;

    move-result-object p1

    iget-object v1, p1, Lcom/kwad/sdk/core/download/DownloadParams;->mDownloadid:Ljava/lang/String;

    invoke-interface {v0, p0, v1, p1}, Lcom/kwad/sdk/export/proxy/AdDownloadProxy;->startDownload(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V

    :cond_13
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getProxyForDownload()Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/kwad/sdk/export/proxy/AdDownloadProxy;->pauseDownload(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V

    :cond_e
    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_7

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    :cond_7
    :goto_7
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;Lcom/kwad/sdk/core/download/e$b;I)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/kwad/sdk/core/download/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/kwad/sdk/core/download/e$a;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_12

    :try_start_7
    invoke-static {p0, v0, v1, p2, p3}, Lcom/kwad/sdk/core/download/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/download/e$c;Lcom/kwad/sdk/core/download/e$b;I)Z

    move-result p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    invoke-static {v1}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    return p0

    :catchall_f
    move-exception p0

    move-object v0, v1

    goto :goto_13

    :catchall_12
    move-exception p0

    :goto_13
    invoke-static {v0}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/download/e$c;Lcom/kwad/sdk/core/download/e$b;I)Z
    .registers 15

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v9}, Lcom/kwad/sdk/core/download/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/download/e$c;Lcom/kwad/sdk/core/download/e$b;IJJZ)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/download/e$c;Lcom/kwad/sdk/core/download/e$b;IJJZ)Z
    .registers 22

    const/16 v0, 0x2710

    if-lez p4, :cond_7

    move/from16 v1, p4

    goto :goto_a

    :cond_7
    const v1, 0x1d4c0

    :goto_a
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, p0

    :try_start_e
    invoke-static {p0, v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/e;->a(Ljava/lang/String;IIZZ)Ljava/net/URLConnection;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/net/HttpURLConnection;
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_3b

    if-eqz v11, :cond_33

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    :try_start_23
    invoke-static/range {v1 .. v10}, Lcom/kwad/sdk/core/download/e;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/kwad/sdk/core/download/e$c;Lcom/kwad/sdk/core/download/e$b;IJJZ)Z

    move-result v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_30

    invoke-static {p2}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    if-eqz v11, :cond_2f

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2f
    return v0

    :catchall_30
    move-exception v0

    move-object v4, v11

    goto :goto_3c

    :cond_33
    :try_start_33
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fail to createUrlConnection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_30

    :catchall_3b
    move-exception v0

    :goto_3c
    invoke-static {p2}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    if-eqz v4, :cond_44

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_44
    throw v0
.end method

.method public static a(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/kwad/sdk/core/download/e$c;Lcom/kwad/sdk/core/download/e$b;IJJZ)Z
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    move-wide/from16 v3, p5

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-gtz v7, :cond_15

    cmp-long v11, p7, v5

    if-lez v11, :cond_36

    :cond_15
    :try_start_15
    const-string v11, "Range"

    const-string v12, "bytes=%s-%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v9
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_169

    cmp-long v5, p7, v5

    if-lez v5, :cond_2b

    :try_start_26
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_69

    goto :goto_2d

    :cond_2b
    :try_start_2b
    const-string v5, ""

    :goto_2d
    aput-object v5, v13, v8

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v11, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_169

    if-nez v5, :cond_6e

    :try_start_3c
    const-string v5, "Host"

    move-object/from16 v6, p1

    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0x12e

    if-ne v5, v6, :cond_6e

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p4

    invoke-static {v3, v10, v2, v0, v4}, Lcom/kwad/sdk/core/download/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/download/e$c;Lcom/kwad/sdk/core/download/e$b;I)Z

    move-result v0
    :try_end_5a
    .catchall {:try_start_3c .. :try_end_5a} :catchall_69

    invoke-static/range {p2 .. p2}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_65

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_65
    invoke-static {v10}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    return v0

    :catchall_69
    move-exception v0

    move-object v4, v10

    move-object v14, v4

    goto/16 :goto_16c

    :cond_6e
    :try_start_6e
    const-string v5, "User-Agent"

    invoke-static {}, Lcom/kwad/sdk/core/network/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_80
    .catchall {:try_start_6e .. :try_end_80} :catchall_169

    :try_start_80
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11

    if-nez v11, :cond_90

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    goto :goto_99

    :cond_90
    new-instance v11, Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_99
    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a2
    .catchall {:try_start_80 .. :try_end_a2} :catchall_164

    const/4 v5, -0x1

    const/16 v13, 0x2800

    if-gtz v6, :cond_113

    :try_start_a7
    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v6, v14, v15}, Ljava/util/Random;-><init>(J)V

    new-instance v14, Ljava/io/File;

    sget-object v15, Lcom/kwad/sdk/core/download/e;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".tmp"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v15, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_a7 .. :try_end_ce} :catchall_10d

    :try_start_ce
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d3
    .catchall {:try_start_ce .. :try_end_d3} :catchall_10a

    :try_start_d3
    new-array v8, v13, [B

    move v15, v9

    :goto_d6
    invoke-virtual {v12, v8}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-eq v13, v5, :cond_e1

    add-int/2addr v15, v13

    invoke-virtual {v6, v8, v9, v13}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_d6

    :cond_e1
    invoke-static {v12}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f1
    .catchall {:try_start_d3 .. :try_end_f1} :catchall_107

    :try_start_f1
    const-string v12, "Content-Length"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fe
    .catchall {:try_start_f1 .. :try_end_fe} :catchall_102

    move-object v12, v8

    move-object v8, v6

    move v6, v15

    goto :goto_115

    :catchall_102
    move-exception v0

    move-object v4, v6

    move-object v10, v8

    goto/16 :goto_16c

    :catchall_107
    move-exception v0

    move-object v4, v6

    goto :goto_110

    :catchall_10a
    move-exception v0

    move-object v4, v10

    goto :goto_110

    :catchall_10d
    move-exception v0

    move-object v4, v10

    move-object v14, v4

    :goto_110
    move-object v10, v12

    goto/16 :goto_16c

    :cond_113
    move-object v8, v10

    move-object v14, v8

    :goto_115
    if-lez v7, :cond_11b

    if-eqz p9, :cond_11b

    long-to-int v3, v3

    goto :goto_11c

    :cond_11b
    move v3, v9

    :goto_11c
    add-int/2addr v6, v3

    int-to-long v9, v6

    :try_start_11e
    invoke-interface {v2, v9, v10}, Lcom/kwad/sdk/core/download/e$c;->a(J)V

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-interface {v2, v9, v11}, Lcom/kwad/sdk/core/download/e$c;->a(ILjava/util/Map;)V

    if-eqz v0, :cond_12e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v6, v4}, Lcom/kwad/sdk/core/download/e$b;->a(IILjava/lang/Object;)Z

    :cond_12e
    const/16 v9, 0x2800

    new-array v9, v9, [B

    :goto_132
    invoke-virtual {v12, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-eq v10, v5, :cond_146

    add-int/2addr v3, v10

    const/4 v7, 0x0

    invoke-interface {v2, v9, v7, v10}, Lcom/kwad/sdk/core/download/e$c;->a([BII)V

    if-eqz v0, :cond_144

    const/4 v4, 0x0

    invoke-interface {v0, v3, v6, v4}, Lcom/kwad/sdk/core/download/e$b;->a(IILjava/lang/Object;)Z

    goto :goto_132

    :cond_144
    const/4 v4, 0x0

    goto :goto_132

    :cond_146
    const/4 v4, 0x0

    if-eqz v0, :cond_14c

    invoke-interface {v0, v6, v6, v4}, Lcom/kwad/sdk/core/download/e$b;->a(IILjava/lang/Object;)Z
    :try_end_14c
    .catchall {:try_start_11e .. :try_end_14c} :catchall_161

    :cond_14c
    invoke-static/range {p2 .. p2}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_157

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_157
    invoke-static {v8}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    if-eqz v14, :cond_15f

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    :cond_15f
    const/4 v0, 0x1

    return v0

    :catchall_161
    move-exception v0

    move-object v4, v8

    goto :goto_110

    :catchall_164
    move-exception v0

    move-object v4, v10

    move-object v14, v4

    move-object v10, v5

    goto :goto_16c

    :catchall_169
    move-exception v0

    move-object v4, v10

    move-object v14, v10

    :goto_16c
    :try_start_16c
    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_173

    check-cast v0, Ljava/io/IOException;

    goto :goto_19c

    :cond_173
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_19c
    throw v0
    :try_end_19d
    .catchall {:try_start_16c .. :try_end_19d} :catchall_19d

    :catchall_19d
    move-exception v0

    invoke-static/range {p2 .. p2}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_1a9

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1a9
    invoke-static {v4}, Lcom/kwad/sdk/core/download/e;->a(Ljava/io/Closeable;)V

    if-eqz v14, :cond_1b1

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    :cond_1b1
    throw v0
.end method
