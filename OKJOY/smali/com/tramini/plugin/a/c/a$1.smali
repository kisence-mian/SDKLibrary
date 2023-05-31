.class final Lcom/tramini/plugin/a/c/a$1;
.super Lcom/tramini/plugin/a/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/c/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tramini/plugin/a/c/a;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/c/a;I)V
    .registers 3

    .prologue
    .line 152
    iput-object p1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    iput p2, p0, Lcom/tramini/plugin/a/c/a$1;->a:I

    invoke-direct {p0}, Lcom/tramini/plugin/a/f/a/b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 187
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_c} :catch_168
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_c} :catch_164
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_c} :catch_161
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_c} :catch_fc
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_c} :catch_10a
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_c} :catch_11b
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_c} :catch_12c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_13d
    .catchall {:try_start_1 .. :try_end_c} :catchall_14b

    .line 200
    const/4 v1, 0x1

    :try_start_d
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 201
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 202
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 203
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 209
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->c()Ljava/util/Map;

    move-result-object v3

    .line 210
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_53

    .line 211
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 212
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_46} :catch_47
    .catch Ljava/net/ConnectException; {:try_start_d .. :try_end_46} :catch_a6
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_46} :catch_ef
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_46} :catch_15f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_46} :catch_15d
    .catch Ljava/lang/StackOverflowError; {:try_start_d .. :try_end_46} :catch_15b
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_46} :catch_159
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_46} :catch_157
    .catchall {:try_start_d .. :try_end_46} :catchall_152

    goto :goto_31

    .line 272
    :catch_47
    move-exception v1

    :goto_48
    :try_start_48
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_152

    .line 295
    if-eqz v0, :cond_52

    .line 297
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 301
    :cond_52
    :goto_52
    return-void

    .line 218
    :cond_53
    const/16 v1, 0x4e20

    :try_start_55
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 219
    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 220
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 224
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->d()[B

    move-result-object v1

    .line 226
    if-eqz v1, :cond_76

    .line 227
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 228
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 229
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 230
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 233
    :cond_76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 235
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_89

    .line 236
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_83
    .catch Ljava/net/UnknownHostException; {:try_start_55 .. :try_end_83} :catch_47
    .catch Ljava/net/ConnectException; {:try_start_55 .. :try_end_83} :catch_a6
    .catch Ljava/net/SocketTimeoutException; {:try_start_55 .. :try_end_83} :catch_ef
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_55 .. :try_end_83} :catch_15f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_55 .. :try_end_83} :catch_15d
    .catch Ljava/lang/StackOverflowError; {:try_start_55 .. :try_end_83} :catch_15b
    .catch Ljava/lang/Error; {:try_start_55 .. :try_end_83} :catch_159
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_83} :catch_157
    .catchall {:try_start_55 .. :try_end_83} :catchall_152

    .line 295
    if-eqz v0, :cond_52

    .line 297
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_52

    .line 241
    :cond_89
    :try_start_89
    invoke-static {v0}, Lcom/tramini/plugin/a/c/a;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    .line 242
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 243
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    :goto_9c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b2

    .line 247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a5
    .catch Ljava/net/UnknownHostException; {:try_start_89 .. :try_end_a5} :catch_47
    .catch Ljava/net/ConnectException; {:try_start_89 .. :try_end_a5} :catch_a6
    .catch Ljava/net/SocketTimeoutException; {:try_start_89 .. :try_end_a5} :catch_ef
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_89 .. :try_end_a5} :catch_15f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_89 .. :try_end_a5} :catch_15d
    .catch Ljava/lang/StackOverflowError; {:try_start_89 .. :try_end_a5} :catch_15b
    .catch Ljava/lang/Error; {:try_start_89 .. :try_end_a5} :catch_159
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_a5} :catch_157
    .catchall {:try_start_89 .. :try_end_a5} :catchall_152

    goto :goto_9c

    .line 274
    :catch_a6
    move-exception v1

    :goto_a7
    :try_start_a7
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_152

    .line 295
    if-eqz v0, :cond_52

    .line 297
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_52

    .line 251
    :cond_b2
    :try_start_b2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 254
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 256
    if-eqz v1, :cond_bd

    .line 257
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 260
    :cond_bd
    const-string v1, "https://aa.birdgesdk.com/v1/d_api"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 261
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    invoke-virtual {v2, v1}, Lcom/tramini/plugin/a/c/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v2, v1}, Lcom/tramini/plugin/a/c/a;->a(Ljava/lang/Object;)V
    :try_end_d7
    .catch Ljava/net/UnknownHostException; {:try_start_b2 .. :try_end_d7} :catch_47
    .catch Ljava/net/ConnectException; {:try_start_b2 .. :try_end_d7} :catch_a6
    .catch Ljava/net/SocketTimeoutException; {:try_start_b2 .. :try_end_d7} :catch_ef
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b2 .. :try_end_d7} :catch_15f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b2 .. :try_end_d7} :catch_15d
    .catch Ljava/lang/StackOverflowError; {:try_start_b2 .. :try_end_d7} :catch_15b
    .catch Ljava/lang/Error; {:try_start_b2 .. :try_end_d7} :catch_159
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d7} :catch_157
    .catchall {:try_start_b2 .. :try_end_d7} :catchall_152

    .line 295
    :goto_d7
    if-eqz v0, :cond_52

    .line 297
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_52

    .line 266
    :cond_de
    :try_start_de
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tramini/plugin/a/c/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 267
    iget-object v2, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v2, v1}, Lcom/tramini/plugin/a/c/a;->a(Ljava/lang/Object;)V
    :try_end_ee
    .catch Ljava/net/UnknownHostException; {:try_start_de .. :try_end_ee} :catch_47
    .catch Ljava/net/ConnectException; {:try_start_de .. :try_end_ee} :catch_a6
    .catch Ljava/net/SocketTimeoutException; {:try_start_de .. :try_end_ee} :catch_ef
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_de .. :try_end_ee} :catch_15f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_de .. :try_end_ee} :catch_15d
    .catch Ljava/lang/StackOverflowError; {:try_start_de .. :try_end_ee} :catch_15b
    .catch Ljava/lang/Error; {:try_start_de .. :try_end_ee} :catch_159
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_ee} :catch_157
    .catchall {:try_start_de .. :try_end_ee} :catchall_152

    goto :goto_d7

    .line 276
    :catch_ef
    move-exception v1

    :goto_f0
    :try_start_f0
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_f5
    .catchall {:try_start_f0 .. :try_end_f5} :catchall_152

    .line 295
    if-eqz v0, :cond_52

    .line 297
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_52

    .line 279
    :catch_fc
    move-exception v0

    move-object v0, v1

    :goto_fe
    :try_start_fe
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->g()V
    :try_end_103
    .catchall {:try_start_fe .. :try_end_103} :catchall_152

    .line 295
    if-eqz v0, :cond_52

    .line 297
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_52

    .line 281
    :catch_10a
    move-exception v0

    move-object v0, v1

    :goto_10c
    :try_start_10c
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 282
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_114
    .catchall {:try_start_10c .. :try_end_114} :catchall_152

    .line 295
    if-eqz v0, :cond_52

    .line 297
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_52

    .line 284
    :catch_11b
    move-exception v0

    move-object v0, v1

    :goto_11d
    :try_start_11d
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 285
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_125
    .catchall {:try_start_11d .. :try_end_125} :catchall_152

    .line 295
    if-eqz v0, :cond_52

    .line 297
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_52

    .line 287
    :catch_12c
    move-exception v0

    move-object v0, v1

    :goto_12e
    :try_start_12e
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 288
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_136
    .catchall {:try_start_12e .. :try_end_136} :catchall_152

    .line 295
    if-eqz v0, :cond_52

    .line 297
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_52

    .line 293
    :catch_13d
    move-exception v0

    move-object v0, v1

    :goto_13f
    :try_start_13f
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_144
    .catchall {:try_start_13f .. :try_end_144} :catchall_152

    .line 295
    if-eqz v0, :cond_52

    .line 297
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_52

    .line 295
    :catchall_14b
    move-exception v0

    :goto_14c
    if-eqz v1, :cond_151

    .line 297
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_151
    throw v0

    .line 295
    :catchall_152
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_14c

    .line 293
    :catch_157
    move-exception v1

    goto :goto_13f

    .line 287
    :catch_159
    move-exception v1

    goto :goto_12e

    .line 284
    :catch_15b
    move-exception v1

    goto :goto_11d

    .line 281
    :catch_15d
    move-exception v1

    goto :goto_10c

    .line 279
    :catch_15f
    move-exception v1

    goto :goto_fe

    .line 276
    :catch_161
    move-exception v0

    move-object v0, v1

    goto :goto_f0

    .line 274
    :catch_164
    move-exception v0

    move-object v0, v1

    goto/16 :goto_a7

    .line 272
    :catch_168
    move-exception v0

    move-object v0, v1

    goto/16 :goto_48
.end method


# virtual methods
.method public final a()V
    .registers 9

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/c/a;->l:Lcom/tramini/plugin/a/c/b;

    if-eqz v0, :cond_d

    .line 158
    iget-object v0, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/c/a;->l:Lcom/tramini/plugin/a/c/b;

    invoke-interface {v0}, Lcom/tramini/plugin/a/c/b;->a()V

    .line 161
    :cond_d
    iget-object v0, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/c/a;->b()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_12} :catch_9c
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_12} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_105

    move-result-object v3

    .line 1182
    const/4 v1, 0x0

    .line 1187
    :try_start_14
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1f
    .catch Ljava/net/UnknownHostException; {:try_start_14 .. :try_end_1f} :catch_19f
    .catch Ljava/net/ConnectException; {:try_start_14 .. :try_end_1f} :catch_19b
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_1f} :catch_198
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_14 .. :try_end_1f} :catch_133
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_1f} :catch_141
    .catch Ljava/lang/StackOverflowError; {:try_start_14 .. :try_end_1f} :catch_152
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_1f} :catch_163
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_174
    .catchall {:try_start_14 .. :try_end_1f} :catchall_182

    .line 1200
    const/4 v1, 0x1

    :try_start_20
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1201
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1202
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1203
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1209
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->c()Ljava/util/Map;

    move-result-object v4

    .line 1210
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_66

    .line 1211
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1212
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/net/UnknownHostException; {:try_start_20 .. :try_end_59} :catch_5a
    .catch Ljava/net/ConnectException; {:try_start_20 .. :try_end_59} :catch_cb
    .catch Ljava/net/SocketTimeoutException; {:try_start_20 .. :try_end_59} :catch_126
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_20 .. :try_end_59} :catch_196
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_59} :catch_194
    .catch Ljava/lang/StackOverflowError; {:try_start_20 .. :try_end_59} :catch_192
    .catch Ljava/lang/Error; {:try_start_20 .. :try_end_59} :catch_190
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_59} :catch_18e
    .catchall {:try_start_20 .. :try_end_59} :catchall_189

    goto :goto_44

    .line 1272
    :catch_5a
    move-exception v1

    :goto_5b
    :try_start_5b
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_189

    .line 1295
    if-eqz v0, :cond_65

    .line 1297
    :try_start_62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_65
    .catch Ljava/lang/OutOfMemoryError; {:try_start_62 .. :try_end_65} :catch_9c
    .catch Ljava/lang/StackOverflowError; {:try_start_62 .. :try_end_65} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_105

    :cond_65
    :goto_65
    return-void

    .line 1218
    :cond_66
    const/16 v1, 0x4e20

    :try_start_68
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1219
    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1220
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1224
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->d()[B

    move-result-object v1

    .line 1226
    if-eqz v1, :cond_89

    .line 1227
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 1228
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1229
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 1230
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1233
    :cond_89
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 1235
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_ae

    .line 1236
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_96
    .catch Ljava/net/UnknownHostException; {:try_start_68 .. :try_end_96} :catch_5a
    .catch Ljava/net/ConnectException; {:try_start_68 .. :try_end_96} :catch_cb
    .catch Ljava/net/SocketTimeoutException; {:try_start_68 .. :try_end_96} :catch_126
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_68 .. :try_end_96} :catch_196
    .catch Ljava/lang/OutOfMemoryError; {:try_start_68 .. :try_end_96} :catch_194
    .catch Ljava/lang/StackOverflowError; {:try_start_68 .. :try_end_96} :catch_192
    .catch Ljava/lang/Error; {:try_start_68 .. :try_end_96} :catch_190
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_96} :catch_18e
    .catchall {:try_start_68 .. :try_end_96} :catchall_189

    .line 1295
    if-eqz v0, :cond_65

    .line 1297
    :try_start_98
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_98 .. :try_end_9b} :catch_9c
    .catch Ljava/lang/StackOverflowError; {:try_start_98 .. :try_end_9b} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_105

    goto :goto_65

    .line 165
    :catch_9c
    move-exception v0

    :goto_9d
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 166
    iget-object v0, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/c/a;->l:Lcom/tramini/plugin/a/c/b;

    if-eqz v0, :cond_65

    .line 167
    iget-object v0, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/c/a;->l:Lcom/tramini/plugin/a/c/b;

    invoke-interface {v0}, Lcom/tramini/plugin/a/c/b;->b()V

    goto :goto_65

    .line 1241
    :cond_ae
    :try_start_ae
    invoke-static {v0}, Lcom/tramini/plugin/a/c/a;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    .line 1242
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1243
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1246
    :goto_c1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d9

    .line 1247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ca
    .catch Ljava/net/UnknownHostException; {:try_start_ae .. :try_end_ca} :catch_5a
    .catch Ljava/net/ConnectException; {:try_start_ae .. :try_end_ca} :catch_cb
    .catch Ljava/net/SocketTimeoutException; {:try_start_ae .. :try_end_ca} :catch_126
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_ae .. :try_end_ca} :catch_196
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ae .. :try_end_ca} :catch_194
    .catch Ljava/lang/StackOverflowError; {:try_start_ae .. :try_end_ca} :catch_192
    .catch Ljava/lang/Error; {:try_start_ae .. :try_end_ca} :catch_190
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_ca} :catch_18e
    .catchall {:try_start_ae .. :try_end_ca} :catchall_189

    goto :goto_c1

    .line 1274
    :catch_cb
    move-exception v1

    :goto_cc
    :try_start_cc
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_d1
    .catchall {:try_start_cc .. :try_end_d1} :catchall_189

    .line 1295
    if-eqz v0, :cond_65

    .line 1297
    :try_start_d3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d3 .. :try_end_d6} :catch_9c
    .catch Ljava/lang/StackOverflowError; {:try_start_d3 .. :try_end_d6} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d6} :catch_105

    goto :goto_65

    .line 165
    :catch_d7
    move-exception v0

    goto :goto_9d

    .line 1251
    :cond_d9
    :try_start_d9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1254
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 1256
    if-eqz v1, :cond_e4

    .line 1257
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1260
    :cond_e4
    const-string v1, "https://aa.birdgesdk.com/v1/d_api"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    .line 1261
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1262
    iget-object v2, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    invoke-virtual {v2, v1}, Lcom/tramini/plugin/a/c/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1263
    iget-object v2, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v2, v1}, Lcom/tramini/plugin/a/c/a;->a(Ljava/lang/Object;)V
    :try_end_fe
    .catch Ljava/net/UnknownHostException; {:try_start_d9 .. :try_end_fe} :catch_5a
    .catch Ljava/net/ConnectException; {:try_start_d9 .. :try_end_fe} :catch_cb
    .catch Ljava/net/SocketTimeoutException; {:try_start_d9 .. :try_end_fe} :catch_126
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d9 .. :try_end_fe} :catch_196
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d9 .. :try_end_fe} :catch_194
    .catch Ljava/lang/StackOverflowError; {:try_start_d9 .. :try_end_fe} :catch_192
    .catch Ljava/lang/Error; {:try_start_d9 .. :try_end_fe} :catch_190
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_fe} :catch_18e
    .catchall {:try_start_d9 .. :try_end_fe} :catchall_189

    .line 1295
    :goto_fe
    if-eqz v0, :cond_65

    .line 1297
    :try_start_100
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_103
    .catch Ljava/lang/OutOfMemoryError; {:try_start_100 .. :try_end_103} :catch_9c
    .catch Ljava/lang/StackOverflowError; {:try_start_100 .. :try_end_103} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_103} :catch_105

    goto/16 :goto_65

    .line 170
    :catch_105
    move-exception v0

    iget-object v0, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/c/a;->l:Lcom/tramini/plugin/a/c/b;

    if-eqz v0, :cond_65

    .line 171
    iget-object v0, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/c/a;->l:Lcom/tramini/plugin/a/c/b;

    invoke-interface {v0}, Lcom/tramini/plugin/a/c/b;->b()V

    goto/16 :goto_65

    .line 1266
    :cond_115
    :try_start_115
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tramini/plugin/a/c/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1267
    iget-object v2, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v2, v1}, Lcom/tramini/plugin/a/c/a;->a(Ljava/lang/Object;)V
    :try_end_125
    .catch Ljava/net/UnknownHostException; {:try_start_115 .. :try_end_125} :catch_5a
    .catch Ljava/net/ConnectException; {:try_start_115 .. :try_end_125} :catch_cb
    .catch Ljava/net/SocketTimeoutException; {:try_start_115 .. :try_end_125} :catch_126
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_115 .. :try_end_125} :catch_196
    .catch Ljava/lang/OutOfMemoryError; {:try_start_115 .. :try_end_125} :catch_194
    .catch Ljava/lang/StackOverflowError; {:try_start_115 .. :try_end_125} :catch_192
    .catch Ljava/lang/Error; {:try_start_115 .. :try_end_125} :catch_190
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_125} :catch_18e
    .catchall {:try_start_115 .. :try_end_125} :catchall_189

    goto :goto_fe

    .line 1276
    :catch_126
    move-exception v1

    :goto_127
    :try_start_127
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_12c
    .catchall {:try_start_127 .. :try_end_12c} :catchall_189

    .line 1295
    if-eqz v0, :cond_65

    .line 1297
    :try_start_12e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_131
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12e .. :try_end_131} :catch_9c
    .catch Ljava/lang/StackOverflowError; {:try_start_12e .. :try_end_131} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_131} :catch_105

    goto/16 :goto_65

    .line 1279
    :catch_133
    move-exception v0

    move-object v0, v1

    :goto_135
    :try_start_135
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->g()V
    :try_end_13a
    .catchall {:try_start_135 .. :try_end_13a} :catchall_189

    .line 1295
    if-eqz v0, :cond_65

    .line 1297
    :try_start_13c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13c .. :try_end_13f} :catch_9c
    .catch Ljava/lang/StackOverflowError; {:try_start_13c .. :try_end_13f} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_13f} :catch_105

    goto/16 :goto_65

    .line 1281
    :catch_141
    move-exception v0

    move-object v0, v1

    :goto_143
    :try_start_143
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1282
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_14b
    .catchall {:try_start_143 .. :try_end_14b} :catchall_189

    .line 1295
    if-eqz v0, :cond_65

    .line 1297
    :try_start_14d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_150
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14d .. :try_end_150} :catch_9c
    .catch Ljava/lang/StackOverflowError; {:try_start_14d .. :try_end_150} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_150} :catch_105

    goto/16 :goto_65

    .line 1284
    :catch_152
    move-exception v0

    move-object v0, v1

    :goto_154
    :try_start_154
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1285
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_15c
    .catchall {:try_start_154 .. :try_end_15c} :catchall_189

    .line 1295
    if-eqz v0, :cond_65

    .line 1297
    :try_start_15e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_161
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15e .. :try_end_161} :catch_9c
    .catch Ljava/lang/StackOverflowError; {:try_start_15e .. :try_end_161} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_161} :catch_105

    goto/16 :goto_65

    .line 1287
    :catch_163
    move-exception v0

    move-object v0, v1

    :goto_165
    :try_start_165
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1288
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_16d
    .catchall {:try_start_165 .. :try_end_16d} :catchall_189

    .line 1295
    if-eqz v0, :cond_65

    .line 1297
    :try_start_16f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_172
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16f .. :try_end_172} :catch_9c
    .catch Ljava/lang/StackOverflowError; {:try_start_16f .. :try_end_172} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_172} :catch_105

    goto/16 :goto_65

    .line 1293
    :catch_174
    move-exception v0

    move-object v0, v1

    :goto_176
    :try_start_176
    iget-object v1, p0, Lcom/tramini/plugin/a/c/a$1;->b:Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/c/a;->h()V
    :try_end_17b
    .catchall {:try_start_176 .. :try_end_17b} :catchall_189

    .line 1295
    if-eqz v0, :cond_65

    .line 1297
    :try_start_17d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_65

    .line 1295
    :catchall_182
    move-exception v0

    :goto_183
    if-eqz v1, :cond_188

    .line 1297
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_188
    throw v0
    :try_end_189
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17d .. :try_end_189} :catch_9c
    .catch Ljava/lang/StackOverflowError; {:try_start_17d .. :try_end_189} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_189} :catch_105

    .line 1295
    :catchall_189
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_183

    .line 1293
    :catch_18e
    move-exception v1

    goto :goto_176

    .line 1287
    :catch_190
    move-exception v1

    goto :goto_165

    .line 1284
    :catch_192
    move-exception v1

    goto :goto_154

    .line 1281
    :catch_194
    move-exception v1

    goto :goto_143

    .line 1279
    :catch_196
    move-exception v1

    goto :goto_135

    .line 1276
    :catch_198
    move-exception v0

    move-object v0, v1

    goto :goto_127

    .line 1274
    :catch_19b
    move-exception v0

    move-object v0, v1

    goto/16 :goto_cc

    .line 1272
    :catch_19f
    move-exception v0

    move-object v0, v1

    goto/16 :goto_5b
.end method
