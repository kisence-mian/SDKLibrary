.class public final Lcom/anythink/basead/e/b/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;)Lcom/anythink/basead/c/e;
    .registers 13

    .line 29
    nop

    .line 31
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_95
    .catchall {:try_start_2 .. :try_end_d} :catchall_93

    .line 34
    :try_start_d
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 36
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 38
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 39
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 40
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 43
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_76

    .line 44
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 45
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 46
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    :goto_39
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 53
    :cond_43
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v5, "data"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 55
    const-string v6, "dstlink"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    const-string v7, "clickid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    new-instance v7, Lcom/anythink/basead/c/e;

    const-string v8, ""

    invoke-direct {v7, v6, v8, v5}, Lcom/anythink/basead/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 62
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 64
    if-eqz v2, :cond_70

    .line 65
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_70} :catch_91
    .catchall {:try_start_d .. :try_end_70} :catchall_b5

    .line 77
    :cond_70
    if-eqz v1, :cond_75

    .line 78
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 68
    :cond_75
    return-object v7

    .line 70
    :cond_76
    :try_start_76
    iget-object v3, p0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->b()I

    move-result v5

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->p()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    move-object v7, p2

    invoke-static/range {v3 .. v9}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8e} :catch_91
    .catchall {:try_start_76 .. :try_end_8e} :catchall_b5

    .line 77
    if-eqz v1, :cond_b4

    .line 78
    goto :goto_b1

    .line 73
    :catch_91
    move-exception v2

    goto :goto_97

    .line 77
    :catchall_93
    move-exception p0

    goto :goto_b7

    .line 73
    :catch_95
    move-exception v2

    move-object v1, v0

    .line 74
    :goto_97
    :try_start_97
    iget-object v3, p0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->b()I

    move-result v5

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->p()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    move-object v7, p2

    invoke-static/range {v3 .. v9}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_97 .. :try_end_af} :catchall_b5

    .line 77
    if-eqz v1, :cond_b4

    .line 78
    :goto_b1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 81
    :cond_b4
    return-object v0

    .line 77
    :catchall_b5
    move-exception p0

    move-object v0, v1

    :goto_b7
    if-eqz v0, :cond_bc

    .line 78
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    :cond_bc
    throw p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 86
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 87
    const-string v0, "qz_gdt"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 88
    return-object p0

    .line 89
    :catchall_b
    move-exception p0

    .line 92
    const/4 p0, 0x0

    return-object p0
.end method
