.class public Lcom/ss/android/downloadlib/a/b/c;
.super Ljava/lang/Object;
.source "ModelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a/b/c$a;,
        Lcom/ss/android/downloadlib/a/b/c$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/a/a/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/a/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/a/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/downloadad/a/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/a/b/c$1;)V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/b/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/a/b/c;
    .registers 1

    .prologue
    .line 38
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c$b;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a/b/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/a/b/c;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/ss/android/a/a/b/c;
    .registers 6

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/c;

    return-object v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/downloadad/a/b/a;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 127
    if-nez p1, :cond_5

    move-object v0, v1

    .line 141
    :cond_4
    :goto_4
    return-object v0

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadad/a/b/a;

    .line 131
    if-eqz v0, :cond_f

    .line 134
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->k()I

    move-result v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 137
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_4

    :cond_36
    move-object v0, v1

    .line 141
    goto :goto_4
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/b/a;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 123
    :goto_8
    return-object v0

    .line 118
    :cond_9
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadad/a/b/a;

    .line 119
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_8

    :cond_2c
    move-object v0, v1

    .line 123
    goto :goto_8
.end method

.method public a(JLcom/ss/android/a/a/b/a;)V
    .registers 7

    .prologue
    .line 81
    if-eqz p3, :cond_b

    .line 82
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_b
    return-void
.end method

.method public a(JLcom/ss/android/a/a/b/b;)V
    .registers 7

    .prologue
    .line 75
    if-eqz p3, :cond_b

    .line 76
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_b
    return-void
.end method

.method public a(Lcom/ss/android/a/a/b/c;)V
    .registers 6

    .prologue
    .line 65
    if-eqz p1, :cond_2b

    .line 66
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->u()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 68
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->u()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/a/a/c/b;->a(J)V

    .line 69
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->u()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/b;->d(Ljava/lang/String;)V

    .line 72
    :cond_2b
    return-void
.end method

.method public declared-synchronized a(Lcom/ss/android/downloadad/a/b/a;)V
    .registers 6

    .prologue
    .line 87
    monitor-enter p0

    if-nez p1, :cond_5

    .line 92
    :goto_3
    monitor-exit p0

    return-void

    .line 90
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/e;->a()Lcom/ss/android/downloadlib/a/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/a/b/e;->a(Lcom/ss/android/downloadad/a/b/a;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    goto :goto_3

    .line 87
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/ss/android/downloadad/a/b/a;Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 170
    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    .line 191
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 173
    :cond_7
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_66

    .line 175
    :try_start_c
    const-string v0, "download_url"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v0, "app_name"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v0, "cur_bytes"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 178
    const-string v0, "total_bytes"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 179
    const-string v0, "chunk_count"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    const-string v0, "network_quality"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->ad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v0, "download_time"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->aw()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4b} :catch_69
    .catchall {:try_start_c .. :try_end_4b} :catchall_66

    .line 185
    :goto_4b
    :try_start_4b
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/a;->h()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/e/g;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 186
    invoke-virtual {p1, v1}, Lcom/ss/android/downloadad/a/b/a;->a(Lorg/json/JSONObject;)V

    .line 187
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 188
    invoke-virtual {p1, p3}, Lcom/ss/android/downloadad/a/b/a;->a(Ljava/lang/String;)V

    .line 190
    :cond_5e
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/e;->a()Lcom/ss/android/downloadlib/a/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/a/b/e;->a(Lcom/ss/android/downloadad/a/b/a;)V
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_66

    goto :goto_5

    .line 170
    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0

    .line 182
    :catch_69
    move-exception v0

    .line 183
    :try_start_6a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_66

    goto :goto_4b
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 206
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_a

    .line 204
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 209
    :cond_2e
    :try_start_2e
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/e;->a()Lcom/ss/android/downloadlib/a/b/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/b/e;->b(Ljava/util/List;)V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_2b

    .line 210
    monitor-exit p0

    return-void
.end method

.method public b(J)Lcom/ss/android/a/a/b/b;
    .registers 6

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/b;

    return-object v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 54
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/a/b/c$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/a/b/c$1;-><init>(Lcom/ss/android/downloadlib/a/b/c;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->b(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public c(J)Lcom/ss/android/a/a/b/a;
    .registers 6

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/a;

    return-object v0
.end method

.method public c()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/downloadad/a/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public d(J)Lcom/ss/android/downloadad/a/b/a;
    .registers 6

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadad/a/b/a;

    return-object v0
.end method

.method public e(J)Lcom/ss/android/downloadlib/a/b/c$a;
    .registers 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/ss/android/downloadlib/a/b/c$a;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/b/c$a;-><init>()V

    .line 147
    iput-wide p1, v0, Lcom/ss/android/downloadlib/a/b/c$a;->a:J

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/a/b/c;->a(J)Lcom/ss/android/a/a/b/c;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/a/b/c;->b(J)Lcom/ss/android/a/a/b/b;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/a/b/c;->c(J)Lcom/ss/android/a/a/b/a;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    .line 151
    iget-object v1, v0, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    if-nez v1, :cond_24

    .line 152
    new-instance v1, Lcom/ss/android/downloadad/a/a/a;

    invoke-direct {v1}, Lcom/ss/android/downloadad/a/a/a;-><init>()V

    iput-object v1, v0, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    .line 154
    :cond_24
    return-object v0
.end method

.method public f(J)V
    .registers 6

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method
