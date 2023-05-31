.class public Lcom/ss/android/socialbase/downloader/i/a/a;
.super Ljava/lang/Object;
.source "DownloadConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/i/a/a$a;
    }
.end annotation


# instance fields
.field protected a:I

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ss/android/socialbase/downloader/i/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ss/android/socialbase/downloader/i/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/a;->b:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/a;->c:Ljava/util/Map;

    .line 28
    iput v1, p0, Lcom/ss/android/socialbase/downloader/i/a/a;->a:I

    .line 206
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/i/a/a$1;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/i/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/i/a/a;
    .registers 1

    .prologue
    .line 201
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/a/a$a;->a()Lcom/ss/android/socialbase/downloader/i/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/a/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/i/a/c;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/i/a/a;->b:Ljava/util/Map;

    monitor-enter v1

    .line 98
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/i/a/c;

    .line 99
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_28

    .line 100
    if-eqz v0, :cond_33

    .line 101
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a/c;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 103
    :try_start_18
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a/c;->a()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_2b

    .line 107
    :goto_1b
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a/c;->e()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a/c;->d()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 122
    :goto_27
    return-object v0

    .line 99
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    .line 104
    :catch_2b
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1b

    .line 112
    :cond_30
    :try_start_30
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a/c;->c()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_35

    .line 122
    :cond_33
    :goto_33
    const/4 v0, 0x0

    goto :goto_27

    .line 113
    :catch_35
    move-exception v0

    goto :goto_33
.end method

.method a(I)V
    .registers 2

    .prologue
    .line 37
    iput p1, p0, Lcom/ss/android/socialbase/downloader/i/a/a;->a:I

    .line 38
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/a/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/i/a/d;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/i/a/a;->c:Ljava/util/Map;

    monitor-enter v1

    .line 163
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/i/a/d;

    .line 164
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_28

    .line 165
    if-eqz v0, :cond_33

    .line 166
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a/d;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 168
    :try_start_18
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a/d;->e()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_2b

    .line 172
    :goto_1b
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a/d;->h()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a/d;->g()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 182
    :goto_27
    return-object v0

    .line 164
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    .line 169
    :catch_2b
    move-exception v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1b

    .line 177
    :cond_30
    :try_start_30
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a/d;->d()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_35

    .line 182
    :cond_33
    :goto_33
    const/4 v0, 0x0

    goto :goto_27

    .line 178
    :catch_35
    move-exception v0

    goto :goto_33
.end method
