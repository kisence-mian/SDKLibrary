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
        "Lcom/bytedance/sdk/adnet/core/Request<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private final e:Ljava/lang/Object;

.field private f:Lcom/bytedance/sdk/adnet/core/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/m$a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/m$a<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 65
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/c;->e:Ljava/lang/Object;

    .line 81
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/c;->f:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 82
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    .line 83
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ".tmp"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    .line 86
    :try_start_2d
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4c

    .line 88
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_4c
    .catchall {:try_start_2d .. :try_end_4c} :catchall_4d

    .line 91
    :cond_4c
    goto :goto_4e

    .line 90
    :catchall_4d
    move-exception p1

    .line 94
    :goto_4e
    new-instance p1, Lcom/bytedance/sdk/adnet/core/e;

    const/16 p2, 0x61a8

    const/4 p3, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, v0}, Lcom/bytedance/sdk/adnet/core/e;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/b/c;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 98
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/b/c;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    .line 99
    return-void
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 289
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 290
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Header;

    .line 291
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 292
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 294
    :cond_37
    goto :goto_1a

    .line 296
    :cond_38
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/HttpResponse;)Z
    .registers 3

    .line 277
    const-string v0, "Content-Encoding"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gzip"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private c(Lcom/bytedance/sdk/adnet/core/HttpResponse;)Z
    .registers 5

    .line 281
    const-string v0, "Accept-Ranges"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bytes"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 282
    return v2

    .line 284
    :cond_10
    const-string v0, "Content-Range"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 285
    if-eqz p1, :cond_1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    return v2
.end method

.method private h()V
    .registers 2

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 155
    goto :goto_7

    .line 154
    :catchall_6
    move-exception v0

    .line 157
    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    .line 159
    goto :goto_e

    .line 158
    :catchall_d
    move-exception v0

    .line 160
    :goto_e
    return-void
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/i;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

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

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/b;->a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1

    .line 139
    :cond_2e
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/b/c;->h()V

    .line 140
    new-instance p1, Lcom/bytedance/sdk/adnet/err/VAdError;

    const-string v0, "Can\'t rename the download temporary file!"

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1

    .line 143
    :cond_3d
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/b/c;->h()V

    .line 144
    new-instance p1, Lcom/bytedance/sdk/adnet/err/VAdError;

    const-string v0, "Download temporary file was invalid!"

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1

    .line 147
    :cond_4c
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/b/c;->h()V

    .line 148
    new-instance p1, Lcom/bytedance/sdk/adnet/err/VAdError;

    const-string v0, "Request was Canceled!"

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1
.end method

.method protected a(JJ)V
    .registers 7

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/c;->f:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 317
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 319
    instance-of v0, v1, Lcom/bytedance/sdk/adnet/b/c$a;

    if-eqz v0, :cond_f

    .line 320
    check-cast v1, Lcom/bytedance/sdk/adnet/b/c$a;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bytedance/sdk/adnet/b/c$a;->a(JJ)V

    .line 322
    :cond_f
    return-void

    .line 317
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method protected a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/c;->f:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 304
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_14

    .line 306
    if-eqz v1, :cond_13

    .line 307
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/adnet/core/m$a;->a(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 310
    :cond_13
    return-void

    .line 304
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/HttpResponse;)[B
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/f;
        }
    .end annotation

    .line 166
    move-object/from16 v1, p0

    const-string v2, "Error occured when calling tmpFile.close"

    const-string v3, "Error occured when calling consumingContent"

    const-string v4, "Error occured when calling InputStream.close"

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContentLength()I

    move-result v0

    int-to-long v5, v0

    .line 167
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    const/4 v9, 0x0

    if-gtz v0, :cond_1b

    .line 168
    new-array v0, v9, [Ljava/lang/Object;

    const-string v10, "Response doesn\'t present Content-Length!"

    invoke-static {v10, v0}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->g()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 172
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/adnet/b/c;->c(Lcom/bytedance/sdk/adnet/core/HttpResponse;)Z

    move-result v0

    .line 173
    const/4 v12, -0x1

    if-eqz v0, :cond_98

    .line 174
    add-long/2addr v5, v10

    .line 179
    const-string v13, "Content-Range"

    move-object/from16 v14, p1

    invoke-direct {v1, v14, v13}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 181
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9a

    .line 182
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bytes "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "-"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v16, 0x1

    sub-long v7, v5, v16

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 183
    invoke-static {v13, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v8

    if-eq v8, v12, :cond_61

    goto :goto_9a

    .line 184
    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Content-Range Header is invalid Assume["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] vs Real["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], please remove the temporary file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->g()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_98
    move-object/from16 v14, p1

    .line 194
    :cond_9a
    :goto_9a
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const/4 v7, 0x0

    if-lez v9, :cond_bc

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-nez v8, :cond_bc

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->g()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 198
    invoke-virtual {v1, v5, v6, v5, v6}, Lcom/bytedance/sdk/adnet/b/c;->a(JJ)V

    .line 199
    return-object v7

    .line 202
    :cond_bc
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_d3

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 206
    :cond_d3
    nop

    .line 208
    :try_start_d4
    new-instance v8, Ljava/io/RandomAccessFile;

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->g()Ljava/io/File;

    move-result-object v9

    const-string v13, "rw"

    invoke-direct {v8, v9, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_df
    .catchall {:try_start_d4 .. :try_end_df} :catchall_ee

    .line 211
    if-eqz v0, :cond_e5

    .line 212
    :try_start_e1
    invoke-virtual {v8, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_eb

    .line 215
    :cond_e5
    const-wide/16 v12, 0x0

    invoke-virtual {v8, v12, v13}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_ea
    .catchall {:try_start_e1 .. :try_end_ea} :catchall_ec

    .line 216
    move-wide v10, v12

    .line 219
    :goto_eb
    goto :goto_f0

    .line 218
    :catchall_ec
    move-exception v0

    goto :goto_f0

    :catchall_ee
    move-exception v0

    move-object v8, v7

    .line 221
    :goto_f0
    nop

    .line 223
    :try_start_f1
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v12
    :try_end_f5
    .catchall {:try_start_f1 .. :try_end_f5} :catchall_14e

    .line 225
    :try_start_f5
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/adnet/b/c;->b(Lcom/bytedance/sdk/adnet/core/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_105

    instance-of v0, v12, Ljava/util/zip/GZIPInputStream;

    if-nez v0, :cond_105

    .line 226
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v12, v0

    .line 228
    :cond_105
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 232
    invoke-virtual {v1, v10, v11, v5, v6}, Lcom/bytedance/sdk/adnet/b/c;->a(JJ)V

    .line 234
    :cond_10c
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v9, -0x1

    if-eq v13, v9, :cond_122

    .line 235
    const/4 v14, 0x0

    invoke-virtual {v8, v0, v14, v13}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 237
    int-to-long v13, v13

    add-long/2addr v10, v13

    .line 240
    invoke-virtual {v1, v10, v11, v5, v6}, Lcom/bytedance/sdk/adnet/b/c;->a(JJ)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->isCanceled()Z

    move-result v13
    :try_end_120
    .catchall {:try_start_f5 .. :try_end_120} :catchall_14c

    if-eqz v13, :cond_10c

    .line 251
    :cond_122
    if-eqz v12, :cond_130

    :try_start_124
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_127
    .catchall {:try_start_124 .. :try_end_127} :catchall_128

    goto :goto_130

    .line 252
    :catchall_128
    move-exception v0

    .line 253
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_131

    .line 254
    :cond_130
    :goto_130
    nop

    .line 258
    :goto_131
    if-eqz v12, :cond_13f

    .line 259
    :try_start_133
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_136
    .catchall {:try_start_133 .. :try_end_136} :catchall_137

    goto :goto_13f

    .line 261
    :catchall_137
    move-exception v0

    .line 264
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_140

    .line 265
    :cond_13f
    :goto_13f
    nop

    .line 267
    :goto_140
    :try_start_140
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_143
    .catchall {:try_start_140 .. :try_end_143} :catchall_144

    goto :goto_179

    .line 268
    :catchall_144
    move-exception v0

    .line 269
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_181

    .line 246
    :catchall_14c
    move-exception v0

    goto :goto_150

    :catchall_14e
    move-exception v0

    move-object v12, v7

    .line 247
    :goto_150
    :try_start_150
    const-string v0, "Error occured when FileRequest.parseHttpResponse"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_158
    .catchall {:try_start_150 .. :try_end_158} :catchall_183

    .line 251
    if-eqz v12, :cond_166

    :try_start_15a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_15d
    .catchall {:try_start_15a .. :try_end_15d} :catchall_15e

    goto :goto_166

    .line 252
    :catchall_15e
    move-exception v0

    .line 253
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_167

    .line 254
    :cond_166
    :goto_166
    nop

    .line 258
    :goto_167
    if-eqz v12, :cond_175

    .line 259
    :try_start_169
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_16c
    .catchall {:try_start_169 .. :try_end_16c} :catchall_16d

    goto :goto_175

    .line 261
    :catchall_16d
    move-exception v0

    .line 264
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_176

    .line 265
    :cond_175
    :goto_175
    nop

    .line 267
    :goto_176
    :try_start_176
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_179
    .catchall {:try_start_176 .. :try_end_179} :catchall_17a

    .line 270
    :goto_179
    goto :goto_182

    .line 268
    :catchall_17a
    move-exception v0

    .line 269
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :goto_181
    nop

    .line 273
    :goto_182
    return-object v7

    .line 249
    :catchall_183
    move-exception v0

    move-object v5, v0

    .line 251
    if-eqz v12, :cond_193

    :try_start_187
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_18a
    .catchall {:try_start_187 .. :try_end_18a} :catchall_18b

    goto :goto_193

    .line 252
    :catchall_18b
    move-exception v0

    .line 253
    const/4 v6, 0x0

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_194

    .line 254
    :cond_193
    :goto_193
    nop

    .line 258
    :goto_194
    if-eqz v12, :cond_1a2

    .line 259
    :try_start_196
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_199
    .catchall {:try_start_196 .. :try_end_199} :catchall_19a

    goto :goto_1a2

    .line 261
    :catchall_19a
    move-exception v0

    .line 264
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a3

    .line 265
    :cond_1a2
    :goto_1a2
    nop

    .line 267
    :goto_1a3
    :try_start_1a3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a6
    .catchall {:try_start_1a3 .. :try_end_1a6} :catchall_1a7

    .line 270
    goto :goto_1ae

    .line 268
    :catchall_1a7
    move-exception v0

    .line 269
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :goto_1ae
    throw v5
.end method

.method public cancel()V
    .registers 3

    .line 111
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Lcom/bytedance/sdk/adnet/b/c;->f:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public f()Ljava/io/File;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    return-object v0
.end method

.method public g()Ljava/io/File;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
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

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Range"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-object v0
.end method

.method public getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;
    .registers 2

    .line 326
    sget-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->a:Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object v0
.end method
