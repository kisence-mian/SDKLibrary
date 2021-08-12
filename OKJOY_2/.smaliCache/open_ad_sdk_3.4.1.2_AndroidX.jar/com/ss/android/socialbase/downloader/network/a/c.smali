.class public Lcom/ss/android/socialbase/downloader/network/a/c;
.super Ljava/lang/Object;
.source "FakeDownloadHeadHttpConnection.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/g;


# static fields
.field private static final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:J

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Ljava/lang/Object;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Lcom/ss/android/socialbase/downloader/network/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/network/a/c;->e:Ljava/util/ArrayList;

    .line 32
    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v1, "Content-Range"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v1, "Accept-Ranges"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v1, "Etag"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;J)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->a:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->c:Ljava/util/List;

    .line 64
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->b:J

    .line 65
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/socialbase/downloader/network/g;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 100
    if-eqz p1, :cond_20

    if-nez p2, :cond_5

    goto :goto_20

    .line 103
    :cond_5
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    invoke-interface {p1, v1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    goto :goto_b

    .line 107
    :cond_1f
    return-void

    .line 101
    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 121
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 123
    :cond_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    if-eqz v0, :cond_14

    .line 124
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 126
    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 71
    return-void

    .line 74
    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_7
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->j:Z

    .line 75
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->c:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/g;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_49

    .line 77
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_16
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    if-eqz v2, :cond_3c

    .line 79
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    .line 80
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-direct {p0, v3, v2}, Lcom/ss/android/socialbase/downloader/network/a/c;->a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/util/Map;)V

    .line 81
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/network/g;->b()I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->g:I

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->h:J

    .line 83
    iget v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->g:I

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/network/a/c;->a(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->i:Z

    .line 85
    :cond_3c
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->j:Z

    .line 86
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 87
    monitor-exit v0

    .line 88
    nop

    .line 89
    return-void

    .line 87
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_16 .. :try_end_48} :catchall_46

    throw v1

    .line 77
    :catchall_49
    move-exception v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 78
    :try_start_4d
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    if-eqz v3, :cond_73

    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    .line 80
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-direct {p0, v4, v3}, Lcom/ss/android/socialbase/downloader/network/a/c;->a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/util/Map;)V

    .line 81
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/network/g;->b()I

    move-result v3

    iput v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->g:I

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->h:J

    .line 83
    iget v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->g:I

    invoke-virtual {p0, v3}, Lcom/ss/android/socialbase/downloader/network/a/c;->a(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->i:Z

    .line 85
    :cond_73
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->j:Z

    .line 86
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 87
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_4d .. :try_end_7b} :catchall_7c

    throw v0

    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v0
.end method

.method public a(I)Z
    .registers 3

    .line 96
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

    .line 131
    iget v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->g:I

    return v0
.end method

.method public c()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    if-eqz v0, :cond_7

    .line 138
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/g;->c()V

    .line 140
    :cond_7
    return-void
.end method

.method public d()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->j:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    if-nez v1, :cond_10

    .line 113
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 115
    :cond_10
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public e()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->i:Z

    return v0
.end method

.method public f()Z
    .registers 5

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->h:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/ss/android/socialbase/downloader/network/a/b;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public g()Z
    .registers 2

    .line 154
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->j:Z

    return v0
.end method

.method public h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    return-object v0
.end method
