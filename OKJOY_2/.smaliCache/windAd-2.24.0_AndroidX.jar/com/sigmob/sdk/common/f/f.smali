.class public final Lcom/sigmob/sdk/common/f/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Untaring %s to dir %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_24
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2a

    goto :goto_3b

    :catchall_2a
    move-exception v4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_3b
    const-string p0, "tar"

    new-instance v5, Lcom/sigmob/a/d;

    if-eqz v4, :cond_49

    invoke-direct {v5}, Lcom/sigmob/a/d;-><init>()V

    invoke-virtual {v5, p0, v4}, Lcom/sigmob/a/d;->a(Ljava/lang/String;Ljava/io/InputStream;)Lcom/sigmob/a/c;

    move-result-object p0

    goto :goto_50

    :cond_49
    invoke-direct {v5}, Lcom/sigmob/a/d;-><init>()V

    invoke-virtual {v5, p0, v1}, Lcom/sigmob/a/d;->a(Ljava/lang/String;Ljava/io/InputStream;)Lcom/sigmob/a/c;

    move-result-object p0

    :goto_50
    check-cast p0, Lcom/sigmob/a/a/b;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5b

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Lcom/sigmob/a/a/b;->c()Lcom/sigmob/a/a;

    move-result-object v5

    check-cast v5, Lcom/sigmob/a/a/a;

    if-eqz v5, :cond_e7

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/sigmob/a/a/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sigmob/a/a/a;->g()Z

    move-result v5

    if-eqz v5, :cond_b5

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    const-string v7, "Attempting to write output directory %s."

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_e2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    const-string v7, "Attempting to create output directory %s."

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_a1

    goto :goto_e2

    :cond_a1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "Couldn\'t create directory %s."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b5
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    const-string v7, "Creating output file %s."

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_d7

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_d7
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, v5}, Lcom/sigmob/a/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_e2
    :goto_e2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    :cond_e7
    invoke-virtual {p0}, Lcom/sigmob/a/a/b;->close()V

    if-eqz v4, :cond_ef

    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_ef
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method
