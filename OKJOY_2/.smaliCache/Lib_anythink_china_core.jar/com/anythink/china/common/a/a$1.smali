.class final Lcom/anythink/china/common/a/a$1;
.super Lcom/anythink/core/common/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/common/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/china/common/a/a;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-direct {p0}, Lcom/anythink/core/common/g/a/b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 12

    .line 139
    const-string v0, "Http connect error!"

    const-string v1, "10000"

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/anythink/china/common/a/a;->o:J

    .line 140
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/anythink/china/common/a/a;->p:J

    .line 142
    nop

    .line 144
    const/4 v2, 0x0

    :try_start_16
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "REQUEST URL: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_32
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_32} :catch_2f2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_16 .. :try_end_32} :catch_2e6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_32} :catch_2bd
    .catch Ljava/lang/StackOverflowError; {:try_start_16 .. :try_end_32} :catch_294
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_32} :catch_26b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_32} :catch_245
    .catchall {:try_start_16 .. :try_end_32} :catchall_242

    .line 150
    const/4 v2, 0x0

    :try_start_33
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 153
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v2, Lcom/anythink/china/common/a/a;->n:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_87

    .line 154
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Range: startPos -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v8, v5, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  ,  endPos -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v8, v5, Lcom/anythink/china/common/a/a;->s:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v8, v5, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 157
    :cond_87
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v2, Lcom/anythink/china/common/a/a;->s:J

    .line 161
    :goto_90
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v2, Lcom/anythink/china/common/a/a;->s:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_b2

    .line 162
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object p1

    const-string v2, "downloadSize <= 0!"

    invoke-static {p1, v2}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v2, "downloadSize <= 0"

    invoke-static {v1, v2}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_ac
    .catch Ljava/net/SocketTimeoutException; {:try_start_33 .. :try_end_ac} :catch_23e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_33 .. :try_end_ac} :catch_23a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_33 .. :try_end_ac} :catch_236
    .catch Ljava/lang/StackOverflowError; {:try_start_33 .. :try_end_ac} :catch_233
    .catch Ljava/lang/Error; {:try_start_33 .. :try_end_ac} :catch_230
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_ac} :catch_22d
    .catchall {:try_start_33 .. :try_end_ac} :catchall_229

    .line 279
    if-eqz v3, :cond_b1

    .line 280
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_b1
    return-void

    .line 167
    :cond_b2
    :try_start_b2
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-boolean v2, v2, Lcom/anythink/china/common/a/a;->c:Z

    const/4 v4, 0x3

    if-eqz v2, :cond_d9

    .line 168
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object p1

    if-eqz p1, :cond_ca

    .line 169
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->f()V

    .line 171
    :cond_ca
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v4, p1, Lcom/anythink/china/common/a/a;->m:I

    .line 172
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {p1}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_d3
    .catch Ljava/net/SocketTimeoutException; {:try_start_b2 .. :try_end_d3} :catch_23e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b2 .. :try_end_d3} :catch_23a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b2 .. :try_end_d3} :catch_236
    .catch Ljava/lang/StackOverflowError; {:try_start_b2 .. :try_end_d3} :catch_233
    .catch Ljava/lang/Error; {:try_start_b2 .. :try_end_d3} :catch_230
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d3} :catch_22d
    .catchall {:try_start_b2 .. :try_end_d3} :catchall_229

    .line 279
    if-eqz v3, :cond_d8

    .line 280
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    :cond_d8
    return-void

    .line 176
    :cond_d9
    const v2, 0xea60

    :try_start_dc
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 177
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 179
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 180
    const/16 v5, 0xc8

    if-eq v2, v5, :cond_123

    const/16 v5, 0xce

    if-eq v2, v5, :cond_123

    .line 182
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http respond status code is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ! url="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v2, "10001"

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_11d
    .catch Ljava/net/SocketTimeoutException; {:try_start_dc .. :try_end_11d} :catch_23e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_dc .. :try_end_11d} :catch_23a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_dc .. :try_end_11d} :catch_236
    .catch Ljava/lang/StackOverflowError; {:try_start_dc .. :try_end_11d} :catch_233
    .catch Ljava/lang/Error; {:try_start_dc .. :try_end_11d} :catch_230
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_11d} :catch_22d
    .catchall {:try_start_dc .. :try_end_11d} :catchall_229

    .line 279
    if-eqz v3, :cond_122

    .line 280
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 184
    :cond_122
    return-void

    .line 187
    :cond_123
    :try_start_123
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-boolean p1, p1, Lcom/anythink/china/common/a/a;->c:Z

    if-eqz p1, :cond_149

    .line 188
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object p1

    if-eqz p1, :cond_13a

    .line 189
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->f()V

    .line 191
    :cond_13a
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v4, p1, Lcom/anythink/china/common/a/a;->m:I

    .line 192
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {p1}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_143
    .catch Ljava/net/SocketTimeoutException; {:try_start_123 .. :try_end_143} :catch_23e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_123 .. :try_end_143} :catch_23a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_123 .. :try_end_143} :catch_236
    .catch Ljava/lang/StackOverflowError; {:try_start_123 .. :try_end_143} :catch_233
    .catch Ljava/lang/Error; {:try_start_123 .. :try_end_143} :catch_230
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_143} :catch_22d
    .catchall {:try_start_123 .. :try_end_143} :catchall_229

    .line 279
    if-eqz v3, :cond_148

    .line 280
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 193
    :cond_148
    return-void

    .line 196
    :cond_149
    :try_start_149
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 198
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    if-eqz v2, :cond_15e

    .line 199
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/china/common/a/e;->e()V

    .line 201
    :cond_15e
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v4, Lcom/anythink/china/common/a/a;->s:J

    iput-wide v4, v2, Lcom/anythink/china/common/a/e;->h:J

    .line 203
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;

    move-result-object v2

    if-eqz v2, :cond_189

    .line 204
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;

    move-result-object v4

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v5

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v6, v2, Lcom/anythink/china/common/a/a;->n:J

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v8, v2, Lcom/anythink/china/common/a/a;->s:J

    invoke-interface/range {v4 .. v9}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;JJ)V

    .line 207
    :cond_189
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v4, v2, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    invoke-static {v2, v4, p1}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/a;Ljava/lang/String;Ljava/io/InputStream;)I

    move-result v2

    .line 208
    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v2, v4, Lcom/anythink/china/common/a/a;->m:I

    .line 210
    if-eqz p1, :cond_19a

    .line 211
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 214
    :cond_19a
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/anythink/china/common/a/a;->q:J

    .line 215
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/anythink/china/common/a/a;->r:J

    .line 216
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object p1

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v4, Lcom/anythink/china/common/a/a;->r:J

    iget-object v6, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v6, v6, Lcom/anythink/china/common/a/a;->p:J

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lcom/anythink/china/common/a/e;->i:J

    .line 218
    packed-switch v2, :pswitch_data_31a

    .line 229
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_1e9

    .line 225
    :pswitch_1c3
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {p1}, Lcom/anythink/china/common/a/a;->d()V

    .line 226
    goto :goto_223

    .line 220
    :pswitch_1c9
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "download success --> "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v4, v4, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {p1}, Lcom/anythink/china/common/a/a;->e()V

    .line 222
    goto :goto_223

    .line 229
    :goto_1e9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "download fail --> "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v4, v4, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Save fail!("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v4}, Lcom/anythink/china/common/a/a;->d(Lcom/anythink/china/common/a/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/b;)V
    :try_end_223
    .catch Ljava/net/SocketTimeoutException; {:try_start_149 .. :try_end_223} :catch_23e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_149 .. :try_end_223} :catch_23a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_149 .. :try_end_223} :catch_236
    .catch Ljava/lang/StackOverflowError; {:try_start_149 .. :try_end_223} :catch_233
    .catch Ljava/lang/Error; {:try_start_149 .. :try_end_223} :catch_230
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_223} :catch_22d
    .catchall {:try_start_149 .. :try_end_223} :catchall_229

    .line 279
    :goto_223
    if-eqz v3, :cond_313

    .line 280
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 279
    :catchall_229
    move-exception p1

    move-object v2, v3

    goto/16 :goto_314

    .line 265
    :catch_22d
    move-exception p1

    move-object v2, v3

    goto :goto_246

    .line 256
    :catch_230
    move-exception p1

    move-object v2, v3

    goto :goto_26c

    .line 247
    :catch_233
    move-exception p1

    move-object v2, v3

    goto :goto_295

    .line 238
    :catch_236
    move-exception p1

    move-object v2, v3

    goto/16 :goto_2be

    .line 236
    :catch_23a
    move-exception p1

    move-object v2, v3

    goto/16 :goto_2e7

    .line 233
    :catch_23e
    move-exception p1

    move-object v2, v3

    goto/16 :goto_2f3

    .line 279
    :catchall_242
    move-exception p1

    goto/16 :goto_314

    .line 265
    :catch_245
    move-exception p1

    .line 266
    :goto_246
    :try_start_246
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    nop

    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25c

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_25c
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v0}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_265
    .catchall {:try_start_246 .. :try_end_265} :catchall_242

    .line 279
    if-eqz v2, :cond_313

    .line 280
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 256
    :catch_26b
    move-exception p1

    .line 257
    :goto_26c
    :try_start_26c
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 258
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    nop

    .line 261
    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_285

    .line 262
    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_285
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v0}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_28e
    .catchall {:try_start_26c .. :try_end_28e} :catchall_242

    .line 279
    if-eqz v2, :cond_313

    .line 280
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 247
    :catch_294
    move-exception p1

    .line 248
    :goto_295
    :try_start_295
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 249
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    nop

    .line 252
    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2ae

    .line 253
    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_2ae
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v0}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_2b7
    .catchall {:try_start_295 .. :try_end_2b7} :catchall_242

    .line 279
    if-eqz v2, :cond_313

    .line 280
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 238
    :catch_2bd
    move-exception p1

    .line 239
    :goto_2be
    :try_start_2be
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 240
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    nop

    .line 243
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2d7

    .line 244
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_2d7
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v0}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_2e0
    .catchall {:try_start_2be .. :try_end_2e0} :catchall_242

    .line 279
    if-eqz v2, :cond_313

    .line 280
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 236
    :catch_2e6
    move-exception p1

    .line 237
    :goto_2e7
    :try_start_2e7
    iget-object v0, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v0, p1}, Lcom/anythink/china/common/a/a;->a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    :try_end_2ec
    .catchall {:try_start_2e7 .. :try_end_2ec} :catchall_242

    .line 279
    if-eqz v2, :cond_313

    .line 280
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 233
    :catch_2f2
    move-exception p1

    .line 234
    :goto_2f3
    :try_start_2f3
    iget-object v0, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v1, "20001"

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V

    .line 235
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30d
    .catchall {:try_start_2f3 .. :try_end_30d} :catchall_242

    .line 279
    if-eqz v2, :cond_313

    .line 280
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 284
    :cond_313
    return-void

    .line 279
    :goto_314
    if-eqz v2, :cond_319

    .line 280
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 282
    :cond_319
    throw p1

    :pswitch_data_31a
    .packed-switch 0x1
        :pswitch_1c9
        :pswitch_1c3
        :pswitch_1c3
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .registers 12

    .line 109
    const-string v0, "Http connect error!"

    const-string v1, "10000"

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start download url -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v4, v4, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :try_start_1e
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/a;)V

    .line 114
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v2, v2, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    .line 1139
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/anythink/china/common/a/a;->o:J

    .line 1140
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/anythink/china/common/a/a;->p:J
    :try_end_37
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_37} :catch_367
    .catch Ljava/lang/StackOverflowError; {:try_start_1e .. :try_end_37} :catch_365
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_37} :catch_344

    .line 1142
    const/4 v3, 0x0

    .line 1144
    :try_start_38
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "REQUEST URL: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_54
    .catch Ljava/net/SocketTimeoutException; {:try_start_38 .. :try_end_54} :catch_31c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_38 .. :try_end_54} :catch_310
    .catch Ljava/lang/OutOfMemoryError; {:try_start_38 .. :try_end_54} :catch_2e5
    .catch Ljava/lang/StackOverflowError; {:try_start_38 .. :try_end_54} :catch_2ba
    .catch Ljava/lang/Error; {:try_start_38 .. :try_end_54} :catch_28f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_54} :catch_267
    .catchall {:try_start_38 .. :try_end_54} :catchall_264

    .line 1150
    const/4 v3, 0x0

    :try_start_55
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1153
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v5, v3, Lcom/anythink/china/common/a/a;->n:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_a9

    .line 1154
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Range: startPos -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v9, v6, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ,  endPos -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v9, v6, Lcom/anythink/china/common/a/a;->s:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string v3, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bytes="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v9, v6, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    .line 1157
    :cond_a9
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v3, Lcom/anythink/china/common/a/a;->s:J

    .line 1161
    :goto_b2
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v5, v3, Lcom/anythink/china/common/a/a;->s:J

    cmp-long v3, v5, v7

    if-gtz v3, :cond_d4

    .line 1162
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadSize <= 0!"

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v3, "downloadSize <= 0"

    invoke-static {v1, v3}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_ce
    .catch Ljava/net/SocketTimeoutException; {:try_start_55 .. :try_end_ce} :catch_260
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_55 .. :try_end_ce} :catch_25c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_55 .. :try_end_ce} :catch_258
    .catch Ljava/lang/StackOverflowError; {:try_start_55 .. :try_end_ce} :catch_255
    .catch Ljava/lang/Error; {:try_start_55 .. :try_end_ce} :catch_252
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_ce} :catch_24f
    .catchall {:try_start_55 .. :try_end_ce} :catchall_24b

    .line 1279
    if-eqz v4, :cond_d3

    .line 1280
    :try_start_d0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d0 .. :try_end_d3} :catch_367
    .catch Ljava/lang/StackOverflowError; {:try_start_d0 .. :try_end_d3} :catch_365
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_344

    .line 1164
    :cond_d3
    return-void

    .line 1167
    :cond_d4
    :try_start_d4
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-boolean v3, v3, Lcom/anythink/china/common/a/a;->c:Z

    const/4 v5, 0x3

    if-eqz v3, :cond_fb

    .line 1168
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    if-eqz v2, :cond_ec

    .line 1169
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/china/common/a/e;->f()V

    .line 1171
    :cond_ec
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v5, v2, Lcom/anythink/china/common/a/a;->m:I

    .line 1172
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_f5
    .catch Ljava/net/SocketTimeoutException; {:try_start_d4 .. :try_end_f5} :catch_260
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d4 .. :try_end_f5} :catch_25c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d4 .. :try_end_f5} :catch_258
    .catch Ljava/lang/StackOverflowError; {:try_start_d4 .. :try_end_f5} :catch_255
    .catch Ljava/lang/Error; {:try_start_d4 .. :try_end_f5} :catch_252
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_f5} :catch_24f
    .catchall {:try_start_d4 .. :try_end_f5} :catchall_24b

    .line 1279
    if-eqz v4, :cond_fa

    .line 1280
    :try_start_f7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_fa
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f7 .. :try_end_fa} :catch_367
    .catch Ljava/lang/StackOverflowError; {:try_start_f7 .. :try_end_fa} :catch_365
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fa} :catch_344

    .line 1173
    :cond_fa
    return-void

    .line 1176
    :cond_fb
    const v3, 0xea60

    :try_start_fe
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1177
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 1179
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 1180
    const/16 v6, 0xc8

    if-eq v3, v6, :cond_145

    const/16 v6, 0xce

    if-eq v3, v6, :cond_145

    .line 1182
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http respond status code is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ! url="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v3, "10001"

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_13f
    .catch Ljava/net/SocketTimeoutException; {:try_start_fe .. :try_end_13f} :catch_260
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_fe .. :try_end_13f} :catch_25c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_fe .. :try_end_13f} :catch_258
    .catch Ljava/lang/StackOverflowError; {:try_start_fe .. :try_end_13f} :catch_255
    .catch Ljava/lang/Error; {:try_start_fe .. :try_end_13f} :catch_252
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_13f} :catch_24f
    .catchall {:try_start_fe .. :try_end_13f} :catchall_24b

    .line 1279
    if-eqz v4, :cond_144

    .line 1280
    :try_start_141
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_144
    .catch Ljava/lang/OutOfMemoryError; {:try_start_141 .. :try_end_144} :catch_367
    .catch Ljava/lang/StackOverflowError; {:try_start_141 .. :try_end_144} :catch_365
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_144} :catch_344

    .line 1184
    :cond_144
    return-void

    .line 1187
    :cond_145
    :try_start_145
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-boolean v2, v2, Lcom/anythink/china/common/a/a;->c:Z

    if-eqz v2, :cond_16b

    .line 1188
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    if-eqz v2, :cond_15c

    .line 1189
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/china/common/a/e;->f()V

    .line 1191
    :cond_15c
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v5, v2, Lcom/anythink/china/common/a/a;->m:I

    .line 1192
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_165
    .catch Ljava/net/SocketTimeoutException; {:try_start_145 .. :try_end_165} :catch_260
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_145 .. :try_end_165} :catch_25c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_145 .. :try_end_165} :catch_258
    .catch Ljava/lang/StackOverflowError; {:try_start_145 .. :try_end_165} :catch_255
    .catch Ljava/lang/Error; {:try_start_145 .. :try_end_165} :catch_252
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_165} :catch_24f
    .catchall {:try_start_145 .. :try_end_165} :catchall_24b

    .line 1279
    if-eqz v4, :cond_16a

    .line 1280
    :try_start_167
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_167 .. :try_end_16a} :catch_367
    .catch Ljava/lang/StackOverflowError; {:try_start_167 .. :try_end_16a} :catch_365
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16a} :catch_344

    .line 1193
    :cond_16a
    return-void

    .line 1196
    :cond_16b
    :try_start_16b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1198
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v3

    if-eqz v3, :cond_180

    .line 1199
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/china/common/a/e;->e()V

    .line 1201
    :cond_180
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v3

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v5, v5, Lcom/anythink/china/common/a/a;->s:J

    iput-wide v5, v3, Lcom/anythink/china/common/a/e;->h:J

    .line 1203
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;

    move-result-object v3

    if-eqz v3, :cond_1ab

    .line 1204
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;

    move-result-object v5

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v6

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v7, v3, Lcom/anythink/china/common/a/a;->n:J

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v9, v3, Lcom/anythink/china/common/a/a;->s:J

    invoke-interface/range {v5 .. v10}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;JJ)V

    .line 1207
    :cond_1ab
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v5, v3, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    invoke-static {v3, v5, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/a;Ljava/lang/String;Ljava/io/InputStream;)I

    move-result v3

    .line 1208
    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v3, v5, Lcom/anythink/china/common/a/a;->m:I

    .line 1210
    if-eqz v2, :cond_1bc

    .line 1211
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1214
    :cond_1bc
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/anythink/china/common/a/a;->q:J

    .line 1215
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/anythink/china/common/a/a;->r:J

    .line 1216
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v5, v5, Lcom/anythink/china/common/a/a;->r:J

    iget-object v7, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v7, v7, Lcom/anythink/china/common/a/a;->p:J

    sub-long/2addr v5, v7

    iput-wide v5, v2, Lcom/anythink/china/common/a/e;->i:J

    .line 1218
    packed-switch v3, :pswitch_data_38c

    .line 1229
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_20b

    .line 1225
    :pswitch_1e5
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->d()V

    .line 1226
    goto :goto_245

    .line 1220
    :pswitch_1eb
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "download success --> "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v5, v5, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->e()V

    .line 1222
    goto :goto_245

    .line 1229
    :goto_20b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "download fail --> "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v5, v5, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Save fail!("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v5}, Lcom/anythink/china/common/a/a;->d(Lcom/anythink/china/common/a/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/b;)V
    :try_end_245
    .catch Ljava/net/SocketTimeoutException; {:try_start_16b .. :try_end_245} :catch_260
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_16b .. :try_end_245} :catch_25c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16b .. :try_end_245} :catch_258
    .catch Ljava/lang/StackOverflowError; {:try_start_16b .. :try_end_245} :catch_255
    .catch Ljava/lang/Error; {:try_start_16b .. :try_end_245} :catch_252
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_245} :catch_24f
    .catchall {:try_start_16b .. :try_end_245} :catchall_24b

    .line 1279
    :goto_245
    if-eqz v4, :cond_33d

    .line 1280
    :try_start_247
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_24a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_247 .. :try_end_24a} :catch_367
    .catch Ljava/lang/StackOverflowError; {:try_start_247 .. :try_end_24a} :catch_365
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_24a} :catch_344

    return-void

    .line 1279
    :catchall_24b
    move-exception v2

    move-object v3, v4

    goto/16 :goto_33e

    .line 1265
    :catch_24f
    move-exception v2

    move-object v3, v4

    goto :goto_268

    .line 1256
    :catch_252
    move-exception v2

    move-object v3, v4

    goto :goto_290

    .line 1247
    :catch_255
    move-exception v2

    move-object v3, v4

    goto :goto_2bb

    .line 1238
    :catch_258
    move-exception v2

    move-object v3, v4

    goto/16 :goto_2e6

    .line 1236
    :catch_25c
    move-exception v2

    move-object v3, v4

    goto/16 :goto_311

    .line 1233
    :catch_260
    move-exception v2

    move-object v3, v4

    goto/16 :goto_31d

    .line 1279
    :catchall_264
    move-exception v2

    goto/16 :goto_33e

    .line 1265
    :catch_267
    move-exception v2

    .line 1266
    :goto_268
    :try_start_268
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    nop

    .line 1269
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27f

    .line 1270
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_280

    .line 1269
    :cond_27f
    move-object v2, v0

    .line 1276
    :goto_280
    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v2}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_289
    .catchall {:try_start_268 .. :try_end_289} :catchall_264

    .line 1279
    if-eqz v3, :cond_33d

    .line 1280
    :try_start_28b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_28e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28b .. :try_end_28e} :catch_367
    .catch Ljava/lang/StackOverflowError; {:try_start_28b .. :try_end_28e} :catch_365
    .catch Ljava/lang/Exception; {:try_start_28b .. :try_end_28e} :catch_344

    return-void

    .line 1256
    :catch_28f
    move-exception v2

    .line 1257
    :goto_290
    :try_start_290
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1258
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    nop

    .line 1261
    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2aa

    .line 1262
    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_2ab

    .line 1261
    :cond_2aa
    move-object v2, v0

    .line 1264
    :goto_2ab
    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v2}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_2b4
    .catchall {:try_start_290 .. :try_end_2b4} :catchall_264

    .line 1279
    if-eqz v3, :cond_33d

    .line 1280
    :try_start_2b6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2b9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b6 .. :try_end_2b9} :catch_367
    .catch Ljava/lang/StackOverflowError; {:try_start_2b6 .. :try_end_2b9} :catch_365
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_2b9} :catch_344

    return-void

    .line 1247
    :catch_2ba
    move-exception v2

    .line 1248
    :goto_2bb
    :try_start_2bb
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1249
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    nop

    .line 1252
    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d5

    .line 1253
    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d6

    .line 1252
    :cond_2d5
    move-object v2, v0

    .line 1255
    :goto_2d6
    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v2}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_2df
    .catchall {:try_start_2bb .. :try_end_2df} :catchall_264

    .line 1279
    if-eqz v3, :cond_33d

    .line 1280
    :try_start_2e1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2e4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2e1 .. :try_end_2e4} :catch_367
    .catch Ljava/lang/StackOverflowError; {:try_start_2e1 .. :try_end_2e4} :catch_365
    .catch Ljava/lang/Exception; {:try_start_2e1 .. :try_end_2e4} :catch_344

    return-void

    .line 1238
    :catch_2e5
    move-exception v2

    .line 1239
    :goto_2e6
    :try_start_2e6
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1240
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    nop

    .line 1243
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_300

    .line 1244
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_301

    .line 1243
    :cond_300
    move-object v2, v0

    .line 1246
    :goto_301
    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v2}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_30a
    .catchall {:try_start_2e6 .. :try_end_30a} :catchall_264

    .line 1279
    if-eqz v3, :cond_33d

    .line 1280
    :try_start_30c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_30f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_30c .. :try_end_30f} :catch_367
    .catch Ljava/lang/StackOverflowError; {:try_start_30c .. :try_end_30f} :catch_365
    .catch Ljava/lang/Exception; {:try_start_30c .. :try_end_30f} :catch_344

    return-void

    .line 1236
    :catch_310
    move-exception v2

    .line 1237
    :goto_311
    :try_start_311
    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v4, v2}, Lcom/anythink/china/common/a/a;->a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    :try_end_316
    .catchall {:try_start_311 .. :try_end_316} :catchall_264

    .line 1279
    if-eqz v3, :cond_33d

    .line 1280
    :try_start_318
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_31b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_318 .. :try_end_31b} :catch_367
    .catch Ljava/lang/StackOverflowError; {:try_start_318 .. :try_end_31b} :catch_365
    .catch Ljava/lang/Exception; {:try_start_318 .. :try_end_31b} :catch_344

    return-void

    .line 1233
    :catch_31c
    move-exception v2

    .line 1234
    :goto_31d
    :try_start_31d
    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v5, "20001"

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V

    .line 1235
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_337
    .catchall {:try_start_31d .. :try_end_337} :catchall_264

    .line 1279
    if-eqz v3, :cond_33d

    .line 1280
    :try_start_339
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 134
    :cond_33d
    return-void

    .line 1279
    :goto_33e
    if-eqz v3, :cond_343

    .line 1280
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1282
    :cond_343
    throw v2
    :try_end_344
    .catch Ljava/lang/OutOfMemoryError; {:try_start_339 .. :try_end_344} :catch_367
    .catch Ljava/lang/StackOverflowError; {:try_start_339 .. :try_end_344} :catch_365
    .catch Ljava/lang/Exception; {:try_start_339 .. :try_end_344} :catch_344

    .line 125
    :catch_344
    move-exception v2

    .line 126
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    nop

    .line 129
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35b

    .line 130
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_35b
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v0}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/b;)V

    .line 135
    return-void

    .line 116
    :catch_365
    move-exception v2

    goto :goto_368

    :catch_367
    move-exception v2

    .line 117
    :goto_368
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 118
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    nop

    .line 121
    invoke-virtual {v2}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_381

    .line 122
    invoke-virtual {v2}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_381
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v0}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/b;)V

    .line 134
    return-void

    nop

    :pswitch_data_38c
    .packed-switch 0x1
        :pswitch_1eb
        :pswitch_1e5
        :pswitch_1e5
    .end packed-switch
.end method
