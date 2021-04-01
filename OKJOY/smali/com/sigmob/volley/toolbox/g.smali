.class public Lcom/sigmob/volley/toolbox/g;
.super Lcom/sigmob/volley/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/volley/q",
        "<",
        "Lcom/sigmob/volley/toolbox/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:Lcom/sigmob/volley/toolbox/d;

.field private e:J

.field private final f:Ljava/lang/Object;

.field private g:Lcom/sigmob/volley/toolbox/h;


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/h;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v2}, Lcom/sigmob/volley/q;-><init>(ILjava/lang/String;Lcom/sigmob/volley/y;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/volley/toolbox/g;->e:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/g;->f:Ljava/lang/Object;

    iput-object v2, p0, Lcom/sigmob/volley/toolbox/g;->g:Lcom/sigmob/volley/toolbox/h;

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3b
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_48
    iput-object p1, p0, Lcom/sigmob/volley/toolbox/g;->d:Lcom/sigmob/volley/toolbox/d;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    iget-boolean v0, p1, Lcom/sigmob/volley/toolbox/d;->h:Z

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6f
    iput-object p2, p0, Lcom/sigmob/volley/toolbox/g;->g:Lcom/sigmob/volley/toolbox/h;

    new-instance v0, Lcom/sigmob/volley/g;

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/sigmob/volley/g;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/sigmob/volley/toolbox/g;->a(Lcom/sigmob/volley/ab;)Lcom/sigmob/volley/q;

    invoke-virtual {p0, v3}, Lcom/sigmob/volley/toolbox/g;->a(Z)Lcom/sigmob/volley/q;

    const-string v0, "FileDownloadRequest()  [ %s ], url = [%s]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sigmob/volley/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/x;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/n;",
            ")",
            "Lcom/sigmob/volley/x",
            "<",
            "Lcom/sigmob/volley/toolbox/d;",
            ">;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->d:Lcom/sigmob/volley/toolbox/d;

    iget-wide v6, p1, Lcom/sigmob/volley/n;->f:J

    iput-wide v6, v0, Lcom/sigmob/volley/toolbox/d;->f:J

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/g;->r()Z

    move-result v0

    if-nez v0, :cond_159

    iget-object v0, p1, Lcom/sigmob/volley/n;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/f;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    const-string v0, "Transfer-Encoding"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const-string v0, "Transfer-Encoding"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_34
    iget-object v7, p0, Lcom/sigmob/volley/toolbox/g;->d:Lcom/sigmob/volley/toolbox/d;

    iput-wide v0, v7, Lcom/sigmob/volley/toolbox/d;->e:J

    iget-object v7, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_11b

    iget-object v7, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-lez v7, :cond_11b

    iget-object v7, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v7, v8, v0

    if-eqz v7, :cond_58

    cmp-long v2, v0, v2

    if-nez v2, :cond_11b

    :cond_58
    invoke-static {v6}, Lcom/sigmob/volley/toolbox/k;->d(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_fe

    :try_start_5e
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_6a} :catch_16d
    .catchall {:try_start_5e .. :try_end_6a} :catchall_db

    :try_start_6a
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_71} :catch_172
    .catchall {:try_start_6a .. :try_end_71} :catchall_166

    const/16 v0, 0x1000

    :try_start_73
    new-array v0, v0, [B

    :goto_75
    const/4 v3, 0x0

    const/16 v6, 0x1000

    invoke-virtual {v2, v0, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_ba

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_83} :catch_84
    .catchall {:try_start_73 .. :try_end_83} :catchall_169

    goto :goto_75

    :catch_84
    move-exception v0

    :goto_85
    :try_start_85
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_169

    if-eqz v2, :cond_8d

    :try_start_8a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_d0

    :cond_8d
    :goto_8d
    if-eqz v1, :cond_176

    :try_start_8f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_d5

    move v0, v4

    :cond_93
    :goto_93
    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->d:Lcom/sigmob/volley/toolbox/d;

    invoke-static {v0, v5}, Lcom/sigmob/volley/x;->a(Ljava/lang/Object;Lcom/sigmob/volley/c;)Lcom/sigmob/volley/x;

    move-result-object v0

    :goto_a0
    return-object v0

    :cond_a1
    const-string v0, "content-length"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    const-string v0, "content-length"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v8, p0, Lcom/sigmob/volley/toolbox/g;->e:J

    add-long/2addr v0, v8

    goto/16 :goto_34

    :cond_ba
    const/4 v0, 0x1

    if-eqz v2, :cond_c0

    :try_start_bd
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_cb

    :cond_c0
    :goto_c0
    if-eqz v1, :cond_93

    :try_start_c2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_93

    :catch_c6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_93

    :catch_cb
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c0

    :catch_d0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8d

    :catch_d5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v4

    goto :goto_93

    :catchall_db
    move-exception v0

    move-object v2, v5

    :goto_dd
    if-eqz v2, :cond_e2

    :try_start_df
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_e8

    :cond_e2
    :goto_e2
    if-eqz v5, :cond_e7

    :try_start_e4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_ed

    :cond_e7
    :goto_e7
    throw v0

    :catch_e8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e2

    :catch_ed
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e7

    :cond_f2
    new-instance v0, Lcom/sigmob/volley/ae;

    const-string v1, "error gzip unzip the download temporary file!"

    invoke-direct {v0, v1}, Lcom/sigmob/volley/ae;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sigmob/volley/x;->a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;

    move-result-object v0

    goto :goto_a0

    :cond_fe
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->d:Lcom/sigmob/volley/toolbox/d;

    invoke-static {v0, v5}, Lcom/sigmob/volley/x;->a(Ljava/lang/Object;Lcom/sigmob/volley/c;)Lcom/sigmob/volley/x;

    move-result-object v0

    goto :goto_a0

    :cond_10f
    new-instance v0, Lcom/sigmob/volley/ae;

    const-string v1, "Can\'t rename the download temporary file!"

    invoke-direct {v0, v1}, Lcom/sigmob/volley/ae;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sigmob/volley/x;->a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;

    move-result-object v0

    goto :goto_a0

    :cond_11b
    iget-object v2, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_135

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_135

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->d:Lcom/sigmob/volley/toolbox/d;

    invoke-static {v0, v5}, Lcom/sigmob/volley/x;->a(Ljava/lang/Object;Lcom/sigmob/volley/c;)Lcom/sigmob/volley/x;

    move-result-object v0

    goto/16 :goto_a0

    :cond_135
    new-instance v0, Lcom/sigmob/volley/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download temporary file was invalid!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/volley/ae;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sigmob/volley/x;->a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;

    move-result-object v0

    goto/16 :goto_a0

    :cond_159
    new-instance v0, Lcom/sigmob/volley/ae;

    const-string v1, "Request was Canceled!"

    invoke-direct {v0, v1}, Lcom/sigmob/volley/ae;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sigmob/volley/x;->a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;

    move-result-object v0

    goto/16 :goto_a0

    :catchall_166
    move-exception v0

    goto/16 :goto_dd

    :catchall_169
    move-exception v0

    move-object v5, v1

    goto/16 :goto_dd

    :catch_16d
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    goto/16 :goto_85

    :catch_172
    move-exception v0

    move-object v1, v5

    goto/16 :goto_85

    :cond_176
    move v0, v4

    goto/16 :goto_93

    :cond_179
    move-wide v0, v2

    goto/16 :goto_34
.end method

.method public a(Lcom/sigmob/volley/ae;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->d:Lcom/sigmob/volley/toolbox/d;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sigmob/volley/toolbox/d;->g:I

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_12
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1f
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->d:Lcom/sigmob/volley/toolbox/d;

    iput-object p1, v0, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/ae;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->g:Lcom/sigmob/volley/toolbox/h;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->d:Lcom/sigmob/volley/toolbox/d;

    invoke-interface {v0, v1}, Lcom/sigmob/volley/toolbox/h;->c(Lcom/sigmob/volley/toolbox/d;)V

    return-void
.end method

.method protected a(Lcom/sigmob/volley/toolbox/d;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->d:Lcom/sigmob/volley/toolbox/d;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sigmob/volley/toolbox/d;->g:I

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->g:Lcom/sigmob/volley/toolbox/h;

    invoke-interface {v0, p1}, Lcom/sigmob/volley/toolbox/h;->a(Lcom/sigmob/volley/toolbox/d;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/g;->g:Lcom/sigmob/volley/toolbox/h;

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sigmob/volley/toolbox/d;

    invoke-virtual {p0, p1}, Lcom/sigmob/volley/toolbox/g;->a(Lcom/sigmob/volley/toolbox/d;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/l;)[B
    .registers 16

    const/4 v1, 0x0

    const/4 v13, -0x1

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/l;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/f;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/sigmob/volley/toolbox/k;->c(Ljava/util/Map;)Z

    move-result v7

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/l;->c()I

    move-result v0

    int-to-long v2, v0

    const-string v0, "Transfer-Encoding"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string v0, "Transfer-Encoding"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "chunked"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string v0, "Response doesn\'t present Content-Length!"

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/sigmob/volley/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v4, v8

    :cond_36
    :goto_36
    :try_start_36
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    const-string v10, "rw"

    invoke-direct {v6, v0, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3f} :catch_1af
    .catchall {:try_start_36 .. :try_end_3f} :catchall_1a6

    if-eqz v6, :cond_1b6

    if-eqz v7, :cond_146

    :try_start_43
    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_46
    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_49} :catch_1b2
    .catchall {:try_start_43 .. :try_end_49} :catchall_1aa

    move-result-object v7

    const/16 v0, 0x2000

    :try_start_4c
    new-array v8, v0, [B

    :cond_4e
    :goto_4e
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v13, :cond_77

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/g;->r()Z

    move-result v1

    if-eqz v1, :cond_14e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->d:Lcom/sigmob/volley/toolbox/d;

    iget-object v1, v1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " download  is cancel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sigmob/volley/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_77} :catch_181
    .catchall {:try_start_4c .. :try_end_77} :catchall_1ad

    :cond_77
    :goto_77
    if-eqz v7, :cond_7c

    :try_start_79
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7c} :catch_193

    :cond_7c
    :goto_7c
    if-eqz v6, :cond_81

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_81
    new-array v0, v12, [B

    :goto_83
    return-object v0

    :cond_84
    cmp-long v0, v2, v8

    if-ltz v0, :cond_13e

    const-string v0, "Content-Length"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    cmp-long v0, v2, v8

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-array v0, v12, [B

    goto :goto_83

    :cond_b7
    if-eqz v7, :cond_1b9

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-string v0, "Content-Range"

    invoke-static {v6, v0}, Lcom/sigmob/volley/toolbox/k;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "Content-Range %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v12

    invoke-static {v6, v10}, Lcom/sigmob/volley/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_36

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "-"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v10, 0x1

    sub-long v10, v2, v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v10

    if-ne v10, v13, :cond_36

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Content-Range Header is invalid Assume["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] vs Real["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], has remove the temporary file ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13e
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    goto/16 :goto_36

    :cond_146
    const-wide/16 v4, 0x0

    :try_start_148
    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_14b
    .catch Ljava/lang/Throwable; {:try_start_148 .. :try_end_14b} :catch_1b2
    .catchall {:try_start_148 .. :try_end_14b} :catchall_1aa

    move-wide v4, v8

    goto/16 :goto_46

    :cond_14e
    const/4 v1, 0x0

    :try_start_14f
    invoke-virtual {v6, v8, v1, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v0, v0

    add-long/2addr v4, v0

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->g:Lcom/sigmob/volley/toolbox/h;
    :try_end_156
    .catch Ljava/lang/Throwable; {:try_start_14f .. :try_end_156} :catch_181
    .catchall {:try_start_14f .. :try_end_156} :catchall_1ad

    if-eqz v0, :cond_4e

    :try_start_158
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->g:Lcom/sigmob/volley/toolbox/h;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->d:Lcom/sigmob/volley/toolbox/d;

    invoke-interface/range {v0 .. v5}, Lcom/sigmob/volley/toolbox/h;->a(Lcom/sigmob/volley/toolbox/d;JJ)V
    :try_end_15f
    .catch Ljava/lang/Throwable; {:try_start_158 .. :try_end_15f} :catch_161
    .catchall {:try_start_158 .. :try_end_15f} :catchall_1ad

    goto/16 :goto_4e

    :catch_161
    move-exception v0

    :try_start_162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callback downloadProgress  error "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sigmob/volley/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_17f
    .catch Ljava/lang/Throwable; {:try_start_162 .. :try_end_17f} :catch_181
    .catchall {:try_start_162 .. :try_end_17f} :catchall_1ad

    goto/16 :goto_4e

    :catch_181
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    :goto_184
    :try_start_184
    throw v0
    :try_end_185
    .catchall {:try_start_184 .. :try_end_185} :catchall_185

    :catchall_185
    move-exception v0

    move-object v6, v1

    move-object v7, v2

    :goto_188
    if-eqz v7, :cond_18d

    :try_start_18a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_18d
    .catch Ljava/lang/Throwable; {:try_start_18a .. :try_end_18d} :catch_19d

    :cond_18d
    :goto_18d
    if-eqz v6, :cond_192

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_192
    throw v0

    :catch_193
    move-exception v0

    const-string v0, "Error occured when calling consumingContent"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sigmob/volley/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7c

    :catch_19d
    move-exception v1

    const-string v1, "Error occured when calling consumingContent"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sigmob/volley/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18d

    :catchall_1a6
    move-exception v0

    move-object v6, v1

    move-object v7, v1

    goto :goto_188

    :catchall_1aa
    move-exception v0

    move-object v7, v1

    goto :goto_188

    :catchall_1ad
    move-exception v0

    goto :goto_188

    :catch_1af
    move-exception v0

    move-object v2, v1

    goto :goto_184

    :catch_1b2
    move-exception v0

    move-object v2, v1

    move-object v1, v6

    goto :goto_184

    :cond_1b6
    move-object v7, v1

    goto/16 :goto_77

    :cond_1b9
    move-wide v4, v8

    goto/16 :goto_36
.end method

.method public d()Ljava/util/Map;
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sigmob/volley/toolbox/g;->e:J

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sigmob/volley/toolbox/g;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Range,bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sigmob/volley/toolbox/g;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sigmob/volley/toolbox/g;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public q()V
    .registers 3

    invoke-super {p0}, Lcom/sigmob/volley/q;->q()V

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/sigmob/volley/toolbox/g;->g:Lcom/sigmob/volley/toolbox/h;

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public w()Lcom/sigmob/volley/t;
    .registers 2

    sget-object v0, Lcom/sigmob/volley/t;->a:Lcom/sigmob/volley/t;

    return-object v0
.end method
