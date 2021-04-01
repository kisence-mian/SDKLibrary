.class public Lcom/ss/android/socialbase/downloader/i/a/c;
.super Ljava/lang/Object;
.source "FakeDownloadHeadHttpConnection.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/i/c;


# static fields
.field private static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Ljava/lang/Object;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Lcom/ss/android/socialbase/downloader/i/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/a/c;->c:Ljava/util/ArrayList;

    .line 32
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a/c;->c:Ljava/util/ArrayList;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a/c;->c:Ljava/util/ArrayList;

    const-string v1, "Content-Range"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a/c;->c:Ljava/util/ArrayList;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a/c;->c:Ljava/util/ArrayList;

    const-string v1, "Accept-Ranges"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a/c;->c:Ljava/util/ArrayList;

    const-string v1, "Etag"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a/c;->c:Ljava/util/ArrayList;

    const-string v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->d:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 121
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    :goto_c
    return-object v0

    .line 123
    :cond_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->i:Lcom/ss/android/socialbase/downloader/i/c;

    if-eqz v0, :cond_18

    .line 124
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->i:Lcom/ss/android/socialbase/downloader/i/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/i/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 126
    :cond_18
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_3
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->h:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->d:Ljava/util/Map;

    if-nez v0, :cond_10

    .line 113
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 115
    :cond_10
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public b()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget v0, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->e:I

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->i:Lcom/ss/android/socialbase/downloader/i/c;

    if-eqz v0, :cond_9

    .line 138
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->i:Lcom/ss/android/socialbase/downloader/i/c;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/i/c;->c()V

    .line 140
    :cond_9
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->g:Z

    return v0
.end method

.method public e()Z
    .registers 5

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->f:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/ss/android/socialbase/downloader/i/a/b;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
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
    .line 158
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/c;->a:Ljava/util/List;

    return-object v0
.end method
