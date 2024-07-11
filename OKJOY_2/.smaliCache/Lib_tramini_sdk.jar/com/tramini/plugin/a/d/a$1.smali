.class final Lcom/tramini/plugin/a/d/a$1;
.super Lcom/tramini/plugin/a/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/d/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tramini/plugin/a/d/a;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/d/a;I)V
    .registers 3

    .line 166
    iput-object p1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    iput p2, p0, Lcom/tramini/plugin/a/d/a$1;->a:I

    invoke-direct {p0}, Lcom/tramini/plugin/a/g/a/b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    .line 196
    nop

    .line 201
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_d} :catch_155
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_d} :catch_149
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_d} :catch_13d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_d} :catch_131
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_d} :catch_122
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_d} :catch_113
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_d} :catch_104
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_f8
    .catchall {:try_start_2 .. :try_end_d} :catchall_f6

    .line 214
    const/4 v0, 0x1

    :try_start_e
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 215
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 216
    const-string v0, "POST"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 223
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/d/a;->c()Ljava/util/Map;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_47

    .line 225
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 226
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    goto :goto_31

    .line 232
    :cond_47
    const/16 v0, 0x4e20

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 233
    const v0, 0xea60

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 234
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 238
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/d/a;->d()[B

    move-result-object v0

    .line 240
    if-eqz v0, :cond_6a

    .line 241
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 242
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 243
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 244
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 247
    :cond_6a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 249
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_7d

    .line 250
    iget-object p1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {p1}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_77
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_77} :catch_f3
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_77} :catch_f0
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_77} :catch_ed
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_e .. :try_end_77} :catch_ea
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_77} :catch_e7
    .catch Ljava/lang/StackOverflowError; {:try_start_e .. :try_end_77} :catch_e4
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_77} :catch_e1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_77} :catch_de
    .catchall {:try_start_e .. :try_end_77} :catchall_da

    .line 309
    if-eqz v1, :cond_7c

    .line 311
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 251
    :cond_7c
    return-void

    .line 255
    :cond_7d
    :try_start_7d
    invoke-static {v1}, Lcom/tramini/plugin/a/d/a;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 256
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 257
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    :goto_90
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9a

    .line 261
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 265
    :cond_9a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 268
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 270
    if-eqz v0, :cond_a5

    .line 271
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 274
    :cond_a5
    const-string v0, "https://aa.birdgesdk.com/v1/d_api"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 275
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/tramini/plugin/a/d/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    iget v2, p0, Lcom/tramini/plugin/a/d/a$1;->a:I

    invoke-virtual {v0, v2, p1}, Lcom/tramini/plugin/a/d/a;->a(ILjava/lang/Object;)V

    .line 279
    goto :goto_d4

    .line 280
    :cond_c2
    iget-object p1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/tramini/plugin/a/d/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 281
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    iget v2, p0, Lcom/tramini/plugin/a/d/a$1;->a:I

    invoke-virtual {v0, v2, p1}, Lcom/tramini/plugin/a/d/a;->a(ILjava/lang/Object;)V
    :try_end_d4
    .catch Ljava/net/UnknownHostException; {:try_start_7d .. :try_end_d4} :catch_f3
    .catch Ljava/net/ConnectException; {:try_start_7d .. :try_end_d4} :catch_f0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7d .. :try_end_d4} :catch_ed
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7d .. :try_end_d4} :catch_ea
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7d .. :try_end_d4} :catch_e7
    .catch Ljava/lang/StackOverflowError; {:try_start_7d .. :try_end_d4} :catch_e4
    .catch Ljava/lang/Error; {:try_start_7d .. :try_end_d4} :catch_e1
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_d4} :catch_de
    .catchall {:try_start_7d .. :try_end_d4} :catchall_da

    .line 309
    :goto_d4
    if-eqz v1, :cond_161

    .line 311
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 309
    :catchall_da
    move-exception p1

    move-object v0, v1

    goto/16 :goto_162

    .line 303
    :catch_de
    move-exception p1

    move-object v0, v1

    goto :goto_f9

    .line 300
    :catch_e1
    move-exception p1

    move-object v0, v1

    goto :goto_105

    .line 297
    :catch_e4
    move-exception p1

    move-object v0, v1

    goto :goto_114

    .line 294
    :catch_e7
    move-exception p1

    move-object v0, v1

    goto :goto_123

    .line 291
    :catch_ea
    move-exception p1

    move-object v0, v1

    goto :goto_132

    .line 289
    :catch_ed
    move-exception p1

    move-object v0, v1

    goto :goto_13e

    .line 287
    :catch_f0
    move-exception p1

    move-object v0, v1

    goto :goto_14a

    .line 285
    :catch_f3
    move-exception p1

    move-object v0, v1

    goto :goto_156

    .line 309
    :catchall_f6
    move-exception p1

    goto :goto_162

    .line 303
    :catch_f8
    move-exception p1

    .line 307
    :goto_f9
    :try_start_f9
    iget-object p1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {p1}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_fe
    .catchall {:try_start_f9 .. :try_end_fe} :catchall_f6

    .line 309
    if-eqz v0, :cond_161

    .line 311
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 300
    :catch_104
    move-exception p1

    .line 301
    :goto_105
    :try_start_105
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 302
    iget-object p1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {p1}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_10d
    .catchall {:try_start_105 .. :try_end_10d} :catchall_f6

    .line 309
    if-eqz v0, :cond_161

    .line 311
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 297
    :catch_113
    move-exception p1

    .line 298
    :goto_114
    :try_start_114
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 299
    iget-object p1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {p1}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_11c
    .catchall {:try_start_114 .. :try_end_11c} :catchall_f6

    .line 309
    if-eqz v0, :cond_161

    .line 311
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 294
    :catch_122
    move-exception p1

    .line 295
    :goto_123
    :try_start_123
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 296
    iget-object p1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {p1}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_12b
    .catchall {:try_start_123 .. :try_end_12b} :catchall_f6

    .line 309
    if-eqz v0, :cond_161

    .line 311
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 291
    :catch_131
    move-exception p1

    .line 293
    :goto_132
    :try_start_132
    iget-object p1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {p1}, Lcom/tramini/plugin/a/d/a;->g()V
    :try_end_137
    .catchall {:try_start_132 .. :try_end_137} :catchall_f6

    .line 309
    if-eqz v0, :cond_161

    .line 311
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 289
    :catch_13d
    move-exception p1

    .line 290
    :goto_13e
    :try_start_13e
    iget-object p1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {p1}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_143
    .catchall {:try_start_13e .. :try_end_143} :catchall_f6

    .line 309
    if-eqz v0, :cond_161

    .line 311
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 287
    :catch_149
    move-exception p1

    .line 288
    :goto_14a
    :try_start_14a
    iget-object p1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {p1}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_14f
    .catchall {:try_start_14a .. :try_end_14f} :catchall_f6

    .line 309
    if-eqz v0, :cond_161

    .line 311
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 285
    :catch_155
    move-exception p1

    .line 286
    :goto_156
    :try_start_156
    iget-object p1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {p1}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_15b
    .catchall {:try_start_156 .. :try_end_15b} :catchall_f6

    .line 309
    if-eqz v0, :cond_161

    .line 311
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 315
    :cond_161
    return-void

    .line 309
    :goto_162
    if-eqz v0, :cond_167

    .line 311
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 313
    :cond_167
    throw p1
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/d/a;->n:Lcom/tramini/plugin/a/d/b;

    if-eqz v0, :cond_d

    .line 172
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/d/a;->n:Lcom/tramini/plugin/a/d/b;

    invoke-interface {v0}, Lcom/tramini/plugin/a/d/b;->a()V

    .line 175
    :cond_d
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/d/a;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_13} :catch_18c
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_13} :catch_18a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_17b

    .line 176
    nop

    .line 1196
    const/4 v1, 0x0

    .line 1201
    :try_start_15
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_20
    .catch Ljava/net/UnknownHostException; {:try_start_15 .. :try_end_20} :catch_168
    .catch Ljava/net/ConnectException; {:try_start_15 .. :try_end_20} :catch_15c
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_20} :catch_150
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_15 .. :try_end_20} :catch_144
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_20} :catch_135
    .catch Ljava/lang/StackOverflowError; {:try_start_15 .. :try_end_20} :catch_126
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_20} :catch_117
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_20} :catch_10b
    .catchall {:try_start_15 .. :try_end_20} :catchall_109

    .line 1214
    const/4 v1, 0x1

    :try_start_21
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1215
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1216
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1217
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1223
    iget-object v1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/d/a;->c()Ljava/util/Map;

    move-result-object v1

    .line 1224
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_5a

    .line 1225
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1226
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    goto :goto_44

    .line 1232
    :cond_5a
    const/16 v1, 0x4e20

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1233
    const v1, 0xea60

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1234
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 1238
    iget-object v1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/a/d/a;->d()[B

    move-result-object v1

    .line 1240
    if-eqz v1, :cond_7d

    .line 1241
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 1242
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1243
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 1244
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1247
    :cond_7d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 1249
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_90

    .line 1250
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_8a
    .catch Ljava/net/UnknownHostException; {:try_start_21 .. :try_end_8a} :catch_106
    .catch Ljava/net/ConnectException; {:try_start_21 .. :try_end_8a} :catch_103
    .catch Ljava/net/SocketTimeoutException; {:try_start_21 .. :try_end_8a} :catch_100
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_21 .. :try_end_8a} :catch_fd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_8a} :catch_fa
    .catch Ljava/lang/StackOverflowError; {:try_start_21 .. :try_end_8a} :catch_f7
    .catch Ljava/lang/Error; {:try_start_21 .. :try_end_8a} :catch_f4
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_8a} :catch_f1
    .catchall {:try_start_21 .. :try_end_8a} :catchall_ed

    .line 1309
    if-eqz v2, :cond_8f

    .line 1311
    :try_start_8c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8c .. :try_end_8f} :catch_18c
    .catch Ljava/lang/StackOverflowError; {:try_start_8c .. :try_end_8f} :catch_18a
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_17b

    .line 1251
    :cond_8f
    return-void

    .line 1255
    :cond_90
    :try_start_90
    invoke-static {v2}, Lcom/tramini/plugin/a/d/a;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    .line 1256
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1257
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1260
    :goto_a3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_ad

    .line 1261
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 1265
    :cond_ad
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1268
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 1270
    if-eqz v1, :cond_b8

    .line 1271
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1274
    :cond_b8
    const-string v1, "https://aa.birdgesdk.com/v1/d_api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 1275
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1276
    iget-object v1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/tramini/plugin/a/d/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1277
    iget-object v1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    iget v3, p0, Lcom/tramini/plugin/a/d/a$1;->a:I

    invoke-virtual {v1, v3, v0}, Lcom/tramini/plugin/a/d/a;->a(ILjava/lang/Object;)V

    .line 1279
    goto :goto_e7

    .line 1280
    :cond_d5
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/d/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1281
    iget-object v1, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    iget v3, p0, Lcom/tramini/plugin/a/d/a$1;->a:I

    invoke-virtual {v1, v3, v0}, Lcom/tramini/plugin/a/d/a;->a(ILjava/lang/Object;)V
    :try_end_e7
    .catch Ljava/net/UnknownHostException; {:try_start_90 .. :try_end_e7} :catch_106
    .catch Ljava/net/ConnectException; {:try_start_90 .. :try_end_e7} :catch_103
    .catch Ljava/net/SocketTimeoutException; {:try_start_90 .. :try_end_e7} :catch_100
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_90 .. :try_end_e7} :catch_fd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_90 .. :try_end_e7} :catch_fa
    .catch Ljava/lang/StackOverflowError; {:try_start_90 .. :try_end_e7} :catch_f7
    .catch Ljava/lang/Error; {:try_start_90 .. :try_end_e7} :catch_f4
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_e7} :catch_f1
    .catchall {:try_start_90 .. :try_end_e7} :catchall_ed

    .line 1309
    :goto_e7
    if-eqz v2, :cond_174

    .line 1311
    :try_start_e9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ec
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e9 .. :try_end_ec} :catch_18c
    .catch Ljava/lang/StackOverflowError; {:try_start_e9 .. :try_end_ec} :catch_18a
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_17b

    return-void

    .line 1309
    :catchall_ed
    move-exception v0

    move-object v1, v2

    goto/16 :goto_175

    .line 1303
    :catch_f1
    move-exception v0

    move-object v1, v2

    goto :goto_10c

    .line 1300
    :catch_f4
    move-exception v0

    move-object v1, v2

    goto :goto_118

    .line 1297
    :catch_f7
    move-exception v0

    move-object v1, v2

    goto :goto_127

    .line 1294
    :catch_fa
    move-exception v0

    move-object v1, v2

    goto :goto_136

    .line 1291
    :catch_fd
    move-exception v0

    move-object v1, v2

    goto :goto_145

    .line 1289
    :catch_100
    move-exception v0

    move-object v1, v2

    goto :goto_151

    .line 1287
    :catch_103
    move-exception v0

    move-object v1, v2

    goto :goto_15d

    .line 1285
    :catch_106
    move-exception v0

    move-object v1, v2

    goto :goto_169

    .line 1309
    :catchall_109
    move-exception v0

    goto :goto_175

    .line 1303
    :catch_10b
    move-exception v0

    .line 1307
    :goto_10c
    :try_start_10c
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_111
    .catchall {:try_start_10c .. :try_end_111} :catchall_109

    .line 1309
    if-eqz v1, :cond_174

    .line 1311
    :try_start_113
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_116
    .catch Ljava/lang/OutOfMemoryError; {:try_start_113 .. :try_end_116} :catch_18c
    .catch Ljava/lang/StackOverflowError; {:try_start_113 .. :try_end_116} :catch_18a
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_116} :catch_17b

    return-void

    .line 1300
    :catch_117
    move-exception v0

    .line 1301
    :goto_118
    :try_start_118
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1302
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_120
    .catchall {:try_start_118 .. :try_end_120} :catchall_109

    .line 1309
    if-eqz v1, :cond_174

    .line 1311
    :try_start_122
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_125
    .catch Ljava/lang/OutOfMemoryError; {:try_start_122 .. :try_end_125} :catch_18c
    .catch Ljava/lang/StackOverflowError; {:try_start_122 .. :try_end_125} :catch_18a
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_125} :catch_17b

    return-void

    .line 1297
    :catch_126
    move-exception v0

    .line 1298
    :goto_127
    :try_start_127
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1299
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_12f
    .catchall {:try_start_127 .. :try_end_12f} :catchall_109

    .line 1309
    if-eqz v1, :cond_174

    .line 1311
    :try_start_131
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_134
    .catch Ljava/lang/OutOfMemoryError; {:try_start_131 .. :try_end_134} :catch_18c
    .catch Ljava/lang/StackOverflowError; {:try_start_131 .. :try_end_134} :catch_18a
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_17b

    return-void

    .line 1294
    :catch_135
    move-exception v0

    .line 1295
    :goto_136
    :try_start_136
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1296
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_13e
    .catchall {:try_start_136 .. :try_end_13e} :catchall_109

    .line 1309
    if-eqz v1, :cond_174

    .line 1311
    :try_start_140
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_143
    .catch Ljava/lang/OutOfMemoryError; {:try_start_140 .. :try_end_143} :catch_18c
    .catch Ljava/lang/StackOverflowError; {:try_start_140 .. :try_end_143} :catch_18a
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_143} :catch_17b

    return-void

    .line 1291
    :catch_144
    move-exception v0

    .line 1293
    :goto_145
    :try_start_145
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/d/a;->g()V
    :try_end_14a
    .catchall {:try_start_145 .. :try_end_14a} :catchall_109

    .line 1309
    if-eqz v1, :cond_174

    .line 1311
    :try_start_14c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14c .. :try_end_14f} :catch_18c
    .catch Ljava/lang/StackOverflowError; {:try_start_14c .. :try_end_14f} :catch_18a
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_14f} :catch_17b

    return-void

    .line 1289
    :catch_150
    move-exception v0

    .line 1290
    :goto_151
    :try_start_151
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_156
    .catchall {:try_start_151 .. :try_end_156} :catchall_109

    .line 1309
    if-eqz v1, :cond_174

    .line 1311
    :try_start_158
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_158 .. :try_end_15b} :catch_18c
    .catch Ljava/lang/StackOverflowError; {:try_start_158 .. :try_end_15b} :catch_18a
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_15b} :catch_17b

    return-void

    .line 1287
    :catch_15c
    move-exception v0

    .line 1288
    :goto_15d
    :try_start_15d
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_162
    .catchall {:try_start_15d .. :try_end_162} :catchall_109

    .line 1309
    if-eqz v1, :cond_174

    .line 1311
    :try_start_164
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_167
    .catch Ljava/lang/OutOfMemoryError; {:try_start_164 .. :try_end_167} :catch_18c
    .catch Ljava/lang/StackOverflowError; {:try_start_164 .. :try_end_167} :catch_18a
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_167} :catch_17b

    return-void

    .line 1285
    :catch_168
    move-exception v0

    .line 1286
    :goto_169
    :try_start_169
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/d/a;->h()V
    :try_end_16e
    .catchall {:try_start_169 .. :try_end_16e} :catchall_109

    .line 1309
    if-eqz v1, :cond_174

    .line 1311
    :try_start_170
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 188
    :cond_174
    return-void

    .line 1309
    :goto_175
    if-eqz v1, :cond_17a

    .line 1311
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1313
    :cond_17a
    throw v0
    :try_end_17b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_170 .. :try_end_17b} :catch_18c
    .catch Ljava/lang/StackOverflowError; {:try_start_170 .. :try_end_17b} :catch_18a
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_17b} :catch_17b

    .line 183
    :catch_17b
    move-exception v0

    .line 184
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/d/a;->n:Lcom/tramini/plugin/a/d/b;

    if-eqz v0, :cond_189

    .line 185
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/d/a;->n:Lcom/tramini/plugin/a/d/b;

    invoke-interface {v0}, Lcom/tramini/plugin/a/d/b;->b()V

    .line 189
    :cond_189
    return-void

    .line 178
    :catch_18a
    move-exception v0

    goto :goto_18d

    :catch_18c
    move-exception v0

    .line 179
    :goto_18d
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 180
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/d/a;->n:Lcom/tramini/plugin/a/d/b;

    if-eqz v0, :cond_19d

    .line 181
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a$1;->b:Lcom/tramini/plugin/a/d/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/d/a;->n:Lcom/tramini/plugin/a/d/b;

    invoke-interface {v0}, Lcom/tramini/plugin/a/d/b;->b()V

    .line 188
    :cond_19d
    return-void
.end method
