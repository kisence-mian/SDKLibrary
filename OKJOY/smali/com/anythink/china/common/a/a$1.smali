.class final Lcom/anythink/china/common/a/a$1;
.super Lcom/anythink/china/common/a/a/b;


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

    .prologue
    .line 95
    iput-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-direct {p0}, Lcom/anythink/china/common/a/a/b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    .line 129
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/anythink/china/common/a/a;->n:J

    .line 131
    const/4 v8, 0x0

    .line 133
    :try_start_b
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "REQUEST URL: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 139
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 142
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v2, v2, Lcom/anythink/china/common/a/a;->m:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_9f

    .line 143
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Range: startPos -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v4, Lcom/anythink/china/common/a/a;->m:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ,  endPos -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v4, Lcom/anythink/china/common/a/a;->p:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v4, Lcom/anythink/china/common/a/a;->m:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_7b
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v2, v2, Lcom/anythink/china/common/a/a;->p:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_ca

    .line 151
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadSize <= 0!"

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v3, "10000"

    const-string v4, "downloadSize <= 0"

    invoke-static {v3, v4}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V
    :try_end_99
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_99} :catch_a9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_99} :catch_23a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_99} :catch_24d
    .catch Ljava/lang/StackOverflowError; {:try_start_b .. :try_end_99} :catch_27a
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_99} :catch_2a7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_99} :catch_2d4
    .catchall {:try_start_b .. :try_end_99} :catchall_2fe

    .line 267
    if-eqz v8, :cond_9e

    .line 268
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 272
    :cond_9e
    :goto_9e
    return-void

    .line 146
    :cond_9f
    :try_start_9f
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/anythink/china/common/a/a;->p:J
    :try_end_a8
    .catch Ljava/net/SocketTimeoutException; {:try_start_9f .. :try_end_a8} :catch_a9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9f .. :try_end_a8} :catch_23a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9f .. :try_end_a8} :catch_24d
    .catch Ljava/lang/StackOverflowError; {:try_start_9f .. :try_end_a8} :catch_27a
    .catch Ljava/lang/Error; {:try_start_9f .. :try_end_a8} :catch_2a7
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a8} :catch_2d4
    .catchall {:try_start_9f .. :try_end_a8} :catchall_2fe

    goto :goto_7b

    .line 221
    :catch_a9
    move-exception v2

    .line 222
    :try_start_aa
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v4, "20001"

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V

    .line 223
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catchall {:try_start_aa .. :try_end_c4} :catchall_2fe

    .line 267
    if-eqz v8, :cond_9e

    .line 268
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_9e

    .line 156
    :cond_ca
    :try_start_ca
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-boolean v2, v2, Lcom/anythink/china/common/a/a;->b:Z

    if-eqz v2, :cond_f1

    .line 157
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    if-eqz v2, :cond_e1

    .line 158
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/china/common/a/c;->f()V

    .line 160
    :cond_e1
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const/4 v3, 0x3

    iput v3, v2, Lcom/anythink/china/common/a/a;->l:I

    .line 161
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_eb
    .catch Ljava/net/SocketTimeoutException; {:try_start_ca .. :try_end_eb} :catch_a9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_ca .. :try_end_eb} :catch_23a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ca .. :try_end_eb} :catch_24d
    .catch Ljava/lang/StackOverflowError; {:try_start_ca .. :try_end_eb} :catch_27a
    .catch Ljava/lang/Error; {:try_start_ca .. :try_end_eb} :catch_2a7
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_eb} :catch_2d4
    .catchall {:try_start_ca .. :try_end_eb} :catchall_2fe

    .line 267
    if-eqz v8, :cond_9e

    .line 268
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_9e

    .line 165
    :cond_f1
    const v2, 0xea60

    :try_start_f4
    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 166
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 168
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 169
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_13c

    const/16 v3, 0xce

    if-eq v2, v3, :cond_13c

    .line 171
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http respond status code is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ! url="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v3, "10001"

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V
    :try_end_135
    .catch Ljava/net/SocketTimeoutException; {:try_start_f4 .. :try_end_135} :catch_a9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f4 .. :try_end_135} :catch_23a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f4 .. :try_end_135} :catch_24d
    .catch Ljava/lang/StackOverflowError; {:try_start_f4 .. :try_end_135} :catch_27a
    .catch Ljava/lang/Error; {:try_start_f4 .. :try_end_135} :catch_2a7
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_135} :catch_2d4
    .catchall {:try_start_f4 .. :try_end_135} :catchall_2fe

    .line 267
    if-eqz v8, :cond_9e

    .line 268
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_9e

    .line 176
    :cond_13c
    :try_start_13c
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-boolean v2, v2, Lcom/anythink/china/common/a/a;->b:Z

    if-eqz v2, :cond_164

    .line 177
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    if-eqz v2, :cond_153

    .line 178
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/china/common/a/c;->f()V

    .line 180
    :cond_153
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const/4 v3, 0x3

    iput v3, v2, Lcom/anythink/china/common/a/a;->l:I

    .line 181
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_15d
    .catch Ljava/net/SocketTimeoutException; {:try_start_13c .. :try_end_15d} :catch_a9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_13c .. :try_end_15d} :catch_23a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13c .. :try_end_15d} :catch_24d
    .catch Ljava/lang/StackOverflowError; {:try_start_13c .. :try_end_15d} :catch_27a
    .catch Ljava/lang/Error; {:try_start_13c .. :try_end_15d} :catch_2a7
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_15d} :catch_2d4
    .catchall {:try_start_13c .. :try_end_15d} :catchall_2fe

    .line 267
    if-eqz v8, :cond_9e

    .line 268
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_9e

    .line 185
    :cond_164
    :try_start_164
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 187
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    if-eqz v2, :cond_179

    .line 188
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/china/common/a/c;->e()V

    .line 190
    :cond_179
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v3, Lcom/anythink/china/common/a/a;->p:J

    iput-wide v4, v2, Lcom/anythink/china/common/a/c;->h:J

    .line 192
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;

    move-result-object v2

    if-eqz v2, :cond_1a4

    .line 193
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v4, Lcom/anythink/china/common/a/a;->m:J

    iget-object v6, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v6, v6, Lcom/anythink/china/common/a/a;->p:J

    invoke-interface/range {v2 .. v7}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/c;JJ)V

    .line 196
    :cond_1a4
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v3, v3, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-static {v2, v3, v9}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/a;Ljava/lang/String;Ljava/io/InputStream;)I

    move-result v2

    .line 197
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v2, v3, Lcom/anythink/china/common/a/a;->l:I

    .line 199
    if-eqz v9, :cond_1b7

    .line 200
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 203
    :cond_1b7
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/anythink/china/common/a/a;->o:J

    .line 204
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v4, Lcom/anythink/china/common/a/a;->o:J

    iget-object v6, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v6, v6, Lcom/anythink/china/common/a/a;->n:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/anythink/china/common/a/c;->i:J

    .line 206
    packed-switch v2, :pswitch_data_30e

    .line 217
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download fail --> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v4, v4, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v3, "10000"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Save fail!("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v5}, Lcom/anythink/china/common/a/a;->d(Lcom/anythink/china/common/a/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/api/ApkError;)V
    :try_end_213
    .catch Ljava/net/SocketTimeoutException; {:try_start_164 .. :try_end_213} :catch_a9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_164 .. :try_end_213} :catch_23a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_164 .. :try_end_213} :catch_24d
    .catch Ljava/lang/StackOverflowError; {:try_start_164 .. :try_end_213} :catch_27a
    .catch Ljava/lang/Error; {:try_start_164 .. :try_end_213} :catch_2a7
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_213} :catch_2d4
    .catchall {:try_start_164 .. :try_end_213} :catchall_2fe

    .line 267
    :goto_213
    if-eqz v8, :cond_9e

    .line 268
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_9e

    .line 208
    :pswitch_21a
    :try_start_21a
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download success --> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v4, v4, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->e()V
    :try_end_239
    .catch Ljava/net/SocketTimeoutException; {:try_start_21a .. :try_end_239} :catch_a9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_21a .. :try_end_239} :catch_23a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21a .. :try_end_239} :catch_24d
    .catch Ljava/lang/StackOverflowError; {:try_start_21a .. :try_end_239} :catch_27a
    .catch Ljava/lang/Error; {:try_start_21a .. :try_end_239} :catch_2a7
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_239} :catch_2d4
    .catchall {:try_start_21a .. :try_end_239} :catchall_2fe

    goto :goto_213

    .line 224
    :catch_23a
    move-exception v2

    .line 225
    :try_start_23b
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    :try_end_240
    .catchall {:try_start_23b .. :try_end_240} :catchall_2fe

    .line 267
    if-eqz v8, :cond_9e

    .line 268
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_9e

    .line 213
    :pswitch_247
    :try_start_247
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_24c
    .catch Ljava/net/SocketTimeoutException; {:try_start_247 .. :try_end_24c} :catch_a9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_247 .. :try_end_24c} :catch_23a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_247 .. :try_end_24c} :catch_24d
    .catch Ljava/lang/StackOverflowError; {:try_start_247 .. :try_end_24c} :catch_27a
    .catch Ljava/lang/Error; {:try_start_247 .. :try_end_24c} :catch_2a7
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_24c} :catch_2d4
    .catchall {:try_start_247 .. :try_end_24c} :catchall_2fe

    goto :goto_213

    .line 226
    :catch_24d
    move-exception v2

    .line 227
    :try_start_24e
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 228
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v3, "Http connect error!"

    .line 231
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30b

    .line 232
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 234
    :goto_268
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v4, "10000"

    invoke-static {v4, v2}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V
    :try_end_273
    .catchall {:try_start_24e .. :try_end_273} :catchall_2fe

    .line 267
    if-eqz v8, :cond_9e

    .line 268
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_9e

    .line 235
    :catch_27a
    move-exception v2

    .line 236
    :try_start_27b
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 237
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v3, "Http connect error!"

    .line 240
    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_309

    .line 241
    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 243
    :goto_295
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v4, "10000"

    invoke-static {v4, v2}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V
    :try_end_2a0
    .catchall {:try_start_27b .. :try_end_2a0} :catchall_2fe

    .line 267
    if-eqz v8, :cond_9e

    .line 268
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_9e

    .line 244
    :catch_2a7
    move-exception v2

    .line 245
    :try_start_2a8
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 246
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v3, "Http connect error!"

    .line 249
    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_307

    .line 250
    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 252
    :goto_2c2
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v4, "10000"

    invoke-static {v4, v2}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V
    :try_end_2cd
    .catchall {:try_start_2a8 .. :try_end_2cd} :catchall_2fe

    .line 267
    if-eqz v8, :cond_9e

    .line 268
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_9e

    .line 253
    :catch_2d4
    move-exception v2

    .line 254
    :try_start_2d5
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v3, "Http connect error!"

    .line 257
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_305

    .line 258
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 264
    :goto_2ec
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v4, "10000"

    invoke-static {v4, v2}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V
    :try_end_2f7
    .catchall {:try_start_2d5 .. :try_end_2f7} :catchall_2fe

    .line 267
    if-eqz v8, :cond_9e

    .line 268
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_9e

    .line 267
    :catchall_2fe
    move-exception v2

    if-eqz v8, :cond_304

    .line 268
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_304
    throw v2

    :cond_305
    move-object v2, v3

    goto :goto_2ec

    :cond_307
    move-object v2, v3

    goto :goto_2c2

    :cond_309
    move-object v2, v3

    goto :goto_295

    :cond_30b
    move-object v2, v3

    goto/16 :goto_268

    .line 206
    :pswitch_data_30e
    .packed-switch 0x1
        :pswitch_21a
        :pswitch_247
        :pswitch_247
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 99
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

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :try_start_1c
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/a;)V

    .line 104
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v3, v2, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    .line 1129
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/anythink/china/common/a/a;->n:J
    :try_end_2d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_2d} :catch_ed
    .catch Ljava/lang/StackOverflowError; {:try_start_1c .. :try_end_2d} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2d} :catch_188

    .line 1131
    const/4 v8, 0x0

    .line 1133
    :try_start_2e
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v4, "REQUEST URL: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 1139
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1142
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v2, Lcom/anythink/china/common/a/a;->m:J

    cmp-long v2, v4, v10

    if-lez v2, :cond_c2

    .line 1143
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Range: startPos -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v6, v5, Lcom/anythink/china/common/a/a;->m:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  ,  endPos -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v6, v5, Lcom/anythink/china/common/a/a;->p:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const-string v2, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v6, v5, Lcom/anythink/china/common/a/a;->m:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :goto_9e
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v2, Lcom/anythink/china/common/a/a;->p:J

    cmp-long v2, v4, v10

    if-gtz v2, :cond_114

    .line 1151
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadSize <= 0!"

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v3, "10000"

    const-string v4, "downloadSize <= 0"

    invoke-static {v3, v4}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V
    :try_end_bc
    .catch Ljava/net/SocketTimeoutException; {:try_start_2e .. :try_end_bc} :catch_cc
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2e .. :try_end_bc} :catch_2ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2e .. :try_end_bc} :catch_2bf
    .catch Ljava/lang/StackOverflowError; {:try_start_2e .. :try_end_bc} :catch_2ec
    .catch Ljava/lang/Error; {:try_start_2e .. :try_end_bc} :catch_319
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_bc} :catch_346
    .catchall {:try_start_2e .. :try_end_bc} :catchall_370

    .line 1267
    if-eqz v8, :cond_c1

    .line 1268
    :try_start_be
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_be .. :try_end_c1} :catch_ed
    .catch Ljava/lang/StackOverflowError; {:try_start_be .. :try_end_c1} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_188

    :cond_c1
    :goto_c1
    return-void

    .line 1146
    :cond_c2
    :try_start_c2
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v2, Lcom/anythink/china/common/a/a;->p:J
    :try_end_cb
    .catch Ljava/net/SocketTimeoutException; {:try_start_c2 .. :try_end_cb} :catch_cc
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c2 .. :try_end_cb} :catch_2ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c2 .. :try_end_cb} :catch_2bf
    .catch Ljava/lang/StackOverflowError; {:try_start_c2 .. :try_end_cb} :catch_2ec
    .catch Ljava/lang/Error; {:try_start_c2 .. :try_end_cb} :catch_319
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cb} :catch_346
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_370

    goto :goto_9e

    .line 1221
    :catch_cc
    move-exception v2

    .line 1222
    :try_start_cd
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v4, "20001"

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V

    .line 1223
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_cd .. :try_end_e7} :catchall_370

    .line 1267
    if-eqz v8, :cond_c1

    .line 1268
    :try_start_e9
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ec
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e9 .. :try_end_ec} :catch_ed
    .catch Ljava/lang/StackOverflowError; {:try_start_e9 .. :try_end_ec} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_188

    goto :goto_c1

    .line 106
    :catch_ed
    move-exception v2

    .line 107
    :goto_ee
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 108
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v3, "Http connect error!"

    .line 111
    invoke-virtual {v2}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_377

    .line 112
    invoke-virtual {v2}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 114
    :goto_108
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v4, "10000"

    invoke-static {v4, v2}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/api/ApkError;)V

    goto :goto_c1

    .line 1156
    :cond_114
    :try_start_114
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-boolean v2, v2, Lcom/anythink/china/common/a/a;->b:Z

    if-eqz v2, :cond_13d

    .line 1157
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    if-eqz v2, :cond_12b

    .line 1158
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/china/common/a/c;->f()V

    .line 1160
    :cond_12b
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const/4 v3, 0x3

    iput v3, v2, Lcom/anythink/china/common/a/a;->l:I

    .line 1161
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_135
    .catch Ljava/net/SocketTimeoutException; {:try_start_114 .. :try_end_135} :catch_cc
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_114 .. :try_end_135} :catch_2ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_114 .. :try_end_135} :catch_2bf
    .catch Ljava/lang/StackOverflowError; {:try_start_114 .. :try_end_135} :catch_2ec
    .catch Ljava/lang/Error; {:try_start_114 .. :try_end_135} :catch_319
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_135} :catch_346
    .catchall {:try_start_114 .. :try_end_135} :catchall_370

    .line 1267
    if-eqz v8, :cond_c1

    .line 1268
    :try_start_137
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_137 .. :try_end_13a} :catch_ed
    .catch Ljava/lang/StackOverflowError; {:try_start_137 .. :try_end_13a} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13a} :catch_188

    goto :goto_c1

    .line 106
    :catch_13b
    move-exception v2

    goto :goto_ee

    .line 1165
    :cond_13d
    const v2, 0xea60

    :try_start_140
    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1166
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 1168
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 1169
    const/16 v4, 0xc8

    if-eq v2, v4, :cond_1ae

    const/16 v4, 0xce

    if-eq v2, v4, :cond_1ae

    .line 1171
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

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v3, "10001"

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V
    :try_end_181
    .catch Ljava/net/SocketTimeoutException; {:try_start_140 .. :try_end_181} :catch_cc
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_140 .. :try_end_181} :catch_2ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_140 .. :try_end_181} :catch_2bf
    .catch Ljava/lang/StackOverflowError; {:try_start_140 .. :try_end_181} :catch_2ec
    .catch Ljava/lang/Error; {:try_start_140 .. :try_end_181} :catch_319
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_181} :catch_346
    .catchall {:try_start_140 .. :try_end_181} :catchall_370

    .line 1267
    if-eqz v8, :cond_c1

    .line 1268
    :try_start_183
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_186
    .catch Ljava/lang/OutOfMemoryError; {:try_start_183 .. :try_end_186} :catch_ed
    .catch Ljava/lang/StackOverflowError; {:try_start_183 .. :try_end_186} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_186} :catch_188

    goto/16 :goto_c1

    .line 115
    :catch_188
    move-exception v2

    move-object v3, v2

    .line 116
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "Http connect error!"

    .line 119
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a1

    .line 120
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 122
    :cond_1a1
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v4, "10000"

    invoke-static {v4, v2}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/api/ApkError;)V

    goto/16 :goto_c1

    .line 1176
    :cond_1ae
    :try_start_1ae
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-boolean v2, v2, Lcom/anythink/china/common/a/a;->b:Z

    if-eqz v2, :cond_1d6

    .line 1177
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    if-eqz v2, :cond_1c5

    .line 1178
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/china/common/a/c;->f()V

    .line 1180
    :cond_1c5
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const/4 v3, 0x3

    iput v3, v2, Lcom/anythink/china/common/a/a;->l:I

    .line 1181
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_1cf
    .catch Ljava/net/SocketTimeoutException; {:try_start_1ae .. :try_end_1cf} :catch_cc
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1ae .. :try_end_1cf} :catch_2ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1ae .. :try_end_1cf} :catch_2bf
    .catch Ljava/lang/StackOverflowError; {:try_start_1ae .. :try_end_1cf} :catch_2ec
    .catch Ljava/lang/Error; {:try_start_1ae .. :try_end_1cf} :catch_319
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1cf} :catch_346
    .catchall {:try_start_1ae .. :try_end_1cf} :catchall_370

    .line 1267
    if-eqz v8, :cond_c1

    .line 1268
    :try_start_1d1
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1d4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d1 .. :try_end_1d4} :catch_ed
    .catch Ljava/lang/StackOverflowError; {:try_start_1d1 .. :try_end_1d4} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1d4} :catch_188

    goto/16 :goto_c1

    .line 1185
    :cond_1d6
    :try_start_1d6
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 1187
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    if-eqz v2, :cond_1eb

    .line 1188
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/china/common/a/c;->e()V

    .line 1190
    :cond_1eb
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v3, Lcom/anythink/china/common/a/a;->p:J

    iput-wide v4, v2, Lcom/anythink/china/common/a/c;->h:J

    .line 1192
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;

    move-result-object v2

    if-eqz v2, :cond_216

    .line 1193
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v4, Lcom/anythink/china/common/a/a;->m:J

    iget-object v6, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v6, v6, Lcom/anythink/china/common/a/a;->p:J

    invoke-interface/range {v2 .. v7}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/c;JJ)V

    .line 1196
    :cond_216
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v3, v3, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-static {v2, v3, v9}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/a;Ljava/lang/String;Ljava/io/InputStream;)I

    move-result v2

    .line 1197
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v2, v3, Lcom/anythink/china/common/a/a;->l:I

    .line 1199
    if-eqz v9, :cond_229

    .line 1200
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1203
    :cond_229
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/anythink/china/common/a/a;->o:J

    .line 1204
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v4, Lcom/anythink/china/common/a/a;->o:J

    iget-object v6, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v6, v6, Lcom/anythink/china/common/a/a;->n:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/anythink/china/common/a/c;->i:J

    .line 1206
    packed-switch v2, :pswitch_data_384

    .line 1217
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download fail --> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v4, v4, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v3, "10000"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Save fail!("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v5}, Lcom/anythink/china/common/a/a;->d(Lcom/anythink/china/common/a/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/api/ApkError;)V
    :try_end_285
    .catch Ljava/net/SocketTimeoutException; {:try_start_1d6 .. :try_end_285} :catch_cc
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1d6 .. :try_end_285} :catch_2ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d6 .. :try_end_285} :catch_2bf
    .catch Ljava/lang/StackOverflowError; {:try_start_1d6 .. :try_end_285} :catch_2ec
    .catch Ljava/lang/Error; {:try_start_1d6 .. :try_end_285} :catch_319
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_285} :catch_346
    .catchall {:try_start_1d6 .. :try_end_285} :catchall_370

    .line 1267
    :goto_285
    if-eqz v8, :cond_c1

    .line 1268
    :try_start_287
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_28a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_287 .. :try_end_28a} :catch_ed
    .catch Ljava/lang/StackOverflowError; {:try_start_287 .. :try_end_28a} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_287 .. :try_end_28a} :catch_188

    goto/16 :goto_c1

    .line 1208
    :pswitch_28c
    :try_start_28c
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download success --> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v4, v4, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->e()V
    :try_end_2ab
    .catch Ljava/net/SocketTimeoutException; {:try_start_28c .. :try_end_2ab} :catch_cc
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_28c .. :try_end_2ab} :catch_2ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28c .. :try_end_2ab} :catch_2bf
    .catch Ljava/lang/StackOverflowError; {:try_start_28c .. :try_end_2ab} :catch_2ec
    .catch Ljava/lang/Error; {:try_start_28c .. :try_end_2ab} :catch_319
    .catch Ljava/lang/Exception; {:try_start_28c .. :try_end_2ab} :catch_346
    .catchall {:try_start_28c .. :try_end_2ab} :catchall_370

    goto :goto_285

    .line 1224
    :catch_2ac
    move-exception v2

    .line 1225
    :try_start_2ad
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    :try_end_2b2
    .catchall {:try_start_2ad .. :try_end_2b2} :catchall_370

    .line 1267
    if-eqz v8, :cond_c1

    .line 1268
    :try_start_2b4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2b7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b4 .. :try_end_2b7} :catch_ed
    .catch Ljava/lang/StackOverflowError; {:try_start_2b4 .. :try_end_2b7} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_2b4 .. :try_end_2b7} :catch_188

    goto/16 :goto_c1

    .line 1213
    :pswitch_2b9
    :try_start_2b9
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_2be
    .catch Ljava/net/SocketTimeoutException; {:try_start_2b9 .. :try_end_2be} :catch_cc
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2b9 .. :try_end_2be} :catch_2ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b9 .. :try_end_2be} :catch_2bf
    .catch Ljava/lang/StackOverflowError; {:try_start_2b9 .. :try_end_2be} :catch_2ec
    .catch Ljava/lang/Error; {:try_start_2b9 .. :try_end_2be} :catch_319
    .catch Ljava/lang/Exception; {:try_start_2b9 .. :try_end_2be} :catch_346
    .catchall {:try_start_2b9 .. :try_end_2be} :catchall_370

    goto :goto_285

    .line 1226
    :catch_2bf
    move-exception v2

    .line 1227
    :try_start_2c0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1228
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v3, "Http connect error!"

    .line 1231
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_380

    .line 1232
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1234
    :goto_2da
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v4, "10000"

    invoke-static {v4, v2}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V
    :try_end_2e5
    .catchall {:try_start_2c0 .. :try_end_2e5} :catchall_370

    .line 1267
    if-eqz v8, :cond_c1

    .line 1268
    :try_start_2e7
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2ea
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2e7 .. :try_end_2ea} :catch_ed
    .catch Ljava/lang/StackOverflowError; {:try_start_2e7 .. :try_end_2ea} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_2e7 .. :try_end_2ea} :catch_188

    goto/16 :goto_c1

    .line 1235
    :catch_2ec
    move-exception v2

    .line 1236
    :try_start_2ed
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1237
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string v3, "Http connect error!"

    .line 1240
    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37e

    .line 1241
    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1243
    :goto_307
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v4, "10000"

    invoke-static {v4, v2}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V
    :try_end_312
    .catchall {:try_start_2ed .. :try_end_312} :catchall_370

    .line 1267
    if-eqz v8, :cond_c1

    .line 1268
    :try_start_314
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_317
    .catch Ljava/lang/OutOfMemoryError; {:try_start_314 .. :try_end_317} :catch_ed
    .catch Ljava/lang/StackOverflowError; {:try_start_314 .. :try_end_317} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_314 .. :try_end_317} :catch_188

    goto/16 :goto_c1

    .line 1244
    :catch_319
    move-exception v2

    .line 1245
    :try_start_31a
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1246
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v3, "Http connect error!"

    .line 1249
    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37c

    .line 1250
    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1252
    :goto_334
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v4, "10000"

    invoke-static {v4, v2}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V
    :try_end_33f
    .catchall {:try_start_31a .. :try_end_33f} :catchall_370

    .line 1267
    if-eqz v8, :cond_c1

    .line 1268
    :try_start_341
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_344
    .catch Ljava/lang/OutOfMemoryError; {:try_start_341 .. :try_end_344} :catch_ed
    .catch Ljava/lang/StackOverflowError; {:try_start_341 .. :try_end_344} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_341 .. :try_end_344} :catch_188

    goto/16 :goto_c1

    .line 1253
    :catch_346
    move-exception v2

    .line 1254
    :try_start_347
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v3, "Http connect error!"

    .line 1257
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37a

    .line 1258
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1264
    :goto_35e
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v4, "10000"

    invoke-static {v4, v2}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/api/ApkError;)V
    :try_end_369
    .catchall {:try_start_347 .. :try_end_369} :catchall_370

    .line 1267
    if-eqz v8, :cond_c1

    .line 1268
    :try_start_36b
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_c1

    .line 1267
    :catchall_370
    move-exception v2

    if-eqz v8, :cond_376

    .line 1268
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_376
    throw v2
    :try_end_377
    .catch Ljava/lang/OutOfMemoryError; {:try_start_36b .. :try_end_377} :catch_ed
    .catch Ljava/lang/StackOverflowError; {:try_start_36b .. :try_end_377} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_36b .. :try_end_377} :catch_188

    :cond_377
    move-object v2, v3

    goto/16 :goto_108

    :cond_37a
    move-object v2, v3

    goto :goto_35e

    :cond_37c
    move-object v2, v3

    goto :goto_334

    :cond_37e
    move-object v2, v3

    goto :goto_307

    :cond_380
    move-object v2, v3

    goto/16 :goto_2da

    .line 1206
    nop

    :pswitch_data_384
    .packed-switch 0x1
        :pswitch_28c
        :pswitch_2b9
        :pswitch_2b9
    .end packed-switch
.end method
