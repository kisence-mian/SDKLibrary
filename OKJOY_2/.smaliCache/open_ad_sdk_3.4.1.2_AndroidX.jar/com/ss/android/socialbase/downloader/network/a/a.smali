.class public Lcom/ss/android/socialbase/downloader/network/a/a;
.super Ljava/lang/Object;
.source "DownloadConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/network/a/a$a;
    }
.end annotation


# instance fields
.field protected a:I

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/socialbase/downloader/network/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/socialbase/downloader/network/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/a;->b:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/a;->c:Ljava/util/Map;

    .line 28
    iput v1, p0, Lcom/ss/android/socialbase/downloader/network/a/a;->a:I

    .line 206
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/network/a/a$1;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/network/a/a;
    .registers 1

    .line 201
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/a/a$a;->a()Lcom/ss/android/socialbase/downloader/network/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/a/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/network/a/c;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/a;->b:Ljava/util/Map;

    monitor-enter v0

    .line 98
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/network/a/c;

    .line 99
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_34

    .line 100
    if-eqz p1, :cond_32

    .line 101
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/a/c;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 103
    :try_start_18
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/a/c;->d()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 106
    goto :goto_20

    .line 104
    :catch_1c
    move-exception p2

    .line 105
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 107
    :goto_20
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/a/c;->f()Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/a/c;->e()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 108
    return-object p1

    .line 112
    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/a/c;->c()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    .line 115
    goto :goto_32

    .line 113
    :catchall_31
    move-exception p1

    .line 122
    :cond_32
    :goto_32
    const/4 p1, 0x0

    return-object p1

    .line 99
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method

.method a(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/ss/android/socialbase/downloader/network/a/a;->a:I

    .line 38
    return-void
.end method

.method a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/a/c;)V
    .registers 5

    .line 31
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/a;->b:Ljava/util/Map;

    monitor-enter v0

    .line 32
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 33
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/network/a/c;

    .line 131
    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 132
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/a/c;->g()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    .line 133
    return v2

    .line 135
    :cond_13
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/a/c;->f()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/a/c;->e()Z

    move-result p1

    if-eqz p1, :cond_20

    move v0, v2

    :cond_20
    return v0

    .line 137
    :cond_21
    return v0
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/a/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/network/a/d;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/a;->c:Ljava/util/Map;

    monitor-enter v0

    .line 163
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/network/a/d;

    .line 164
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_34

    .line 165
    if-eqz p1, :cond_32

    .line 166
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/a/d;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 168
    :try_start_18
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/a/d;->e()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 171
    goto :goto_20

    .line 169
    :catch_1c
    move-exception p2

    .line 170
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 172
    :goto_20
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/a/d;->h()Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/a/d;->g()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 173
    return-object p1

    .line 177
    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/a/d;->d()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    .line 180
    goto :goto_32

    .line 178
    :catchall_31
    move-exception p1

    .line 182
    :cond_32
    :goto_32
    const/4 p1, 0x0

    return-object p1

    .line 164
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method
