.class public Lcom/sigmob/volley/toolbox/f;
.super Lcom/sigmob/volley/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/volley/toolbox/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/volley/m<",
        "Lcom/sigmob/volley/toolbox/d;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:Lcom/sigmob/volley/toolbox/d;

.field private e:J

.field private final f:Ljava/lang/Object;

.field private g:Lcom/sigmob/volley/toolbox/f$a;


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/f$a;)V
    .registers 8

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/sigmob/volley/m;-><init>(ILjava/lang/String;Lcom/sigmob/volley/o$a;)V

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/sigmob/volley/toolbox/f;->e:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/f;->f:Ljava/lang/Object;

    iput-object v2, p0, Lcom/sigmob/volley/toolbox/f;->g:Lcom/sigmob/volley/toolbox/f$a;

    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_38
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_45
    iput-object p1, p0, Lcom/sigmob/volley/toolbox/f;->d:Lcom/sigmob/volley/toolbox/d;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    iget-boolean v0, p1, Lcom/sigmob/volley/toolbox/d;->h:Z

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6c
    iput-object p2, p0, Lcom/sigmob/volley/toolbox/f;->g:Lcom/sigmob/volley/toolbox/f$a;

    new-instance p2, Lcom/sigmob/volley/d;

    const/16 v0, 0x2710

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p2, v0, v3, v2}, Lcom/sigmob/volley/d;-><init>(IIF)V

    invoke-virtual {p0, p2}, Lcom/sigmob/volley/toolbox/f;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/m;

    invoke-virtual {p0, v1}, Lcom/sigmob/volley/toolbox/f;->a(Z)Lcom/sigmob/volley/m;

    new-array p2, v3, [Ljava/lang/Object;

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    aput-object v0, p2, v1

    const/4 v0, 0x1

    iget-object p1, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    aput-object p1, p2, v0

    const-string p1, "FileDownloadRequest()  [ %s ], url = [%s]"

    invoke-static {p1, p2}, Lcom/sigmob/volley/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/o;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/j;",
            ")",
            "Lcom/sigmob/volley/o<",
            "Lcom/sigmob/volley/toolbox/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->d:Lcom/sigmob/volley/toolbox/d;

    iget-wide v1, p1, Lcom/sigmob/volley/j;->f:J

    iput-wide v1, v0, Lcom/sigmob/volley/toolbox/d;->f:J

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/f;->m()Z

    move-result v0

    if-nez v0, :cond_182

    iget-object p1, p1, Lcom/sigmob/volley/j;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/e;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_31

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_48

    :cond_31
    const-string v0, "content-length"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/sigmob/volley/toolbox/f;->e:J

    add-long/2addr v0, v4

    goto :goto_48

    :cond_47
    move-wide v0, v2

    :goto_48
    iget-object v4, p0, Lcom/sigmob/volley/toolbox/f;->d:Lcom/sigmob/volley/toolbox/d;

    iput-wide v0, v4, Lcom/sigmob/volley/toolbox/d;->e:J

    iget-object v4, p0, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_146

    iget-object v4, p0, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-lez v4, :cond_146

    iget-object v4, p0, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-eqz v4, :cond_6d

    cmp-long v2, v0, v2

    if-nez v2, :cond_146

    :cond_6d
    invoke-static {p1}, Lcom/sigmob/volley/toolbox/h;->b(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_129

    const/4 p1, 0x0

    :try_start_74
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_80} :catch_c0
    .catchall {:try_start_74 .. :try_end_80} :catchall_bd

    :try_start_80
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_87} :catch_ba
    .catchall {:try_start_80 .. :try_end_87} :catchall_b7

    const/16 v2, 0x1000

    :try_start_89
    new-array v3, v2, [B

    :goto_8b
    invoke-virtual {v0, v3, p1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_96

    invoke-virtual {v1, v3, p1, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_95} :catch_b5
    .catchall {:try_start_89 .. :try_end_95} :catchall_106

    goto :goto_8b

    :cond_96
    const/4 v2, 0x1

    :try_start_97
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_a5

    :catch_9b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v3, p1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a5
    :try_start_a5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_b3

    :catch_a9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_b3
    move p1, v2

    goto :goto_ec

    :catch_b5
    move-exception v2

    goto :goto_c3

    :catchall_b7
    move-exception v2

    move-object v1, v5

    goto :goto_107

    :catch_ba
    move-exception v2

    move-object v1, v5

    goto :goto_c3

    :catchall_bd
    move-exception v2

    move-object v1, v5

    goto :goto_108

    :catch_c0
    move-exception v2

    move-object v0, v5

    move-object v1, v0

    :goto_c3
    :try_start_c3
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, p1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_cc
    .catchall {:try_start_c3 .. :try_end_cc} :catchall_106

    if-eqz v0, :cond_dc

    :try_start_ce
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d2

    goto :goto_dc

    :catch_d2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, p1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_dc
    :goto_dc
    if-eqz v1, :cond_ec

    :try_start_de
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e2

    goto :goto_ec

    :catch_e2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, p1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ec
    :goto_ec
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    if-eqz p1, :cond_fa

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/f;->d:Lcom/sigmob/volley/toolbox/d;

    invoke-static {p1, v5}, Lcom/sigmob/volley/o;->a(Ljava/lang/Object;Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1

    :cond_fa
    new-instance p1, Lcom/sigmob/volley/t;

    const-string v0, "error gzip unzip the download temporary file!"

    invoke-direct {p1, v0}, Lcom/sigmob/volley/t;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sigmob/volley/o;->a(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1

    :catchall_106
    move-exception v2

    :goto_107
    move-object v5, v0

    :goto_108
    if-eqz v5, :cond_118

    :try_start_10a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_10e

    goto :goto_118

    :catch_10e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v3, p1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_118
    :goto_118
    if-eqz v1, :cond_128

    :try_start_11a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_11e

    goto :goto_128

    :catch_11e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_128
    :goto_128
    throw v2

    :cond_129
    iget-object p1, p0, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_13a

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/f;->d:Lcom/sigmob/volley/toolbox/d;

    invoke-static {p1, v5}, Lcom/sigmob/volley/o;->a(Ljava/lang/Object;Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1

    :cond_13a
    new-instance p1, Lcom/sigmob/volley/t;

    const-string v0, "Can\'t rename the download temporary file!"

    invoke-direct {p1, v0}, Lcom/sigmob/volley/t;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sigmob/volley/o;->a(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1

    :cond_146
    iget-object p1, p0, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_15f

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_15f

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/f;->d:Lcom/sigmob/volley/toolbox/d;

    invoke-static {p1, v5}, Lcom/sigmob/volley/o;->a(Ljava/lang/Object;Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1

    :cond_15f
    new-instance p1, Lcom/sigmob/volley/t;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download temporary file was invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sigmob/volley/t;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sigmob/volley/o;->a(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1

    :cond_182
    new-instance p1, Lcom/sigmob/volley/t;

    const-string v0, "Request was Canceled!"

    invoke-direct {p1, v0}, Lcom/sigmob/volley/t;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sigmob/volley/o;->a(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/sigmob/volley/t;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->d:Lcom/sigmob/volley/toolbox/d;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sigmob/volley/toolbox/d;->g:I

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_12
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1f
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->d:Lcom/sigmob/volley/toolbox/d;

    iput-object p1, v0, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/t;

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/f;->g:Lcom/sigmob/volley/toolbox/f$a;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->d:Lcom/sigmob/volley/toolbox/d;

    invoke-interface {p1, v0}, Lcom/sigmob/volley/toolbox/f$a;->c(Lcom/sigmob/volley/toolbox/d;)V

    return-void
.end method

.method protected a(Lcom/sigmob/volley/toolbox/d;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->d:Lcom/sigmob/volley/toolbox/d;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sigmob/volley/toolbox/d;->g:I

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->g:Lcom/sigmob/volley/toolbox/f$a;

    invoke-interface {v0, p1}, Lcom/sigmob/volley/toolbox/f$a;->a(Lcom/sigmob/volley/toolbox/d;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sigmob/volley/toolbox/d;

    invoke-virtual {p0, p1}, Lcom/sigmob/volley/toolbox/f;->a(Lcom/sigmob/volley/toolbox/d;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/i;)[B
    .registers 21

    move-object/from16 v1, p0

    const-string v2, "Error occured when calling consumingContent"

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/toolbox/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/e;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/h;->a(Ljava/util/Map;)Z

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/toolbox/i;->c()I

    move-result v4

    int-to-long v4, v4

    const-string v6, "Transfer-Encoding"

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v7, :cond_38

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "chunked"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    new-array v0, v11, [Ljava/lang/Object;

    const-string v6, "Response doesn\'t present Content-Length!"

    invoke-static {v6, v0}, Lcom/sigmob/volley/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f1

    :cond_38
    cmp-long v6, v4, v9

    if-ltz v6, :cond_f3

    const-string v7, "Content-Length"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f3

    if-nez v6, :cond_69

    iget-object v6, v1, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_69

    iget-object v6, v1, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_69

    iget-object v0, v1, Lcom/sigmob/volley/toolbox/f;->b:Ljava/io/File;

    iget-object v2, v1, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-array v0, v11, [B

    return-object v0

    :cond_69
    if-eqz v3, :cond_f1

    iget-object v6, v1, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    const-string v12, "Content-Range"

    invoke-static {v0, v12}, Lcom/sigmob/volley/toolbox/h;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v11

    const-string v13, "Content-Range %s"

    invoke-static {v13, v12}, Lcom/sigmob/volley/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v13, 0x1

    sub-long v13, v4, v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v13

    if-eq v13, v8, :cond_b0

    goto :goto_f9

    :cond_b0
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    iget-object v2, v1, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The Content-Range Header is invalid Assume["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] vs Real["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "], has remove the temporary file ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f1
    :goto_f1
    move-wide v6, v9

    goto :goto_f9

    :cond_f3
    iget-object v0, v1, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    :cond_f9
    :goto_f9
    const/4 v12, 0x0

    :try_start_fa
    new-instance v14, Ljava/io/RandomAccessFile;

    iget-object v0, v1, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    const-string v13, "rw"

    invoke-direct {v14, v0, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_103
    .catchall {:try_start_fa .. :try_end_103} :catchall_209

    if-eqz v3, :cond_10a

    :try_start_105
    invoke-virtual {v14, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    move-wide v9, v6

    goto :goto_10d

    :cond_10a
    invoke-virtual {v14, v9, v10}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_10d
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v3
    :try_end_111
    .catchall {:try_start_105 .. :try_end_111} :catchall_205

    const/16 v0, 0x2000

    :try_start_113
    new-array v6, v0, [B

    :goto_115
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7
    :try_end_119
    .catchall {:try_start_113 .. :try_end_119} :catchall_200

    const-string v15, " offset "

    const-string v13, " total: "

    const-string v12, "recv: "

    if-eq v7, v8, :cond_1c0

    :try_start_121
    invoke-virtual/range {p0 .. p0}, Lcom/sigmob/volley/toolbox/f;->m()Z

    move-result v0
    :try_end_125
    .catchall {:try_start_121 .. :try_end_125} :catchall_200

    if-eqz v0, :cond_149

    :try_start_127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/sigmob/volley/toolbox/f;->d:Lcom/sigmob/volley/toolbox/d;

    iget-object v6, v6, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " download  is cancel"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/sigmob/volley/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_143
    .catchall {:try_start_127 .. :try_end_143} :catchall_145

    goto/16 :goto_1c0

    :catchall_145
    move-exception v0

    move-object v12, v3

    goto/16 :goto_206

    :cond_149
    :try_start_149
    invoke-virtual {v14, v6, v11, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    move-object/from16 p1, v12

    int-to-long v11, v7

    add-long/2addr v9, v11

    iget-object v12, v1, Lcom/sigmob/volley/toolbox/f;->g:Lcom/sigmob/volley/toolbox/f$a;
    :try_end_152
    .catchall {:try_start_149 .. :try_end_152} :catchall_200

    if-eqz v12, :cond_18b

    :try_start_154
    iget-object v0, v1, Lcom/sigmob/volley/toolbox/f;->d:Lcom/sigmob/volley/toolbox/d;
    :try_end_156
    .catchall {:try_start_154 .. :try_end_156} :catchall_166

    move-object/from16 v11, p1

    move-object v8, v13

    move-object v13, v0

    move-object/from16 v18, v14

    move-object v1, v15

    move-wide v14, v4

    move-wide/from16 v16, v9

    :try_start_160
    invoke-interface/range {v12 .. v17}, Lcom/sigmob/volley/toolbox/f$a;->a(Lcom/sigmob/volley/toolbox/d;JJ)V
    :try_end_163
    .catchall {:try_start_160 .. :try_end_163} :catchall_164

    goto :goto_191

    :catchall_164
    move-exception v0

    goto :goto_16d

    :catchall_166
    move-exception v0

    move-object/from16 v11, p1

    move-object v8, v13

    move-object/from16 v18, v14

    move-object v1, v15

    :goto_16d
    :try_start_16d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "callback downloadProgress  error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v0, v13}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_191

    :cond_18b
    move-object/from16 v11, p1

    move-object v8, v13

    move-object/from16 v18, v14

    move-object v1, v15

    :goto_191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v7}, Lcom/sigmob/volley/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v1, p0

    move-object/from16 v14, v18

    const/4 v8, -0x1

    const/4 v11, 0x0

    goto/16 :goto_115

    :cond_1c0
    :goto_1c0
    move-object v11, v12

    move-object v8, v13

    move-object/from16 v18, v14

    move-object v1, v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/sigmob/volley/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1ec
    .catchall {:try_start_16d .. :try_end_1ec} :catchall_1fe

    if-eqz v3, :cond_1f8

    :try_start_1ee
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1f1
    .catchall {:try_start_1ee .. :try_end_1f1} :catchall_1f2

    goto :goto_1f8

    :catchall_1f2
    move-exception v0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/sigmob/volley/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1f8
    :goto_1f8
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V

    new-array v0, v1, [B

    return-object v0

    :catchall_1fe
    move-exception v0

    goto :goto_203

    :catchall_200
    move-exception v0

    move-object/from16 v18, v14

    :goto_203
    move-object v12, v3

    goto :goto_20c

    :catchall_205
    move-exception v0

    :goto_206
    move-object/from16 v18, v14

    goto :goto_20c

    :catchall_209
    move-exception v0

    move-object/from16 v18, v12

    :goto_20c
    :try_start_20c
    throw v0
    :try_end_20d
    .catchall {:try_start_20c .. :try_end_20d} :catchall_20d

    :catchall_20d
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_21c

    :try_start_211
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_214
    .catchall {:try_start_211 .. :try_end_214} :catchall_215

    goto :goto_21c

    :catchall_215
    move-exception v0

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/sigmob/volley/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21c
    :goto_21c
    if-eqz v18, :cond_221

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V

    :cond_221
    throw v1
.end method

.method public c()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sigmob/volley/toolbox/f;->e:J

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sigmob/volley/toolbox/f;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Range"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range,bytes="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/sigmob/volley/toolbox/f;->e:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sigmob/volley/toolbox/f;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public l()V
    .registers 3

    invoke-super {p0}, Lcom/sigmob/volley/m;->l()V

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Lcom/sigmob/volley/toolbox/f;->g:Lcom/sigmob/volley/toolbox/f$a;

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public r()Lcom/sigmob/volley/m$b;
    .registers 2

    sget-object v0, Lcom/sigmob/volley/m$b;->a:Lcom/sigmob/volley/m$b;

    return-object v0
.end method
