.class final Lcom/anythink/myoffer/a/a/b$1;
.super Lcom/anythink/myoffer/a/a/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/a/a/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/a/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/a/a/b;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a/b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 93
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/anythink/myoffer/a/a/b;->c:J

    .line 95
    const/4 v1, 0x0

    .line 97
    :try_start_9
    const-string v0, "MyOfferBaseUrlLoader"

    const-string v2, "REQUEST URL: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_23
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_23} :catch_23c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_23} :catch_239
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_23} :catch_16e
    .catch Ljava/lang/StackOverflowError; {:try_start_9 .. :try_end_23} :catch_199
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_23} :catch_1c4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_1ef
    .catchall {:try_start_9 .. :try_end_23} :catchall_217

    .line 103
    const/4 v1, 0x0

    :try_start_24
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 114
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    iget-boolean v1, v1, Lcom/anythink/myoffer/a/a/b;->b:Z

    if-eqz v1, :cond_38

    .line 115
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    invoke-virtual {v1}, Lcom/anythink/myoffer/a/a/b;->e()V
    :try_end_32
    .catch Ljava/net/SocketTimeoutException; {:try_start_24 .. :try_end_32} :catch_a1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_24 .. :try_end_32} :catch_15e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_32} :catch_233
    .catch Ljava/lang/StackOverflowError; {:try_start_24 .. :try_end_32} :catch_22d
    .catch Ljava/lang/Error; {:try_start_24 .. :try_end_32} :catch_228
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_32} :catch_223
    .catchall {:try_start_24 .. :try_end_32} :catchall_21e

    .line 217
    if-eqz v0, :cond_37

    .line 218
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 222
    :cond_37
    :goto_37
    return-void

    .line 119
    :cond_38
    const v1, 0xea60

    :try_start_3b
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 120
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 122
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 123
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_da

    .line 125
    const-string v2, "MyOfferBaseUrlLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http respond status code is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ! url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/16 v2, 0x12e

    if-ne v1, v2, :cond_c4

    .line 128
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    iget-boolean v1, v1, Lcom/anythink/myoffer/a/a/b;->b:Z

    if-nez v1, :cond_9b

    .line 129
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_95

    .line 131
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_92

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    :cond_92
    invoke-direct {p0, v1}, Lcom/anythink/myoffer/a/a/b$1;->a(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/net/SocketTimeoutException; {:try_start_3b .. :try_end_95} :catch_a1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3b .. :try_end_95} :catch_15e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3b .. :try_end_95} :catch_233
    .catch Ljava/lang/StackOverflowError; {:try_start_3b .. :try_end_95} :catch_22d
    .catch Ljava/lang/Error; {:try_start_3b .. :try_end_95} :catch_228
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_95} :catch_223
    .catchall {:try_start_3b .. :try_end_95} :catchall_21e

    .line 217
    :cond_95
    :goto_95
    if-eqz v0, :cond_37

    .line 218
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_37

    .line 139
    :cond_9b
    :try_start_9b
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    invoke-virtual {v1}, Lcom/anythink/myoffer/a/a/b;->e()V
    :try_end_a0
    .catch Ljava/net/SocketTimeoutException; {:try_start_9b .. :try_end_a0} :catch_a1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9b .. :try_end_a0} :catch_15e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9b .. :try_end_a0} :catch_233
    .catch Ljava/lang/StackOverflowError; {:try_start_9b .. :try_end_a0} :catch_22d
    .catch Ljava/lang/Error; {:try_start_9b .. :try_end_a0} :catch_228
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a0} :catch_223
    .catchall {:try_start_9b .. :try_end_a0} :catchall_21e

    goto :goto_95

    .line 171
    :catch_a1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 172
    :goto_a5
    :try_start_a5
    iget-object v2, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    const-string v3, "20001"

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/myoffer/a/a/b;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 173
    const-string v2, "MyOfferBaseUrlLoader"

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_a5 .. :try_end_bd} :catchall_217

    .line 217
    if-eqz v1, :cond_37

    .line 218
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_37

    .line 143
    :cond_c4
    :try_start_c4
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    const-string v2, "10001"

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/myoffer/a/a/b;->a(Lcom/anythink/network/myoffer/MyOfferError;)V
    :try_end_d3
    .catch Ljava/net/SocketTimeoutException; {:try_start_c4 .. :try_end_d3} :catch_a1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c4 .. :try_end_d3} :catch_15e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c4 .. :try_end_d3} :catch_233
    .catch Ljava/lang/StackOverflowError; {:try_start_c4 .. :try_end_d3} :catch_22d
    .catch Ljava/lang/Error; {:try_start_c4 .. :try_end_d3} :catch_228
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d3} :catch_223
    .catchall {:try_start_c4 .. :try_end_d3} :catchall_21e

    .line 217
    if-eqz v0, :cond_37

    .line 218
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_37

    .line 149
    :cond_da
    :try_start_da
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    iget-boolean v1, v1, Lcom/anythink/myoffer/a/a/b;->b:Z

    if-eqz v1, :cond_ec

    .line 150
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    invoke-virtual {v1}, Lcom/anythink/myoffer/a/a/b;->e()V
    :try_end_e5
    .catch Ljava/net/SocketTimeoutException; {:try_start_da .. :try_end_e5} :catch_a1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_da .. :try_end_e5} :catch_15e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_da .. :try_end_e5} :catch_233
    .catch Ljava/lang/StackOverflowError; {:try_start_da .. :try_end_e5} :catch_22d
    .catch Ljava/lang/Error; {:try_start_da .. :try_end_e5} :catch_228
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e5} :catch_223
    .catchall {:try_start_da .. :try_end_e5} :catchall_21e

    .line 217
    if-eqz v0, :cond_37

    .line 218
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_37

    .line 153
    :cond_ec
    :try_start_ec
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/anythink/myoffer/a/a/b;->e:J

    .line 154
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 155
    invoke-static {}, Lcom/anythink/myoffer/a/c;->a()Lcom/anythink/myoffer/a/c;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    iget-object v3, v3, Lcom/anythink/myoffer/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/anythink/myoffer/a/c;->a(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v2

    .line 157
    if-eqz v1, :cond_10a

    .line 158
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 161
    :cond_10a
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/anythink/myoffer/a/a/b;->d:J

    .line 163
    if-eqz v2, :cond_138

    .line 164
    const-string v1, "MyOfferBaseUrlLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download success --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    iget-object v3, v3, Lcom/anythink/myoffer/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    invoke-virtual {v1}, Lcom/anythink/myoffer/a/a/b;->f()V
    :try_end_131
    .catch Ljava/net/SocketTimeoutException; {:try_start_ec .. :try_end_131} :catch_a1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_ec .. :try_end_131} :catch_15e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ec .. :try_end_131} :catch_233
    .catch Ljava/lang/StackOverflowError; {:try_start_ec .. :try_end_131} :catch_22d
    .catch Ljava/lang/Error; {:try_start_ec .. :try_end_131} :catch_228
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_131} :catch_223
    .catchall {:try_start_ec .. :try_end_131} :catchall_21e

    .line 217
    :goto_131
    if-eqz v0, :cond_37

    .line 218
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_37

    .line 167
    :cond_138
    :try_start_138
    const-string v1, "MyOfferBaseUrlLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download fail --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    iget-object v3, v3, Lcom/anythink/myoffer/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    const-string v2, "10000"

    const-string v3, "Save fail!"

    invoke-static {v2, v3}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/myoffer/a/a/b;->b(Lcom/anythink/network/myoffer/MyOfferError;)V
    :try_end_15d
    .catch Ljava/net/SocketTimeoutException; {:try_start_138 .. :try_end_15d} :catch_a1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_138 .. :try_end_15d} :catch_15e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_138 .. :try_end_15d} :catch_233
    .catch Ljava/lang/StackOverflowError; {:try_start_138 .. :try_end_15d} :catch_22d
    .catch Ljava/lang/Error; {:try_start_138 .. :try_end_15d} :catch_228
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_15d} :catch_223
    .catchall {:try_start_138 .. :try_end_15d} :catchall_21e

    goto :goto_131

    .line 174
    :catch_15e
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 175
    :goto_162
    :try_start_162
    iget-object v2, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    invoke-virtual {v2, v0}, Lcom/anythink/myoffer/a/a/b;->a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    :try_end_167
    .catchall {:try_start_162 .. :try_end_167} :catchall_217

    .line 217
    if-eqz v1, :cond_37

    .line 218
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_37

    .line 176
    :catch_16e
    move-exception v0

    .line 177
    :goto_16f
    :try_start_16f
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 178
    const-string v2, "MyOfferBaseUrlLoader"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v2, "Http connect error!"

    .line 181
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_246

    .line 182
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_187
    iget-object v2, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    const-string v3, "10000"

    invoke-static {v3, v0}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/myoffer/a/a/b;->a(Lcom/anythink/network/myoffer/MyOfferError;)V
    :try_end_192
    .catchall {:try_start_16f .. :try_end_192} :catchall_217

    .line 217
    if-eqz v1, :cond_37

    .line 218
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_37

    .line 185
    :catch_199
    move-exception v0

    .line 186
    :goto_19a
    :try_start_19a
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 187
    const-string v2, "MyOfferBaseUrlLoader"

    invoke-virtual {v0}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "Http connect error!"

    .line 190
    invoke-virtual {v0}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_243

    .line 191
    invoke-virtual {v0}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_1b2
    iget-object v2, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    const-string v3, "10000"

    invoke-static {v3, v0}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/myoffer/a/a/b;->a(Lcom/anythink/network/myoffer/MyOfferError;)V
    :try_end_1bd
    .catchall {:try_start_19a .. :try_end_1bd} :catchall_217

    .line 217
    if-eqz v1, :cond_37

    .line 218
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_37

    .line 194
    :catch_1c4
    move-exception v0

    .line 195
    :goto_1c5
    :try_start_1c5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 196
    const-string v2, "MyOfferBaseUrlLoader"

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "Http connect error!"

    .line 199
    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_241

    .line 200
    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_1dd
    iget-object v2, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    const-string v3, "10000"

    invoke-static {v3, v0}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/myoffer/a/a/b;->a(Lcom/anythink/network/myoffer/MyOfferError;)V
    :try_end_1e8
    .catchall {:try_start_1c5 .. :try_end_1e8} :catchall_217

    .line 217
    if-eqz v1, :cond_37

    .line 218
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_37

    .line 203
    :catch_1ef
    move-exception v0

    .line 204
    :goto_1f0
    :try_start_1f0
    const-string v2, "MyOfferBaseUrlLoader"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "Http connect error!"

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23f

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_205
    iget-object v2, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    const-string v3, "10000"

    invoke-static {v3, v0}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/myoffer/a/a/b;->a(Lcom/anythink/network/myoffer/MyOfferError;)V
    :try_end_210
    .catchall {:try_start_1f0 .. :try_end_210} :catchall_217

    .line 217
    if-eqz v1, :cond_37

    .line 218
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_37

    .line 217
    :catchall_217
    move-exception v0

    :goto_218
    if-eqz v1, :cond_21d

    .line 218
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_21d
    throw v0

    .line 217
    :catchall_21e
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_218

    .line 203
    :catch_223
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1f0

    .line 194
    :catch_228
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1c5

    .line 185
    :catch_22d
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_19a

    .line 176
    :catch_233
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_16f

    .line 174
    :catch_239
    move-exception v0

    goto/16 :goto_162

    .line 171
    :catch_23c
    move-exception v0

    goto/16 :goto_a5

    :cond_23f
    move-object v0, v2

    goto :goto_205

    :cond_241
    move-object v0, v2

    goto :goto_1dd

    :cond_243
    move-object v0, v2

    goto/16 :goto_1b2

    :cond_246
    move-object v0, v2

    goto/16 :goto_187
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 62
    const-string v0, "MyOfferBaseUrlLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start download url -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    iget-object v2, v2, Lcom/anythink/myoffer/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :try_start_18
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    iget-object v0, v0, Lcom/anythink/myoffer/a/a/b;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anythink/myoffer/a/a/b$1;->a(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_1f} :catch_68
    .catch Ljava/lang/StackOverflowError; {:try_start_18 .. :try_end_1f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_45

    .line 86
    :goto_1f
    return-void

    .line 67
    :catch_20
    move-exception v0

    .line 68
    :goto_21
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 69
    const-string v1, "MyOfferBaseUrlLoader"

    invoke-virtual {v0}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "Http connect error!"

    .line 72
    invoke-virtual {v0}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 73
    invoke-virtual {v0}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_39
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    const-string v2, "10000"

    invoke-static {v2, v0}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/myoffer/a/a/b;->b(Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_1f

    .line 76
    :catch_45
    move-exception v0

    move-object v1, v0

    .line 77
    const-string v0, "MyOfferBaseUrlLoader"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "Http connect error!"

    .line 80
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 81
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_5c
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b$1;->a:Lcom/anythink/myoffer/a/a/b;

    const-string v2, "10000"

    invoke-static {v2, v0}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/myoffer/a/a/b;->b(Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_1f

    .line 67
    :catch_68
    move-exception v0

    goto :goto_21

    :cond_6a
    move-object v0, v1

    goto :goto_39
.end method
