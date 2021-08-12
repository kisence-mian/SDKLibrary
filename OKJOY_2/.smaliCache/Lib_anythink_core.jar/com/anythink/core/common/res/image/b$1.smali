.class final Lcom/anythink/core/common/res/image/b$1;
.super Lcom/anythink/core/common/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/res/image/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/res/image/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/res/image/b;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-direct {p0}, Lcom/anythink/core/common/g/a/b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 10

    .line 86
    const-string v0, "-10000"

    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/res/image/b;->e:J

    .line 87
    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/res/image/b;->f:J

    .line 89
    nop

    .line 91
    const/4 v1, 0x0

    :try_start_14
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v2}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "REQUEST URL: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_32
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_32} :catch_1f5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_14 .. :try_end_32} :catch_1e5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_32} :catch_1c5
    .catch Ljava/lang/StackOverflowError; {:try_start_14 .. :try_end_32} :catch_1a5
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_32} :catch_185
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_32} :catch_168
    .catchall {:try_start_14 .. :try_end_32} :catchall_165

    .line 97
    const/4 v1, 0x0

    :try_start_33
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 108
    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    iget-boolean v1, v1, Lcom/anythink/core/common/res/image/b;->d:Z
    :try_end_3a
    .catch Ljava/net/SocketTimeoutException; {:try_start_33 .. :try_end_3a} :catch_161
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_33 .. :try_end_3a} :catch_15d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_33 .. :try_end_3a} :catch_15a
    .catch Ljava/lang/StackOverflowError; {:try_start_33 .. :try_end_3a} :catch_157
    .catch Ljava/lang/Error; {:try_start_33 .. :try_end_3a} :catch_154
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_151
    .catchall {:try_start_33 .. :try_end_3a} :catchall_14d

    const-string v3, "Task had been canceled."

    const-string v4, "-10001"

    if-eqz v1, :cond_4b

    .line 109
    :try_start_40
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1, v4, v3}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/net/SocketTimeoutException; {:try_start_40 .. :try_end_45} :catch_161
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_40 .. :try_end_45} :catch_15d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_40 .. :try_end_45} :catch_15a
    .catch Ljava/lang/StackOverflowError; {:try_start_40 .. :try_end_45} :catch_157
    .catch Ljava/lang/Error; {:try_start_40 .. :try_end_45} :catch_154
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_151
    .catchall {:try_start_40 .. :try_end_45} :catchall_14d

    .line 189
    if-eqz v2, :cond_4a

    .line 190
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 110
    :cond_4a
    return-void

    .line 113
    :cond_4b
    const v1, 0xea60

    :try_start_4e
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 114
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 116
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 117
    const/16 v5, 0xc8

    if-eq v1, v5, :cond_c7

    .line 119
    iget-object v5, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v5}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http respond status code is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ! url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/16 v5, 0x12e

    if-ne v1, v5, :cond_b8

    .line 122
    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    iget-boolean v1, v1, Lcom/anythink/core/common/res/image/b;->d:Z

    if-nez v1, :cond_ad

    .line 123
    const-string v1, "Location"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_ac

    .line 125
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_a9
    invoke-direct {p0, v1}, Lcom/anythink/core/common/res/image/b$1;->a(Ljava/lang/String;)V

    .line 132
    :cond_ac
    goto :goto_b2

    .line 133
    :cond_ad
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1, v4, v3}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/net/SocketTimeoutException; {:try_start_4e .. :try_end_b2} :catch_161
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4e .. :try_end_b2} :catch_15d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4e .. :try_end_b2} :catch_15a
    .catch Ljava/lang/StackOverflowError; {:try_start_4e .. :try_end_b2} :catch_157
    .catch Ljava/lang/Error; {:try_start_4e .. :try_end_b2} :catch_154
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_b2} :catch_151
    .catchall {:try_start_4e .. :try_end_b2} :catchall_14d

    .line 189
    :goto_b2
    if-eqz v2, :cond_b7

    .line 190
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    :cond_b7
    return-void

    .line 137
    :cond_b8
    :try_start_b8
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/net/SocketTimeoutException; {:try_start_b8 .. :try_end_c1} :catch_161
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b8 .. :try_end_c1} :catch_15d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b8 .. :try_end_c1} :catch_15a
    .catch Ljava/lang/StackOverflowError; {:try_start_b8 .. :try_end_c1} :catch_157
    .catch Ljava/lang/Error; {:try_start_b8 .. :try_end_c1} :catch_154
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c1} :catch_151
    .catchall {:try_start_b8 .. :try_end_c1} :catchall_14d

    .line 189
    if-eqz v2, :cond_c6

    .line 190
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 138
    :cond_c6
    return-void

    .line 143
    :cond_c7
    :try_start_c7
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    iget-boolean p1, p1, Lcom/anythink/core/common/res/image/b;->d:Z

    if-eqz p1, :cond_d8

    .line 144
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1, v4, v3}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d2
    .catch Ljava/net/SocketTimeoutException; {:try_start_c7 .. :try_end_d2} :catch_161
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c7 .. :try_end_d2} :catch_15d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c7 .. :try_end_d2} :catch_15a
    .catch Ljava/lang/StackOverflowError; {:try_start_c7 .. :try_end_d2} :catch_157
    .catch Ljava/lang/Error; {:try_start_c7 .. :try_end_d2} :catch_154
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d2} :catch_151
    .catchall {:try_start_c7 .. :try_end_d2} :catchall_14d

    .line 189
    if-eqz v2, :cond_d7

    .line 190
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 145
    :cond_d7
    return-void

    .line 147
    :cond_d8
    :try_start_d8
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, p1, Lcom/anythink/core/common/res/image/b;->i:J

    .line 148
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 149
    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/io/InputStream;)Z

    move-result v1

    .line 151
    if-eqz p1, :cond_f0

    .line 152
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 155
    :cond_f0
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/anythink/core/common/res/image/b;->g:J

    .line 156
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/anythink/core/common/res/image/b;->h:J

    .line 158
    if-eqz v1, :cond_124

    .line 159
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {p1}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "download success --> "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    iget-object v3, v3, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Lcom/anythink/core/common/res/image/b;->c()V

    goto :goto_147

    .line 162
    :cond_124
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {p1}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "download fail --> "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    iget-object v3, v3, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    const-string v1, "Save fail!"

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_147
    .catch Ljava/net/SocketTimeoutException; {:try_start_d8 .. :try_end_147} :catch_161
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d8 .. :try_end_147} :catch_15d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d8 .. :try_end_147} :catch_15a
    .catch Ljava/lang/StackOverflowError; {:try_start_d8 .. :try_end_147} :catch_157
    .catch Ljava/lang/Error; {:try_start_d8 .. :try_end_147} :catch_154
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_147} :catch_151
    .catchall {:try_start_d8 .. :try_end_147} :catchall_14d

    .line 189
    :goto_147
    if-eqz v2, :cond_212

    .line 190
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 189
    :catchall_14d
    move-exception p1

    move-object v1, v2

    goto/16 :goto_213

    .line 185
    :catch_151
    move-exception p1

    move-object v1, v2

    goto :goto_169

    .line 180
    :catch_154
    move-exception p1

    move-object v1, v2

    goto :goto_186

    .line 175
    :catch_157
    move-exception p1

    move-object v1, v2

    goto :goto_1a6

    .line 171
    :catch_15a
    move-exception p1

    move-object v1, v2

    goto :goto_1c6

    .line 169
    :catch_15d
    move-exception p1

    move-object v1, v2

    goto/16 :goto_1e6

    .line 166
    :catch_161
    move-exception p1

    move-object v1, v2

    goto/16 :goto_1f6

    .line 189
    :catchall_165
    move-exception p1

    goto/16 :goto_213

    .line 185
    :catch_168
    move-exception p1

    .line 186
    :goto_169
    :try_start_169
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v2}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17f
    .catchall {:try_start_169 .. :try_end_17f} :catchall_165

    .line 189
    if-eqz v1, :cond_212

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 180
    :catch_185
    move-exception p1

    .line 181
    :goto_186
    :try_start_186
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 182
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v2}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19f
    .catchall {:try_start_186 .. :try_end_19f} :catchall_165

    .line 189
    if-eqz v1, :cond_212

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 175
    :catch_1a5
    move-exception p1

    .line 176
    :goto_1a6
    :try_start_1a6
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 177
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v2}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1bf
    .catchall {:try_start_1a6 .. :try_end_1bf} :catchall_165

    .line 189
    if-eqz v1, :cond_212

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 171
    :catch_1c5
    move-exception p1

    .line 172
    :goto_1c6
    :try_start_1c6
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 173
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v2}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1df
    .catchall {:try_start_1c6 .. :try_end_1df} :catchall_165

    .line 189
    if-eqz v1, :cond_212

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 169
    :catch_1e5
    move-exception p1

    .line 170
    :goto_1e6
    :try_start_1e6
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ef
    .catchall {:try_start_1e6 .. :try_end_1ef} :catchall_165

    .line 189
    if-eqz v1, :cond_212

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 166
    :catch_1f5
    move-exception p1

    .line 167
    :goto_1f6
    :try_start_1f6
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v0}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20c
    .catchall {:try_start_1f6 .. :try_end_20c} :catchall_165

    .line 189
    if-eqz v1, :cond_212

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 194
    :cond_212
    return-void

    .line 189
    :goto_213
    if-eqz v1, :cond_218

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 192
    :cond_218
    throw p1
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 69
    const-string v0, "-10000"

    :try_start_2
    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    iget-object v1, v1, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/anythink/core/common/res/image/b$1;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_9} :catch_24
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_9} :catch_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 78
    return-void

    .line 74
    :catch_a
    move-exception v1

    .line 75
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v2}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void

    .line 71
    :catch_22
    move-exception v1

    goto :goto_25

    :catch_24
    move-exception v1

    .line 72
    :goto_25
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 73
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {v1}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
