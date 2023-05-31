.class final Lcom/taptap/sdk/net/Api$b;
.super Ljava/lang/Object;
.source "Api.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/net/Api;->b(Ljava/lang/String;Ljava/util/HashMap;Lcom/taptap/sdk/net/Api$ApiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/taptap/sdk/net/Api$ApiCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/taptap/sdk/net/Api$ApiCallback;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/net/Api$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/taptap/sdk/net/Api$b;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/taptap/sdk/net/Api$b;->c:Lcom/taptap/sdk/net/Api$ApiCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/net/Api$b;->a:Ljava/lang/String;

    .line 5
    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v2, "POST"

    .line 8
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_120
    .catchall {:try_start_3 .. :try_end_17} :catchall_11d

    const-string v2, "User-Agent"

    .line 9
    :try_start_19
    invoke-static {}, Lcom/taptap/sdk/net/Api;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 12
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_120
    .catchall {:try_start_19 .. :try_end_28} :catchall_11d

    .line 13
    :try_start_28
    iget-object v3, p0, Lcom/taptap/sdk/net/Api$b;->b:Ljava/util/HashMap;

    if-eqz v3, :cond_95

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_95

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v4, p0, Lcom/taptap/sdk/net/Api$b;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 17
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 19
    :cond_41
    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 20
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v5, p0, Lcom/taptap/sdk/net/Api$b;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eqz v5, :cond_41

    const-string v5, "&"

    .line 23
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 26
    :cond_85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 27
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 30
    :cond_95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_9e} :catch_11b
    .catchall {:try_start_28 .. :try_end_9e} :catchall_119

    const/16 v5, 0xc8

    const-string v6, "\n"

    if-lt v3, v5, :cond_da

    const/16 v5, 0x190

    if-ge v3, v5, :cond_da

    .line 33
    :try_start_a8
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b6} :catch_11b
    .catchall {:try_start_a8 .. :try_end_b6} :catchall_119

    .line 35
    :goto_b6
    :try_start_b6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c4

    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b6

    .line 38
    :cond_c4
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/taptap/sdk/net/Api$b;->c:Lcom/taptap/sdk/net/Api$ApiCallback;

    invoke-static {v1, v0}, Lcom/taptap/sdk/net/Api;->a(Lcom/taptap/sdk/net/Api$ApiCallback;Lorg/json/JSONObject;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_d2} :catch_d7
    .catchall {:try_start_b6 .. :try_end_d2} :catchall_d3

    goto :goto_105

    :catchall_d3
    move-exception v0

    move-object v1, v3

    goto/16 :goto_140

    :catch_d7
    move-exception v0

    move-object v1, v3

    goto :goto_122

    .line 41
    :cond_da
    :try_start_da
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e8} :catch_11b
    .catchall {:try_start_da .. :try_end_e8} :catchall_119

    .line 43
    :goto_e8
    :try_start_e8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f6

    .line 44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e8

    .line 46
    :cond_f6
    iget-object v0, p0, Lcom/taptap/sdk/net/Api$b;->c:Lcom/taptap/sdk/net/Api$ApiCallback;

    new-instance v1, Lcom/taptap/sdk/exceptions/ServerError;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lcom/taptap/sdk/exceptions/ServerError;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/taptap/sdk/net/Api;->a(Lcom/taptap/sdk/net/Api$ApiCallback;Ljava/lang/Throwable;)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_104} :catch_116
    .catchall {:try_start_e8 .. :try_end_104} :catchall_113

    move-object v3, v5

    .line 59
    :goto_105
    :try_start_105
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    goto :goto_10d

    .line 61
    :catch_109
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_10d
    if-eqz v2, :cond_13e

    .line 67
    :try_start_10f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_13a

    goto :goto_13e

    .line 87
    :catchall_113
    move-exception v0

    move-object v1, v5

    goto :goto_140

    .line 67
    :catch_116
    move-exception v0

    move-object v1, v5

    goto :goto_122

    :catchall_119
    move-exception v0

    goto :goto_140

    :catch_11b
    move-exception v0

    goto :goto_122

    :catchall_11d
    move-exception v0

    move-object v2, v1

    goto :goto_140

    :catch_120
    move-exception v0

    move-object v2, v1

    .line 68
    :goto_122
    :try_start_122
    new-instance v3, Lcom/taptap/sdk/net/Api$b$a;

    invoke-direct {v3, p0, v0}, Lcom/taptap/sdk/net/Api$b$a;-><init>(Lcom/taptap/sdk/net/Api$b;Ljava/lang/Exception;)V

    invoke-static {v3}, Lcom/taptap/sdk/l;->b(Ljava/lang/Runnable;)V
    :try_end_12a
    .catchall {:try_start_122 .. :try_end_12a} :catchall_13f

    if-eqz v1, :cond_134

    .line 77
    :try_start_12c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_12f} :catch_130

    goto :goto_134

    .line 79
    :catch_130
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_134
    :goto_134
    if-eqz v2, :cond_13e

    .line 85
    :try_start_136
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_13a

    goto :goto_13e

    .line 87
    :catch_13a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_13e
    :goto_13e
    return-void

    :catchall_13f
    move-exception v0

    :goto_140
    if-eqz v1, :cond_14a

    .line 88
    :try_start_142
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_145} :catch_146

    goto :goto_14a

    .line 90
    :catch_146
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_14a
    :goto_14a
    if-eqz v2, :cond_154

    .line 96
    :try_start_14c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_150

    goto :goto_154

    .line 98
    :catch_150
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    :cond_154
    :goto_154
    throw v0
.end method
