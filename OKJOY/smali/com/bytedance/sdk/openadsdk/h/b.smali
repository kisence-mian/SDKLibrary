.class Lcom/bytedance/sdk/openadsdk/h/b;
.super Lcom/bytedance/sdk/openadsdk/h/a;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/b$a;,
        Lcom/bytedance/sdk/openadsdk/h/b$b;
    }
.end annotation


# instance fields
.field final m:Ljava/lang/Object;

.field final n:Ljava/lang/Object;

.field private final o:I

.field private final p:Lcom/bytedance/sdk/openadsdk/h/b$b;

.field private volatile q:Lcom/bytedance/sdk/openadsdk/h/h$a;

.field private volatile r:Lcom/bytedance/sdk/openadsdk/h/c/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/b$a;)V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->d:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->e:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/a;Lcom/bytedance/sdk/openadsdk/h/b/c;)V

    .line 45
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->g:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    .line 46
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->i:Lcom/bytedance/sdk/openadsdk/h/b$b;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->p:Lcom/bytedance/sdk/openadsdk/h/b$b;

    .line 47
    iput-object p0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->m:Ljava/lang/Object;

    .line 49
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->g:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->h:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->f:Ljava/util/List;

    .line 52
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->c:Lcom/bytedance/sdk/openadsdk/h/l;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->j:Lcom/bytedance/sdk/openadsdk/h/l;

    .line 53
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->h:Lcom/bytedance/sdk/openadsdk/h/i;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    .line 54
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->j:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->n:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/h/l$a;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/h/h$a;,
            Lcom/bytedance/sdk/openadsdk/h/c/a;,
            Lcom/bytedance/sdk/openadsdk/h/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 145
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 146
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    if-lez v0, :cond_4e

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-ltz v0, :cond_4e

    .line 147
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_4d

    .line 148
    const-string v0, "TAG_PROXY_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no necessary to download for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cache file size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_4d
    :goto_4d
    return-void

    .line 152
    :cond_4e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->f()I

    move-result v2

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-result-object v5

    .line 154
    if-eqz v5, :cond_82

    iget v0, v5, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-ltz v0, :cond_82

    .line 155
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_4d

    .line 156
    const-string v0, "TAG_PROXY_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file download complete, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 161
    :cond_82
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->e()V

    .line 162
    long-to-int v0, v8

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    const-string v7, "GET"

    invoke-virtual {p0, p1, v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Lcom/bytedance/sdk/openadsdk/h/l$a;IILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/e/a;

    move-result-object v7

    .line 164
    if-eqz v7, :cond_4d

    .line 167
    const/4 v1, 0x0

    .line 169
    :try_start_91
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->e()V

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    if-nez v0, :cond_ec

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->e:Z

    if-eqz v0, :cond_ec

    move v0, v3

    :goto_9d
    const/4 v10, 0x1

    invoke-static {v7, v0, v10}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_ee

    .line 173
    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/c/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", rawKey: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", url: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/c/c;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_cd
    .catchall {:try_start_91 .. :try_end_cd} :catchall_cd

    .line 231
    :catchall_cd
    move-exception v0

    move v2, v3

    :goto_cf
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/io/Closeable;)V

    .line 233
    if-eqz v1, :cond_db

    .line 234
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/h;->a()V

    .line 237
    :cond_db
    if-eqz v2, :cond_eb

    .line 238
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->a()V

    .line 239
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v1, :cond_eb

    .line 240
    const-string v1, "TAG_PROXY_DownloadTask"

    const-string v2, "cancel call"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_eb
    throw v0

    :cond_ec
    move v0, v4

    .line 171
    goto :goto_9d

    .line 176
    :cond_ee
    :try_start_ee
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;)I

    move-result v0

    .line 177
    if-eqz v5, :cond_173

    iget v10, v5, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    if-eq v10, v0, :cond_173

    .line 178
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_12c

    .line 179
    const-string v2, "TAG_PROXY_DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Length not match, old: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v5, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", key: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/h/b;->h:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_12c
    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/c/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Length not match, old length: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v5, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", new length: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", rawKey: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", currentUrl: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", previousInfo: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v5, Lcom/bytedance/sdk/openadsdk/h/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/c/b;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/h/b;->h:Ljava/lang/String;

    invoke-static {v7, v0, v5, v2}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;Lcom/bytedance/sdk/openadsdk/h/b/c;Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/h/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-result-object v0

    .line 187
    if-nez v0, :cond_229

    move v5, v4

    .line 188
    :goto_185
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;

    move-result-object v10

    .line 189
    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/h;

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->d:Z

    if-eqz v0, :cond_22e

    const-string v0, "rwd"

    :goto_191
    invoke-direct {v2, v6, v0}, Lcom/bytedance/sdk/openadsdk/h/h;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_194
    .catchall {:try_start_ee .. :try_end_194} :catchall_cd

    .line 190
    :try_start_194
    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/openadsdk/h/h;->a(J)V

    .line 191
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_1b3

    .line 192
    const-string v0, "TAG_PROXY_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preload start from: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1b3
    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 197
    long-to-int v0, v8

    .line 198
    :goto_1b8
    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_23f

    .line 199
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->e()V

    .line 201
    if-lez v6, :cond_1dd

    .line 202
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v6}, Lcom/bytedance/sdk/openadsdk/h/h;->a([BII)V

    .line 203
    add-int/2addr v0, v6

    .line 205
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/h/b;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    if-eqz v8, :cond_1d5

    .line 206
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/h/b;->m:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1cf
    .catchall {:try_start_194 .. :try_end_1cf} :catchall_235

    .line 207
    :try_start_1cf
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/h/b;->m:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 208
    monitor-exit v8
    :try_end_1d5
    .catchall {:try_start_1cf .. :try_end_1d5} :catchall_232

    .line 211
    :cond_1d5
    :try_start_1d5
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/h/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 213
    invoke-virtual {p0, v5, v0}, Lcom/bytedance/sdk/openadsdk/h/b;->a(II)V

    .line 216
    :cond_1dd
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    if-lez v6, :cond_23a

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    if-lt v0, v6, :cond_23a

    .line 217
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v1, :cond_20d

    .line 218
    const-string v1, "TAG_PROXY_DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download, more data received, currentCacheFileSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", max: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20d
    .catchall {:try_start_1d5 .. :try_end_20d} :catchall_235

    .line 231
    :cond_20d
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/io/Closeable;)V

    .line 233
    if-eqz v2, :cond_219

    .line 234
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/h;->a()V

    .line 238
    :cond_219
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->a()V

    .line 239
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_4d

    .line 240
    const-string v0, "TAG_PROXY_DownloadTask"

    const-string v1, "cancel call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 187
    :cond_229
    :try_start_229
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    move v5, v0

    goto/16 :goto_185

    .line 189
    :cond_22e
    const-string v0, "rw"
    :try_end_230
    .catchall {:try_start_229 .. :try_end_230} :catchall_cd

    goto/16 :goto_191

    .line 208
    :catchall_232
    move-exception v0

    :try_start_233
    monitor-exit v8
    :try_end_234
    .catchall {:try_start_233 .. :try_end_234} :catchall_232

    :try_start_234
    throw v0

    .line 231
    :catchall_235
    move-exception v0

    move-object v1, v2

    move v2, v3

    goto/16 :goto_cf

    .line 222
    :cond_23a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->e()V
    :try_end_23d
    .catchall {:try_start_234 .. :try_end_23d} :catchall_235

    goto/16 :goto_1b8

    .line 226
    :cond_23f
    :try_start_23f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->c()V

    .line 227
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_24d

    .line 228
    const-string v0, "TAG_PROXY_DownloadTask"

    const-string v1, "download succeed, no need to cancel call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24d
    .catchall {:try_start_23f .. :try_end_24d} :catchall_25b

    .line 231
    :cond_24d
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/io/Closeable;)V

    .line 233
    if-eqz v2, :cond_4d

    .line 234
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/h;->a()V

    goto/16 :goto_4d

    .line 231
    :catchall_25b
    move-exception v0

    move-object v1, v2

    move v2, v4

    goto/16 :goto_cf
.end method

.method private j()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/h/c/a;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 94
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->j:Lcom/bytedance/sdk/openadsdk/h/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/l;->a()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 95
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->e()V

    .line 97
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->j:Lcom/bytedance/sdk/openadsdk/h/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/l;->b()Lcom/bytedance/sdk/openadsdk/h/l$a;

    move-result-object v1

    .line 99
    :try_start_12
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Lcom/bytedance/sdk/openadsdk/h/l$a;)V
    :try_end_15
    .catch Lcom/bytedance/sdk/openadsdk/h/c/c; {:try_start_12 .. :try_end_15} :catch_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_29
    .catch Lcom/bytedance/sdk/openadsdk/h/h$a; {:try_start_12 .. :try_end_15} :catch_67
    .catch Lcom/bytedance/sdk/openadsdk/h/c/b; {:try_start_12 .. :try_end_15} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_89

    .line 100
    const/4 v0, 0x1

    .line 140
    :cond_16
    :goto_16
    return v0

    .line 101
    :catch_17
    move-exception v2

    .line 102
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/l$a;->a()V

    .line 103
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 104
    :catch_29
    move-exception v2

    .line 106
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_31

    .line 107
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/l$a;->b()V

    .line 110
    :cond_31
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->b()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 111
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v1, :cond_1

    .line 112
    const-string v1, "Canceled"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 113
    const-string v1, "TAG_PROXY_DownloadTask"

    const-string v2, "okhttp call canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 115
    :cond_4f
    const-string v1, "TAG_PROXY_DownloadTask"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    :cond_59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 121
    :catch_67
    move-exception v1

    .line 122
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->q:Lcom/bytedance/sdk/openadsdk/h/h$a;

    .line 123
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 125
    :catch_78
    move-exception v1

    .line 126
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->r:Lcom/bytedance/sdk/openadsdk/h/c/b;

    .line 127
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_16

    .line 128
    const-string v2, "TAG_PROXY_DownloadTask"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 133
    :catch_89
    move-exception v1

    .line 134
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_16

    .line 135
    const-string v2, "TAG_PROXY_DownloadTask"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16
.end method


# virtual methods
.method h()Lcom/bytedance/sdk/openadsdk/h/h$a;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->q:Lcom/bytedance/sdk/openadsdk/h/h$a;

    return-object v0
.end method

.method i()Lcom/bytedance/sdk/openadsdk/h/c/b;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->r:Lcom/bytedance/sdk/openadsdk/h/c/b;

    return-object v0
.end method

.method public run()V
    .registers 7

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 62
    :try_start_b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->j()Z
    :try_end_e
    .catch Lcom/bytedance/sdk/openadsdk/h/c/a; {:try_start_b .. :try_end_e} :catch_2a
    .catch Lcom/bytedance/sdk/adnet/err/a; {:try_start_b .. :try_end_e} :catch_39
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_b .. :try_end_e} :catch_3e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_43

    .line 76
    :cond_e
    :goto_e
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a/a;->b(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->p:Lcom/bytedance/sdk/openadsdk/h/b$b;

    if-eqz v0, :cond_29

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->p:Lcom/bytedance/sdk/openadsdk/h/b$b;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/b$b;->a(Lcom/bytedance/sdk/openadsdk/h/b;)V

    .line 81
    :cond_29
    return-void

    .line 63
    :catch_2a
    move-exception v2

    .line 64
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v3, :cond_e

    .line 65
    const-string v3, "TAG_PROXY_DownloadTask"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 67
    :catch_39
    move-exception v2

    .line 68
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/err/a;->printStackTrace()V

    goto :goto_e

    .line 69
    :catch_3e
    move-exception v2

    .line 70
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/err/VAdError;->printStackTrace()V

    goto :goto_e

    .line 71
    :catch_43
    move-exception v2

    .line 72
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v3, :cond_e

    .line 73
    const-string v3, "TAG_PROXY_DownloadTask"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method
