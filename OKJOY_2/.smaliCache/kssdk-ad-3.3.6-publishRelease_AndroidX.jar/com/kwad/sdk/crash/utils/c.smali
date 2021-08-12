.class public Lcom/kwad/sdk/crash/utils/c;
.super Ljava/lang/Object;


# direct methods
.method private static a([Ljava/lang/String;)Ljava/lang/Process;
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :try_start_8
    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/c;->a([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_c} :catch_c8
    .catchall {:try_start_8 .. :try_end_c} :catchall_c2

    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_10} :catch_bb
    .catchall {:try_start_c .. :try_end_10} :catchall_b8

    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_14} :catch_b5
    .catchall {:try_start_10 .. :try_end_14} :catchall_b0

    :try_start_14
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_18} :catch_ad
    .catchall {:try_start_14 .. :try_end_18} :catchall_aa

    :try_start_18
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_22} :catch_a7
    .catchall {:try_start_18 .. :try_end_22} :catchall_a3

    :goto_22
    :try_start_22
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, p1, :cond_32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_32
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v1

    if-nez v1, :cond_73

    if-lez p1, :cond_61

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_61

    :cond_44
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command line did not return any info for command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_61} :catch_a1
    .catchall {:try_start_22 .. :try_end_61} :catchall_9e

    :cond_61
    :goto_61
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/InputStream;)V

    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/OutputStream;)V

    invoke-static {v5}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/InputStream;)V

    invoke-static {v6}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V

    if-eqz v2, :cond_72

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_72
    return-object v0

    :cond_73
    :try_start_73
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command line returned OS error code \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' for command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9e
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_9e} :catch_a1
    .catchall {:try_start_73 .. :try_end_9e} :catchall_9e

    :catchall_9e
    move-exception p0

    goto/16 :goto_ec

    :catch_a1
    move-exception p1

    goto :goto_c0

    :catchall_a3
    move-exception p0

    move-object v6, v1

    goto/16 :goto_ec

    :catch_a7
    move-exception p1

    move-object v6, v1

    goto :goto_c0

    :catchall_aa
    move-exception p0

    move-object v5, v1

    goto :goto_b3

    :catch_ad
    move-exception p1

    move-object v5, v1

    goto :goto_bf

    :catchall_b0
    move-exception p0

    move-object v4, v1

    move-object v5, v4

    :goto_b3
    move-object v6, v5

    goto :goto_ec

    :catch_b5
    move-exception p1

    move-object v4, v1

    goto :goto_be

    :catchall_b8
    move-exception p0

    move-object v4, v1

    goto :goto_c5

    :catch_bb
    move-exception p1

    move-object v3, v1

    move-object v4, v3

    :goto_be
    move-object v5, v4

    :goto_bf
    move-object v6, v5

    :goto_c0
    move-object v1, v2

    goto :goto_cd

    :catchall_c2
    move-exception p0

    move-object v2, v1

    move-object v4, v2

    :goto_c5
    move-object v5, v4

    move-object v6, v5

    goto :goto_ed

    :catch_c8
    move-exception p1

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_cd
    :try_start_cd
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Command line threw an InterruptedException for command "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_ea
    .catchall {:try_start_cd .. :try_end_ea} :catchall_ea

    :catchall_ea
    move-exception p0

    move-object v2, v1

    :goto_ec
    move-object v1, v3

    :goto_ed
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/InputStream;)V

    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/OutputStream;)V

    invoke-static {v5}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/InputStream;)V

    invoke-static {v6}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V

    if-eqz v2, :cond_fe

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_fe
    throw p0
.end method
