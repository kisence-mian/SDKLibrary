.class Lcom/bytedance/sdk/openadsdk/i/b;
.super Lcom/bytedance/sdk/openadsdk/i/a;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/i/b$a;,
        Lcom/bytedance/sdk/openadsdk/i/b$b;
    }
.end annotation


# instance fields
.field final m:Ljava/lang/Object;

.field final n:Ljava/lang/Object;

.field private final o:I

.field private final p:Lcom/bytedance/sdk/openadsdk/i/b$b;

.field private volatile q:Lcom/bytedance/sdk/openadsdk/i/h$a;

.field private volatile r:Lcom/bytedance/sdk/openadsdk/i/c/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/b$a;)V
    .registers 4

    .line 43
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/b$a;->d:Lcom/bytedance/sdk/openadsdk/i/a/a;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/i/b$a;->e:Lcom/bytedance/sdk/openadsdk/i/b/c;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a;-><init>(Lcom/bytedance/sdk/openadsdk/i/a/a;Lcom/bytedance/sdk/openadsdk/i/b/c;)V

    .line 45
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/i/b$a;->g:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->o:I

    .line 46
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/b$a;->i:Lcom/bytedance/sdk/openadsdk/i/b$b;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->p:Lcom/bytedance/sdk/openadsdk/i/b$b;

    .line 47
    iput-object p0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->m:Ljava/lang/Object;

    .line 49
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/b$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->g:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/b$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->h:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/b$a;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->f:Ljava/util/List;

    .line 52
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/b$a;->c:Lcom/bytedance/sdk/openadsdk/i/l;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->j:Lcom/bytedance/sdk/openadsdk/i/l;

    .line 53
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/b$a;->h:Lcom/bytedance/sdk/openadsdk/i/i;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    .line 54
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/i/b$a;->j:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b;->n:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/i/l$a;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/i/h$a;,
            Lcom/bytedance/sdk/openadsdk/i/c/a;,
            Lcom/bytedance/sdk/openadsdk/i/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 146
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/i/b;->o:I

    if-lez v3, :cond_4a

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_4a

    .line 147
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p1, :cond_49

    .line 148
    const-string p1, "TAG_PROXY_DownloadTask"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no necessary to download for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", cache file size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/i/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_49
    return-void

    .line 152
    :cond_4a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->f()I

    move-result v3

    .line 153
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/b;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/i/b;->h:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v4

    .line 154
    if-eqz v4, :cond_7e

    iget v5, v4, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-ltz v5, :cond_7e

    .line 155
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p1, :cond_7d

    .line 156
    const-string p1, "TAG_PROXY_DownloadTask"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file download complete, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_7d
    return-void

    .line 161
    :cond_7e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->e()V

    .line 162
    long-to-int v5, v1

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/i/b;->o:I

    const-string v7, "GET"

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/i/b;->a(Lcom/bytedance/sdk/openadsdk/i/l$a;IILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/e/a;

    move-result-object v6

    .line 164
    if-nez v6, :cond_8d

    return-void

    .line 166
    :cond_8d
    nop

    .line 167
    const/4 v7, 0x0

    .line 169
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_91
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->e()V

    .line 171
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/i/b;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    if-nez v10, :cond_9e

    sget-boolean v10, Lcom/bytedance/sdk/openadsdk/i/e;->e:Z

    if-eqz v10, :cond_9e

    move v10, v8

    goto :goto_9f

    :cond_9e
    move v10, v9

    :goto_9f
    invoke-static {v6, v10, v8}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/e/a;ZZ)Ljava/lang/String;

    move-result-object v10

    .line 172
    if-nez v10, :cond_20d

    .line 176
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/e/a;)I

    move-result v10

    .line 177
    if-eqz v4, :cond_12a

    iget v11, v4, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    if-eq v11, v10, :cond_12a

    .line 178
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_e3

    .line 179
    const-string v0, "TAG_PROXY_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length not match, old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_e3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length not match, old length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rawKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", previousInfo: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, v4, Lcom/bytedance/sdk/openadsdk/i/b/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/c/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_12a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/b;->h:Ljava/lang/String;

    invoke-static {v6, p1, v4, v3}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/e/a;Lcom/bytedance/sdk/openadsdk/i/b/c;Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;

    .line 186
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object p1

    .line 187
    if-nez p1, :cond_13d

    move p1, v9

    goto :goto_13f

    :cond_13d
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    .line 188
    :goto_13f
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/i/e/a;->d()Ljava/io/InputStream;

    move-result-object v3

    .line 189
    new-instance v4, Lcom/bytedance/sdk/openadsdk/i/h;

    sget-boolean v10, Lcom/bytedance/sdk/openadsdk/i/e;->d:Z

    if-eqz v10, :cond_14c

    const-string v10, "rwd"

    goto :goto_14e

    :cond_14c
    const-string v10, "rw"

    :goto_14e
    invoke-direct {v4, v0, v10}, Lcom/bytedance/sdk/openadsdk/i/h;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_151
    .catchall {:try_start_91 .. :try_end_151} :catchall_236

    .line 190
    :try_start_151
    invoke-virtual {v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/h;->a(J)V

    .line 191
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_170

    .line 192
    const-string v0, "TAG_PROXY_DownloadTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "preload start from: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_170
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 197
    nop

    .line 198
    :goto_175
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_1ea

    .line 199
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->e()V

    .line 201
    if-lez v1, :cond_19d

    .line 202
    invoke-virtual {v4, v0, v9, v1}, Lcom/bytedance/sdk/openadsdk/i/h;->a([BII)V

    .line 203
    add-int/2addr v5, v1

    .line 205
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/b;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    if-eqz v2, :cond_195

    .line 206
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/b;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_18b
    .catchall {:try_start_151 .. :try_end_18b} :catchall_20a

    .line 207
    :try_start_18b
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/i/b;->m:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 208
    monitor-exit v2

    goto :goto_195

    :catchall_192
    move-exception p1

    monitor-exit v2
    :try_end_194
    .catchall {:try_start_18b .. :try_end_194} :catchall_192

    :try_start_194
    throw p1

    .line 211
    :cond_195
    :goto_195
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 213
    invoke-virtual {p0, p1, v5}, Lcom/bytedance/sdk/openadsdk/i/b;->a(II)V

    .line 216
    :cond_19d
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/i/b;->o:I

    if-lez v1, :cond_1e6

    if-lt v5, v1, :cond_1e6

    .line 217
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p1, :cond_1cb

    .line 218
    const-string p1, "TAG_PROXY_DownloadTask"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download, more data received, currentCacheFileSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/i/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cb
    .catchall {:try_start_194 .. :try_end_1cb} :catchall_20a

    .line 231
    :cond_1cb
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/i/e/a;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/io/Closeable;)V

    .line 233
    nop

    .line 234
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/i/h;->a()V

    .line 237
    nop

    .line 238
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->a()V

    .line 239
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p1, :cond_1e5

    .line 240
    const-string p1, "TAG_PROXY_DownloadTask"

    const-string v0, "cancel call"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1e5
    return-void

    .line 222
    :cond_1e6
    :try_start_1e6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->e()V
    :try_end_1e9
    .catchall {:try_start_1e6 .. :try_end_1e9} :catchall_20a

    goto :goto_175

    .line 225
    :cond_1ea
    nop

    .line 226
    :try_start_1eb
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->c()V

    .line 227
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p1, :cond_1f9

    .line 228
    const-string p1, "TAG_PROXY_DownloadTask"

    const-string v0, "download succeed, no need to cancel call"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f9
    .catchall {:try_start_1eb .. :try_end_1f9} :catchall_206

    .line 231
    :cond_1f9
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/i/e/a;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/io/Closeable;)V

    .line 233
    nop

    .line 234
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/i/h;->a()V

    .line 237
    nop

    .line 244
    return-void

    .line 231
    :catchall_206
    move-exception p1

    move-object v7, v4

    move v8, v9

    goto :goto_237

    :catchall_20a
    move-exception p1

    move-object v7, v4

    goto :goto_237

    .line 173
    :cond_20d
    :try_start_20d
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/c/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rawKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/c/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_236
    .catchall {:try_start_20d .. :try_end_236} :catchall_236

    .line 231
    :catchall_236
    move-exception p1

    :goto_237
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/i/e/a;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/io/Closeable;)V

    .line 233
    if-eqz v7, :cond_243

    .line 234
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/i/h;->a()V

    .line 237
    :cond_243
    if-eqz v8, :cond_253

    .line 238
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->a()V

    .line 239
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_253

    .line 240
    const-string v0, "TAG_PROXY_DownloadTask"

    const-string v1, "cancel call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_253
    throw p1
.end method

.method private j()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/i/c/a;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 94
    const-string v0, "TAG_PROXY_DownloadTask"

    :goto_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/b;->j:Lcom/bytedance/sdk/openadsdk/i/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/l;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_94

    .line 95
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->e()V

    .line 97
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/b;->j:Lcom/bytedance/sdk/openadsdk/i/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/l;->b()Lcom/bytedance/sdk/openadsdk/i/l$a;

    move-result-object v1

    .line 99
    :try_start_14
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/i/b;->a(Lcom/bytedance/sdk/openadsdk/i/l$a;)V
    :try_end_17
    .catch Lcom/bytedance/sdk/openadsdk/i/c/c; {:try_start_14 .. :try_end_17} :catch_80
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_46
    .catch Lcom/bytedance/sdk/openadsdk/i/h$a; {:try_start_14 .. :try_end_17} :catch_35
    .catch Lcom/bytedance/sdk/openadsdk/i/c/b; {:try_start_14 .. :try_end_17} :catch_26
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    .line 100
    const/4 v0, 0x1

    return v0

    .line 133
    :catchall_19
    move-exception v1

    .line 134
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v3, :cond_25

    .line 135
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_25
    return v2

    .line 125
    :catch_26
    move-exception v1

    .line 126
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/b;->r:Lcom/bytedance/sdk/openadsdk/i/c/b;

    .line 127
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v3, :cond_34

    .line 128
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_34
    return v2

    .line 121
    :catch_35
    move-exception v0

    .line 122
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->q:Lcom/bytedance/sdk/openadsdk/i/h$a;

    .line 123
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/i/b;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    return v2

    .line 104
    :catch_46
    move-exception v2

    .line 106
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_4e

    .line 107
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/l$a;->b()V

    .line 110
    :cond_4e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->b()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 111
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v1, :cond_91

    .line 112
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Canceled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 113
    const-string v1, "okhttp call canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 115
    :cond_6a
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 119
    :cond_72
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/i/b;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_91

    .line 101
    :catch_80
    move-exception v2

    .line 102
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/l$a;->a()V

    .line 103
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/i/b;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :cond_91
    :goto_91
    nop

    .line 139
    goto/16 :goto_2

    .line 140
    :cond_94
    return v2
.end method


# virtual methods
.method h()Lcom/bytedance/sdk/openadsdk/i/h$a;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->q:Lcom/bytedance/sdk/openadsdk/i/h$a;

    return-object v0
.end method

.method i()Lcom/bytedance/sdk/openadsdk/i/c/b;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->r:Lcom/bytedance/sdk/openadsdk/i/c/b;

    return-object v0
.end method

.method public run()V
    .registers 6

    .line 59
    const-string v0, "TAG_PROXY_DownloadTask"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/b;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a/a;->a(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 62
    :try_start_d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->j()Z
    :try_end_10
    .catch Lcom/bytedance/sdk/openadsdk/i/c/a; {:try_start_d .. :try_end_10} :catch_28
    .catch Lcom/bytedance/sdk/adnet/err/a; {:try_start_d .. :try_end_10} :catch_23
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_d .. :try_end_10} :catch_1e
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    .line 75
    :cond_10
    :goto_10
    goto :goto_35

    .line 71
    :catchall_11
    move-exception v3

    .line 72
    sget-boolean v4, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v4, :cond_35

    .line 73
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 69
    :catch_1e
    move-exception v0

    .line 70
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/VAdError;->printStackTrace()V

    goto :goto_10

    .line 67
    :catch_23
    move-exception v0

    .line 68
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/a;->printStackTrace()V

    goto :goto_10

    .line 63
    :catch_28
    move-exception v3

    .line 64
    sget-boolean v4, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v4, :cond_10

    .line 65
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 76
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a/a;->b(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->p:Lcom/bytedance/sdk/openadsdk/i/b$b;

    if-eqz v0, :cond_4d

    .line 79
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/i/b$b;->a(Lcom/bytedance/sdk/openadsdk/i/b;)V

    .line 81
    :cond_4d
    return-void
.end method
