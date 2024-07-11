.class public Lcom/ss/android/socialbase/downloader/network/a/d;
.super Ljava/lang/Object;
.source "FakeDownloadHttpConnection.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/i;


# instance fields
.field protected final a:Ljava/lang/Object;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ss/android/socialbase/downloader/network/i;

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

    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    .line 86
    return-object v0

    .line 88
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->c:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_9

    .line 101
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/network/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 103
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)Z
    .registers 3

    .line 140
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public b()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->c:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_9

    .line 109
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->b()I

    move-result v0

    return v0

    .line 111
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->c:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_7

    .line 121
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->c()V

    .line 123
    :cond_7
    return-void
.end method

.method public d()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->c:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_7

    .line 94
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    .line 96
    :cond_7
    return-void
.end method

.method public e()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->d:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->c:Lcom/ss/android/socialbase/downloader/network/i;

    if-nez v1, :cond_10

    .line 78
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 80
    :cond_10
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public g()Z
    .registers 3

    .line 128
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->c:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/network/i;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/network/a/d;->a(I)Z

    move-result v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 129
    :catch_11
    move-exception v1

    .line 130
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    return v0
.end method

.method public h()Z
    .registers 5

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->e:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/ss/android/socialbase/downloader/network/a/b;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method
