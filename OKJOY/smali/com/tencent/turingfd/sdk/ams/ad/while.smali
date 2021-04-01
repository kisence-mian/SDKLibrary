.class public final Lcom/tencent/turingfd/sdk/ams/ad/while;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/turingfd/sdk/ams/ad/this;


# instance fields
.field public final synthetic Ib:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/while;->Ib:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I[B)Lcom/tencent/turingfd/sdk/ams/ad/this$do;
    .registers 14

    .prologue
    const/4 v10, -0x1

    const/16 v4, -0x7d0

    const/16 v1, -0xfa0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1
    new-instance v6, Lcom/tencent/turingfd/sdk/ams/ad/double;

    invoke-direct {v6}, Lcom/tencent/turingfd/sdk/ams/ad/double;-><init>()V

    .line 2
    iget-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/while;->Ib:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->get()Landroid/content/Context;

    move-result-object v7

    const-string v0, "connectivity"

    .line 4
    :try_start_14
    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1d} :catch_6d

    move-result-object v0

    if-eqz v0, :cond_30

    .line 6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v8, v9, :cond_43

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v8, v9, :cond_43

    .line 15
    :cond_30
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->Cc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    .line 19
    :goto_32
    sget-object v7, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->Cc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    if-ne v0, v7, :cond_85

    const/16 v0, -0x41c

    .line 36
    :goto_38
    if-eqz v0, :cond_108

    .line 66
    :goto_3a
    if-eqz v0, :cond_201

    .line 67
    new-array v1, v2, [B

    invoke-static {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/this$do;->a(I[B)Lcom/tencent/turingfd/sdk/ams/ad/this$do;

    move-result-object v0

    .line 82
    :goto_42
    return-object v0

    .line 7
    :cond_43
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v8, v5, :cond_4c

    .line 8
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->zc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    goto :goto_32

    .line 9
    :cond_4c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_6a

    .line 10
    invoke-static {v7}, Lcom/tencent/turingfd/sdk/ams/ad/double;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_67

    invoke-static {v7}, Lcom/tencent/turingfd/sdk/ams/ad/double;->k(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_67

    .line 12
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->Ac:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    goto :goto_32

    .line 13
    :cond_67
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->Bc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    goto :goto_32

    .line 14
    :cond_6a
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->Bc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    goto :goto_32

    .line 16
    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25b

    const-string v7, "ACCESS_NETWORK_STATE"

    .line 17
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25b

    move v0, v5

    :goto_7d
    if-eqz v0, :cond_82

    .line 18
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->zc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    goto :goto_32

    :cond_82
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->Cc:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    goto :goto_32

    .line 20
    :cond_85
    :try_start_85
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/double$do;->Ac:Lcom/tencent/turingfd/sdk/ams/ad/double$do;

    if-ne v0, v3, :cond_c2

    .line 22
    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 23
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->get()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/turingfd/sdk/ams/ad/double;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 24
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->get()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/turingfd/sdk/ams/ad/double;->k(Landroid/content/Context;)I

    move-result v9

    .line 25
    invoke-static {v8, v9}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v8

    invoke-direct {v0, v3, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 26
    invoke-virtual {v7, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;

    .line 28
    :goto_b1
    iget-object v0, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;

    const/16 v3, 0x3a98

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 29
    iget-object v0, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;

    const/16 v3, 0x3a98

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    move v0, v2

    goto/16 :goto_38

    .line 27
    :cond_c2
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;
    :try_end_ca
    .catch Ljava/net/MalformedURLException; {:try_start_85 .. :try_end_ca} :catch_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_85 .. :try_end_ca} :catch_ff
    .catch Ljava/lang/SecurityException; {:try_start_85 .. :try_end_ca} :catch_f6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_85 .. :try_end_ca} :catch_ed
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_ca} :catch_dd
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_ca} :catch_d4

    goto :goto_b1

    .line 35
    :catch_cb
    move-exception v0

    const/16 v3, -0x41d

    .line 36
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move v0, v3

    goto/16 :goto_38

    .line 29
    :catch_d4
    move-exception v0

    const/16 v3, -0x3e8

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v3

    goto/16 :goto_38

    :catch_dd
    move-exception v0

    .line 31
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->getInstance()Lcom/tencent/turingfd/sdk/ams/ad/continue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->a(Ljava/lang/Throwable;)V

    const/16 v3, -0x420

    .line 32
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v3

    goto/16 :goto_38

    :catch_ed
    move-exception v0

    const/16 v3, -0x423

    .line 33
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    move v0, v3

    goto/16 :goto_38

    :catch_f6
    move-exception v0

    const/16 v3, -0x422

    .line 34
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move v0, v3

    goto/16 :goto_38

    :catch_ff
    move-exception v0

    const/16 v3, -0x421

    .line 35
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v3

    goto/16 :goto_38

    .line 37
    :cond_108
    iput-boolean v2, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Kb:Z

    .line 38
    :try_start_10a
    array-length v0, p2

    .line 39
    iget-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 40
    iget-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 41
    iget-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 42
    iget-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;
    :try_end_11f
    .catch Ljava/lang/IllegalAccessError; {:try_start_10a .. :try_end_11f} :catch_1f8
    .catch Ljava/lang/IllegalStateException; {:try_start_10a .. :try_end_11f} :catch_1ef
    .catch Ljava/net/ProtocolException; {:try_start_10a .. :try_end_11f} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_11f} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_11f} :catch_1d6

    const-string v7, "POST"

    :try_start_121
    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 43
    iget-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;
    :try_end_126
    .catch Ljava/lang/IllegalAccessError; {:try_start_121 .. :try_end_126} :catch_1f8
    .catch Ljava/lang/IllegalStateException; {:try_start_121 .. :try_end_126} :catch_1ef
    .catch Ljava/net/ProtocolException; {:try_start_121 .. :try_end_126} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_126} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_126} :catch_1d6

    const-string v7, "Pragma"

    const-string v8, "no-cache"

    :try_start_12a
    invoke-virtual {v3, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;
    :try_end_12f
    .catch Ljava/lang/IllegalAccessError; {:try_start_12a .. :try_end_12f} :catch_1f8
    .catch Ljava/lang/IllegalStateException; {:try_start_12a .. :try_end_12f} :catch_1ef
    .catch Ljava/net/ProtocolException; {:try_start_12a .. :try_end_12f} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12f} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_12f} :catch_1d6

    const-string v7, "Cache-Control"

    const-string v8, "no-cache"

    :try_start_133
    invoke-virtual {v3, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 46
    iget-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;
    :try_end_13e
    .catch Ljava/lang/IllegalAccessError; {:try_start_133 .. :try_end_13e} :catch_1f8
    .catch Ljava/lang/IllegalStateException; {:try_start_133 .. :try_end_13e} :catch_1ef
    .catch Ljava/net/ProtocolException; {:try_start_133 .. :try_end_13e} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_13e} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_13e} :catch_1d6

    const-string v7, "User-Agent"

    const-string v8, "QQPimSecure"

    :try_start_142
    invoke-virtual {v3, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;
    :try_end_147
    .catch Ljava/lang/IllegalAccessError; {:try_start_142 .. :try_end_147} :catch_1f8
    .catch Ljava/lang/IllegalStateException; {:try_start_142 .. :try_end_147} :catch_1ef
    .catch Ljava/net/ProtocolException; {:try_start_142 .. :try_end_147} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_147} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_147} :catch_1d6

    const-string v7, "Accept"

    const-string v8, "*/*"

    :try_start_14b
    invoke-virtual {v3, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;
    :try_end_150
    .catch Ljava/lang/IllegalAccessError; {:try_start_14b .. :try_end_150} :catch_1f8
    .catch Ljava/lang/IllegalStateException; {:try_start_14b .. :try_end_150} :catch_1ef
    .catch Ljava/net/ProtocolException; {:try_start_14b .. :try_end_150} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_150} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_150} :catch_1d6

    const-string v7, "Accept-Charset"

    const-string v8, "utf-8"

    :try_start_154
    invoke-virtual {v3, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;
    :try_end_159
    .catch Ljava/lang/IllegalAccessError; {:try_start_154 .. :try_end_159} :catch_1f8
    .catch Ljava/lang/IllegalStateException; {:try_start_154 .. :try_end_159} :catch_1ef
    .catch Ljava/net/ProtocolException; {:try_start_154 .. :try_end_159} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_159} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_159} :catch_1d6

    const-string v7, "Content-Type"

    const-string v8, "application/octet-stream"

    :try_start_15d
    invoke-virtual {v3, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;
    :try_end_162
    .catch Ljava/lang/IllegalAccessError; {:try_start_15d .. :try_end_162} :catch_1f8
    .catch Ljava/lang/IllegalStateException; {:try_start_15d .. :try_end_162} :catch_1ef
    .catch Ljava/net/ProtocolException; {:try_start_15d .. :try_end_162} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_162} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_162} :catch_1d6

    const-string v7, "Content-length"

    :try_start_164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_169
    .catch Ljava/lang/IllegalAccessError; {:try_start_164 .. :try_end_169} :catch_1f8
    .catch Ljava/lang/IllegalStateException; {:try_start_164 .. :try_end_169} :catch_1ef
    .catch Ljava/net/ProtocolException; {:try_start_164 .. :try_end_169} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_169} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_169} :catch_1d6

    const-string v9, ""

    :try_start_16b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17a
    .catch Ljava/lang/IllegalAccessError; {:try_start_16b .. :try_end_17a} :catch_1f8
    .catch Ljava/lang/IllegalStateException; {:try_start_16b .. :try_end_17a} :catch_1ef
    .catch Ljava/net/ProtocolException; {:try_start_16b .. :try_end_17a} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_17a} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_17a} :catch_1d6

    .line 51
    :try_start_17a
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v0, :cond_18d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-le v0, v3, :cond_18d

    .line 52
    iget-object v0, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_186} :catch_258
    .catch Ljava/lang/IllegalAccessError; {:try_start_17a .. :try_end_186} :catch_1f8

    const-string v3, "Connection"

    const-string v7, "close"

    :try_start_18a
    invoke-virtual {v0, v3, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_18d} :catch_258
    .catch Ljava/lang/IllegalAccessError; {:try_start_18a .. :try_end_18d} :catch_1f8

    .line 53
    :cond_18d
    :goto_18d
    :try_start_18d
    iget-object v0, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 55
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 56
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 57
    iget-object v0, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_1c9

    const/4 v3, 0x1

    .line 58
    iput-boolean v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Kb:Z

    move v3, v2

    :goto_1aa
    const/16 v7, 0x12d

    if-lt v0, v7, :cond_1d0

    const/16 v7, 0x131

    if-gt v0, v7, :cond_1d0

    move v0, v5

    :goto_1b3
    if-eqz v0, :cond_1fe

    .line 59
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->getInstance()Lcom/tencent/turingfd/sdk/ams/ad/continue;

    move-result-object v5

    iget-object v0, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;
    :try_end_1bb
    .catch Ljava/lang/IllegalAccessError; {:try_start_18d .. :try_end_1bb} :catch_1f8
    .catch Ljava/lang/IllegalStateException; {:try_start_18d .. :try_end_1bb} :catch_1ef
    .catch Ljava/net/ProtocolException; {:try_start_18d .. :try_end_1bb} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_1bb} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_1bb} :catch_1d6

    const-string v7, "Location"

    .line 60
    :try_start_1bd
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1c0} :catch_1d2
    .catch Ljava/lang/IllegalAccessError; {:try_start_1bd .. :try_end_1c0} :catch_1f8

    move-result-object v0

    :goto_1c1
    const-string v7, "3"

    .line 61
    :try_start_1c3
    invoke-virtual {v5, v7, v0}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c6
    .catch Ljava/lang/IllegalAccessError; {:try_start_1c3 .. :try_end_1c6} :catch_1f8
    .catch Ljava/lang/IllegalStateException; {:try_start_1c3 .. :try_end_1c6} :catch_1ef
    .catch Ljava/net/ProtocolException; {:try_start_1c3 .. :try_end_1c6} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c6} :catch_1dd
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1c6} :catch_1d6

    move v0, v3

    goto/16 :goto_3a

    .line 58
    :cond_1c9
    if-ne v0, v10, :cond_1cd

    move v3, v4

    goto :goto_1aa

    :cond_1cd
    rsub-int v3, v0, -0x7d0

    goto :goto_1aa

    :cond_1d0
    move v0, v2

    goto :goto_1b3

    .line 60
    :catch_1d2
    move-exception v0

    const-string v0, ""

    goto :goto_1c1

    .line 61
    :catch_1d6
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v4

    goto/16 :goto_3a

    :catch_1dd
    move-exception v0

    const/16 v3, -0x808

    .line 63
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v3

    goto/16 :goto_3a

    :catch_1e6
    move-exception v0

    const/16 v3, -0x803

    .line 64
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    move v0, v3

    goto/16 :goto_3a

    :catch_1ef
    move-exception v0

    const/16 v3, -0x80d

    .line 65
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move v0, v3

    goto/16 :goto_3a

    :catch_1f8
    move-exception v0

    const/16 v3, -0x80c

    .line 66
    invoke-virtual {v0}, Ljava/lang/IllegalAccessError;->printStackTrace()V

    :cond_1fe
    move v0, v3

    goto/16 :goto_3a

    .line 68
    :cond_201
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 69
    iget-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_20e

    iget-boolean v0, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Kb:Z

    if-nez v0, :cond_218

    .line 80
    :cond_20e
    :goto_20e
    if-eqz v1, :cond_24c

    .line 81
    new-array v0, v2, [B

    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/this$do;->a(I[B)Lcom/tencent/turingfd/sdk/ams/ad/this$do;

    move-result-object v0

    goto/16 :goto_42

    .line 69
    :cond_218
    const/4 v0, 0x0

    .line 70
    :try_start_219
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 71
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    :goto_222
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v7, v10, :cond_241

    .line 73
    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_22b
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_22b} :catch_22c
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_22b} :catch_247

    goto :goto_222

    .line 75
    :catch_22c
    move-exception v1

    move-object v3, v1

    const/16 v1, -0xfd8

    .line 76
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    :goto_233
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 78
    iget-object v0, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_20e

    .line 79
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, v6, Lcom/tencent/turingfd/sdk/ams/ad/double;->Jb:Ljava/net/HttpURLConnection;

    goto :goto_20e

    .line 74
    :cond_241
    :try_start_241
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_244
    .catch Ljava/io/IOException; {:try_start_241 .. :try_end_244} :catch_22c
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_244} :catch_247

    move-result-object v0

    move v1, v2

    goto :goto_233

    :catch_247
    move-exception v3

    .line 75
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_233

    .line 82
    :cond_24c
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/this$do;->a(I[B)Lcom/tencent/turingfd/sdk/ams/ad/this$do;

    move-result-object v0

    goto/16 :goto_42

    :catch_258
    move-exception v0

    goto/16 :goto_18d

    :cond_25b
    move v0, v2

    goto/16 :goto_7d
.end method
