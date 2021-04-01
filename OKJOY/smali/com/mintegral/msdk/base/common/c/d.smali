.class public final Lcom/mintegral/msdk/base/common/c/d;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "CommonImageTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/common/c/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/mintegral/msdk/base/common/c/d$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/base/common/c/d;->d:Z

    .line 77
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/c/d;->a:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/mintegral/msdk/base/common/c/d;->b:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/mintegral/msdk/base/common/c/d;->c:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/d;->e:Lcom/mintegral/msdk/base/common/c/d$a;

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/d;->e:Lcom/mintegral/msdk/base/common/c/d$a;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/base/common/c/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_9
    return-void
.end method

.method private e()V
    .registers 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/c/d;->f()Z

    move-result v0

    .line 87
    if-eqz v0, :cond_9

    .line 89
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/c/d;->g()V

    .line 91
    :cond_9
    return-void
.end method

.method private f()Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 110
    .line 114
    :try_start_3
    new-instance v6, Ljava/io/File;

    iget-object v3, p0, Lcom/mintegral/msdk/base/common/c/d;->c:Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_13

    .line 116
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 120
    :cond_13
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 121
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 124
    :cond_1c
    new-instance v7, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mintegral/msdk/base/common/c/d;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 127
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 130
    :cond_3f
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/mintegral/msdk/base/common/net/h;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/net/h;

    move-result-object v3

    .line 131
    new-instance v5, Lcom/mintegral/msdk/base/common/net/i;

    iget-object v4, p0, Lcom/mintegral/msdk/base/common/c/d;->b:Ljava/lang/String;

    const/16 v8, 0x7530

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/common/net/h;->c()Lcom/mintegral/msdk/base/common/net/j;

    move-result-object v3

    invoke-direct {v5, v4, v8, v3}, Lcom/mintegral/msdk/base/common/net/i;-><init>(Ljava/lang/String;ILcom/mintegral/msdk/base/common/net/j;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_51} :catch_1ad
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_51} :catch_14a
    .catchall {:try_start_3 .. :try_end_51} :catchall_177

    .line 132
    :try_start_51
    invoke-virtual {v5}, Lcom/mintegral/msdk/base/common/net/i;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 133
    const-string v4, "http.protocol.expect-continue"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v4, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 135
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v5, v4}, Lcom/mintegral/msdk/base/common/net/i;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 136
    const/16 v4, 0x7530

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 137
    const/16 v4, 0x7530

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 141
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p0, Lcom/mintegral/msdk/base/common/c/d;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v5, v3}, Lcom/mintegral/msdk/base/common/net/i;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 144
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 145
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 148
    const/16 v8, 0xc8

    if-ne v4, v8, :cond_10e

    .line 149
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 150
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_91} :catch_1b2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_51 .. :try_end_91} :catch_1a5
    .catchall {:try_start_51 .. :try_end_91} :catchall_199

    move-result-object v4

    .line 151
    :try_start_92
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v3, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_98} :catch_1b7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_92 .. :try_end_98} :catch_1a8
    .catchall {:try_start_92 .. :try_end_98} :catchall_19c

    .line 153
    const/16 v2, 0x800

    :try_start_9a
    new-array v2, v2, [B

    .line 155
    :goto_9c
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_cc

    .line 156
    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a7} :catch_a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9a .. :try_end_a7} :catch_1aa
    .catchall {:try_start_9a .. :try_end_a7} :catchall_19e

    goto :goto_9c

    .line 167
    :catch_a8
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 168
    :goto_ac
    :try_start_ac
    iget-object v5, p0, Lcom/mintegral/msdk/base/common/c/d;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/mintegral/msdk/base/common/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-boolean v5, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v5, :cond_bc

    .line 171
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bc
    .catchall {:try_start_ac .. :try_end_bc} :catchall_1a1

    .line 178
    :cond_bc
    if-eqz v4, :cond_c1

    .line 180
    :try_start_be
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/common/net/i;->a()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_13b

    .line 186
    :cond_c1
    :goto_c1
    if-eqz v3, :cond_c6

    .line 187
    :try_start_c3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_140

    .line 193
    :cond_c6
    :goto_c6
    if-eqz v2, :cond_cb

    .line 194
    :try_start_c8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_145

    .line 200
    :cond_cb
    :goto_cb
    return v0

    .line 158
    :cond_cc
    :try_start_cc
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 159
    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 161
    const-string v2, "ImageWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "download file from ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/mintegral/msdk/base/common/c/d;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] save to ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mintegral/msdk/base/common/c/d;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_fa} :catch_a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_cc .. :try_end_fa} :catch_1aa
    .catchall {:try_start_cc .. :try_end_fa} :catchall_19e

    move v0, v1

    .line 180
    :goto_fb
    :try_start_fb
    invoke-virtual {v5}, Lcom/mintegral/msdk/base/common/net/i;->a()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_fe} :catch_131

    .line 186
    :goto_fe
    if-eqz v4, :cond_103

    .line 187
    :try_start_100
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_136

    .line 193
    :cond_103
    :goto_103
    if-eqz v3, :cond_cb

    .line 194
    :try_start_105
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    goto :goto_cb

    .line 197
    :catch_109
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cb

    .line 164
    :cond_10e
    :try_start_10e
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/c/d;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "load image from http faild because http return code: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".image url is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/base/common/c/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/mintegral/msdk/base/common/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_12e} :catch_1b2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10e .. :try_end_12e} :catch_1a5
    .catchall {:try_start_10e .. :try_end_12e} :catchall_199

    move-object v3, v2

    move-object v4, v2

    .line 165
    goto :goto_fb

    .line 183
    :catch_131
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_fe

    .line 190
    :catch_136
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_103

    .line 183
    :catch_13b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c1

    .line 190
    :catch_140
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c6

    .line 197
    :catch_145
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cb

    .line 173
    :catch_14a
    move-exception v1

    move-object v4, v2

    move-object v5, v2

    .line 174
    :goto_14d
    :try_start_14d
    iget-object v3, p0, Lcom/mintegral/msdk/base/common/c/d;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/mintegral/msdk/base/common/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_156
    .catchall {:try_start_14d .. :try_end_156} :catchall_19c

    .line 178
    if-eqz v5, :cond_15b

    .line 180
    :try_start_158
    invoke-virtual {v5}, Lcom/mintegral/msdk/base/common/net/i;->a()V
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_15b} :catch_16d

    .line 186
    :cond_15b
    :goto_15b
    if-eqz v4, :cond_160

    .line 187
    :try_start_15d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_160} :catch_172

    .line 193
    :cond_160
    :goto_160
    if-eqz v2, :cond_cb

    .line 194
    :try_start_162
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_165} :catch_167

    goto/16 :goto_cb

    .line 197
    :catch_167
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_cb

    .line 183
    :catch_16d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15b

    .line 190
    :catch_172
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_160

    .line 177
    :catchall_177
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    .line 178
    :goto_17a
    if-eqz v5, :cond_17f

    .line 180
    :try_start_17c
    invoke-virtual {v5}, Lcom/mintegral/msdk/base/common/net/i;->a()V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_17f} :catch_18a

    .line 186
    :cond_17f
    :goto_17f
    if-eqz v4, :cond_184

    .line 187
    :try_start_181
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_18f

    .line 193
    :cond_184
    :goto_184
    if-eqz v2, :cond_189

    .line 194
    :try_start_186
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_189} :catch_194

    .line 198
    :cond_189
    :goto_189
    throw v0

    .line 183
    :catch_18a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17f

    .line 190
    :catch_18f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_184

    .line 197
    :catch_194
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_189

    .line 177
    :catchall_199
    move-exception v0

    move-object v4, v2

    goto :goto_17a

    :catchall_19c
    move-exception v0

    goto :goto_17a

    :catchall_19e
    move-exception v0

    move-object v2, v3

    goto :goto_17a

    :catchall_1a1
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    goto :goto_17a

    .line 173
    :catch_1a5
    move-exception v1

    move-object v4, v2

    goto :goto_14d

    :catch_1a8
    move-exception v1

    goto :goto_14d

    :catch_1aa
    move-exception v1

    move-object v2, v3

    goto :goto_14d

    .line 167
    :catch_1ad
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_ac

    :catch_1b2
    move-exception v1

    move-object v3, v2

    move-object v4, v5

    goto/16 :goto_ac

    :catch_1b7
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_ac
.end method

.method private g()V
    .registers 4

    .prologue
    .line 207
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/c/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 209
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/c/d;->c:Ljava/lang/String;

    .line 1221
    iget-object v2, p0, Lcom/mintegral/msdk/base/common/c/d;->e:Lcom/mintegral/msdk/base/common/c/d$a;

    if-eqz v2, :cond_1a

    .line 1222
    iget-object v2, p0, Lcom/mintegral/msdk/base/common/c/d;->e:Lcom/mintegral/msdk/base/common/c/d$a;

    invoke-interface {v2, v0, v1}, Lcom/mintegral/msdk/base/common/c/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_1a
    :goto_1a
    return-void

    .line 211
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load image faild.because file["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v1, "ImageWorker"

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/c/d;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/mintegral/msdk/base/common/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/common/c/d;->d:Z

    if-nez v0, :cond_33

    .line 244
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 245
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/d;->b:Ljava/lang/String;

    const-string v1, "save path is null."

    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/base/common/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_13
    return-void

    .line 249
    :cond_14
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/c/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2f

    .line 251
    :cond_2b
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/c/d;->e()V

    goto :goto_13

    .line 253
    :cond_2f
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/c/d;->g()V

    goto :goto_13

    .line 256
    :cond_33
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/c/d;->e()V

    goto :goto_13
.end method

.method public final a(Lcom/mintegral/msdk/base/common/c/d$a;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/c/d;->e:Lcom/mintegral/msdk/base/common/c/d$a;

    .line 74
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/mintegral/msdk/base/common/c/d;->d:Z

    .line 66
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 264
    return-void
.end method
