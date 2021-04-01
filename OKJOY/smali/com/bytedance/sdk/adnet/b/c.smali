.class public Lcom/bytedance/sdk/adnet/b/c;
.super Lcom/bytedance/sdk/adnet/core/Request;
.source "FileRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/adnet/core/Request",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private final e:Ljava/lang/Object;

.field private f:Lcom/bytedance/sdk/adnet/core/n$a;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/n$a",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/n$a",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->e:Ljava/lang/Object;

    .line 81
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/c;->f:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    .line 83
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    .line 86
    :try_start_2d
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_4e} :catch_60

    .line 94
    :cond_4e
    :goto_4e
    new-instance v0, Lcom/bytedance/sdk/adnet/core/e;

    const/16 v1, 0x61a8

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/adnet/core/e;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/b/c;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/b/c;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    .line 99
    return-void

    .line 90
    :catch_60
    move-exception v0

    goto :goto_4e
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 289
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 290
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Header;

    .line 291
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 292
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_36
    return-object v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_36
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/HttpResponse;)Z
    .registers 4

    .prologue
    .line 277
    const-string v0, "Content-Encoding"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/bytedance/sdk/adnet/core/HttpResponse;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 281
    const-string v1, "Accept-Ranges"

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bytes"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 285
    :cond_f
    :goto_f
    return v0

    .line 284
    :cond_10
    const-string v1, "Content-Range"

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_20

    const-string v2, "bytes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private h()V
    .registers 2

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_d

    .line 157
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_b

    .line 160
    :goto_a
    return-void

    .line 158
    :catch_b
    move-exception v0

    goto :goto_a

    .line 154
    :catch_d
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/j;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/c;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3d

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 137
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/c;->a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/n;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    .line 148
    :goto_2d
    return-object v0

    .line 139
    :cond_2e
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/b/c;->h()V

    .line 140
    new-instance v0, Lcom/bytedance/sdk/adnet/err/VAdError;

    const-string v1, "Can\'t rename the download temporary file!"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/core/n;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    goto :goto_2d

    .line 143
    :cond_3d
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/b/c;->h()V

    .line 144
    new-instance v0, Lcom/bytedance/sdk/adnet/err/VAdError;

    const-string v1, "Download temporary file was invalid!"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/core/n;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    goto :goto_2d

    .line 147
    :cond_4c
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/b/c;->h()V

    .line 148
    new-instance v0, Lcom/bytedance/sdk/adnet/err/VAdError;

    const-string v1, "Request was Canceled!"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/core/n;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    goto :goto_2d
.end method

.method protected a(JJ)V
    .registers 8

    .prologue
    .line 315
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/c;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->f:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 317
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 319
    instance-of v1, v0, Lcom/bytedance/sdk/adnet/b/c$a;

    if-eqz v1, :cond_f

    .line 320
    check-cast v0, Lcom/bytedance/sdk/adnet/b/c$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/adnet/b/c$a;->a(JJ)V

    .line 322
    :cond_f
    return-void

    .line 317
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method protected a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/c;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->f:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 304
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_14

    .line 306
    if-eqz v0, :cond_13

    .line 307
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/n;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/core/n;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/adnet/core/n$a;->a(Lcom/bytedance/sdk/adnet/core/n;)V

    .line 310
    :cond_13
    return-void

    .line 304
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/HttpResponse;)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/f;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContentLength()I

    move-result v0

    int-to-long v2, v0

    .line 167
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_13

    .line 168
    const-string v0, "Response doesn\'t present Content-Length!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_13
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/c;->g()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 172
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/b/c;->c(Lcom/bytedance/sdk/adnet/core/HttpResponse;)Z

    move-result v4

    .line 173
    if-eqz v4, :cond_8d

    .line 174
    add-long/2addr v2, v0

    .line 179
    const-string v5, "Content-Range"

    invoke-direct {p0, p1, v5}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8d

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x1

    sub-long v8, v2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-static {v5, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8d

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Content-Range Header is invalid Assume["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] vs Real["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], please remove the temporary file ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/c;->g()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    move-wide v6, v2

    .line 194
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_b0

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_b0

    .line 196
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/c;->g()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 198
    invoke-virtual {p0, v6, v7, v6, v7}, Lcom/bytedance/sdk/adnet/b/c;->a(JJ)V

    .line 199
    const/4 v0, 0x0

    .line 273
    :goto_af
    return-object v0

    .line 202
    :cond_b0
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_c7

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 203
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 206
    :cond_c7
    const/4 v3, 0x0

    .line 208
    :try_start_c8
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/c;->g()Ljava/io/File;

    move-result-object v5

    const-string v8, "rw"

    invoke-direct {v2, v5, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_d3} :catch_124

    .line 211
    if-eqz v4, :cond_11c

    .line 212
    :try_start_d5
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_d5 .. :try_end_d8} :catch_1b7

    :goto_d8
    move-object v10, v2

    move-wide v2, v0

    move-object v0, v10

    .line 221
    :goto_db
    const/4 v1, 0x0

    .line 223
    :try_start_dc
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_dc .. :try_end_df} :catch_148
    .catchall {:try_start_dc .. :try_end_df} :catchall_17d

    move-result-object v1

    .line 225
    :try_start_e0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/b/c;->b(Lcom/bytedance/sdk/adnet/core/HttpResponse;)Z

    move-result v4

    if-eqz v4, :cond_f0

    instance-of v4, v1, Ljava/util/zip/GZIPInputStream;

    if-nez v4, :cond_f0

    .line 226
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_ef} :catch_148
    .catchall {:try_start_e0 .. :try_end_ef} :catchall_1ad

    move-object v1, v4

    .line 228
    :cond_f0
    const/16 v4, 0x400

    :try_start_f2
    new-array v4, v4, [B

    .line 232
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/bytedance/sdk/adnet/b/c;->a(JJ)V

    .line 234
    :cond_f7
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_10d

    .line 235
    const/4 v8, 0x0

    invoke-virtual {v0, v4, v8, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 237
    int-to-long v8, v5

    add-long/2addr v2, v8

    .line 240
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/bytedance/sdk/adnet/b/c;->a(JJ)V

    .line 242
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/c;->isCanceled()Z
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_f2 .. :try_end_10a} :catch_148
    .catchall {:try_start_f2 .. :try_end_10a} :catchall_1b2

    move-result v5

    if-eqz v5, :cond_f7

    .line 251
    :cond_10d
    if-eqz v1, :cond_112

    :try_start_10f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_112
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_112} :catch_12a

    .line 258
    :cond_112
    :goto_112
    if-eqz v1, :cond_117

    .line 259
    :try_start_114
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_114 .. :try_end_117} :catch_134

    .line 267
    :cond_117
    :goto_117
    :try_start_117
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_117 .. :try_end_11a} :catch_13e

    .line 273
    :goto_11a
    const/4 v0, 0x0

    goto :goto_af

    .line 215
    :cond_11c
    const-wide/16 v4, 0x0

    :try_start_11e
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_11e .. :try_end_121} :catch_1b7

    .line 216
    const-wide/16 v0, 0x0

    goto :goto_d8

    .line 218
    :catch_124
    move-exception v2

    move-object v2, v3

    :goto_126
    move-object v10, v2

    move-wide v2, v0

    move-object v0, v10

    goto :goto_db

    .line 252
    :catch_12a
    move-exception v2

    .line 253
    const-string v2, "Error occured when calling InputStream.close"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_112

    .line 261
    :catch_134
    move-exception v1

    .line 264
    const-string v1, "Error occured when calling consumingContent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_117

    .line 268
    :catch_13e
    move-exception v0

    .line 269
    const-string v0, "Error occured when calling tmpFile.close"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11a

    .line 246
    :catch_148
    move-exception v2

    .line 247
    :try_start_149
    const-string v2, "Error occured when FileRequest.parseHttpResponse"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_151
    .catchall {:try_start_149 .. :try_end_151} :catchall_1b2

    .line 251
    if-eqz v1, :cond_156

    :try_start_153
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_156
    .catch Ljava/lang/Throwable; {:try_start_153 .. :try_end_156} :catch_169

    .line 258
    :cond_156
    :goto_156
    if-eqz v1, :cond_15b

    .line 259
    :try_start_158
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15b
    .catch Ljava/lang/Throwable; {:try_start_158 .. :try_end_15b} :catch_173

    .line 267
    :cond_15b
    :goto_15b
    :try_start_15b
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15e
    .catch Ljava/lang/Throwable; {:try_start_15b .. :try_end_15e} :catch_15f

    goto :goto_11a

    .line 268
    :catch_15f
    move-exception v0

    .line 269
    const-string v0, "Error occured when calling tmpFile.close"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11a

    .line 252
    :catch_169
    move-exception v2

    .line 253
    const-string v2, "Error occured when calling InputStream.close"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_156

    .line 261
    :catch_173
    move-exception v1

    .line 264
    const-string v1, "Error occured when calling consumingContent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15b

    .line 249
    :catchall_17d
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 251
    :goto_181
    if-eqz v2, :cond_186

    :try_start_183
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_186
    .catch Ljava/lang/Throwable; {:try_start_183 .. :try_end_186} :catch_18f

    .line 258
    :cond_186
    :goto_186
    if-eqz v2, :cond_18b

    .line 259
    :try_start_188
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_18b
    .catch Ljava/lang/Throwable; {:try_start_188 .. :try_end_18b} :catch_199

    .line 267
    :cond_18b
    :goto_18b
    :try_start_18b
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18e
    .catch Ljava/lang/Throwable; {:try_start_18b .. :try_end_18e} :catch_1a3

    .line 271
    :goto_18e
    throw v1

    .line 252
    :catch_18f
    move-exception v3

    .line 253
    const-string v3, "Error occured when calling InputStream.close"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_186

    .line 261
    :catch_199
    move-exception v2

    .line 264
    const-string v2, "Error occured when calling consumingContent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18b

    .line 268
    :catch_1a3
    move-exception v0

    .line 269
    const-string v0, "Error occured when calling tmpFile.close"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18e

    .line 249
    :catchall_1ad
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_181

    :catchall_1b2
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_181

    .line 218
    :catch_1b7
    move-exception v3

    goto/16 :goto_126
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 111
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V

    .line 112
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/c;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->f:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public f()Ljava/io/File;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    return-object v0
.end method

.method public g()Ljava/io/File;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-object v0
.end method

.method public getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;
    .registers 2

    .prologue
    .line 326
    sget-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->a:Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object v0
.end method
