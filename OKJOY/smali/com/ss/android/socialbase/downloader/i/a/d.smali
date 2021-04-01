.class public Lcom/ss/android/socialbase/downloader/i/a/d;
.super Ljava/lang/Object;
.source "FakeDownloadHttpConnection.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/i/e;


# instance fields
.field protected final a:Ljava/lang/Object;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ss/android/socialbase/downloader/i/e;

.field private d:Z

.field private e:J

.field private f:Ljava/io/InputStream;


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    .line 86
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->f:Ljava/io/InputStream;

    .line 88
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->c:Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v0, :cond_b

    .line 101
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->c:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(I)Z
    .registers 3

    .prologue
    .line 140
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->c:Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v0, :cond_b

    .line 109
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->c:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b()I

    move-result v0

    .line 111
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->c:Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->c:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/i/e;->c()V

    .line 123
    :cond_9
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->c:Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->c:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/i/e;->d()V

    .line 96
    :cond_9
    return-void
.end method

.method public e()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_3
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->d:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->c:Lcom/ss/android/socialbase/downloader/i/e;

    if-nez v0, :cond_10

    .line 78
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 80
    :cond_10
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public g()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 128
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->c:Lcom/ss/android/socialbase/downloader/i/e;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->c:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/i/e;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/i/a/d;->a(I)Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_13

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 132
    :cond_12
    :goto_12
    return v0

    .line 129
    :catch_13
    move-exception v1

    .line 130
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method public h()Z
    .registers 5

    .prologue
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/i/a/d;->e:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/ss/android/socialbase/downloader/i/a/b;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
