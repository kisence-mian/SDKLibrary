.class public Lcom/ss/android/downloadlib/g;
.super Ljava/lang/Object;
.source "DownloadDispatcherImpl.java"

# interfaces
.implements Lcom/ss/android/downloadlib/f;


# static fields
.field private static volatile a:Lcom/ss/android/downloadlib/g;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/downloadlib/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ss/android/downloadlib/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/ss/android/a/a/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/downloadlib/g;->a:Lcom/ss/android/downloadlib/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/g;->c:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/g;->d:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/g;->b:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/g;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcom/ss/android/downloadlib/g;->a:Lcom/ss/android/downloadlib/g;

    if-nez v0, :cond_13

    .line 48
    const-class v1, Lcom/ss/android/downloadlib/g;

    monitor-enter v1

    .line 49
    :try_start_7
    sget-object v0, Lcom/ss/android/downloadlib/g;->a:Lcom/ss/android/downloadlib/g;

    if-nez v0, :cond_12

    .line 50
    new-instance v0, Lcom/ss/android/downloadlib/g;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/g;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/g;->a:Lcom/ss/android/downloadlib/g;

    .line 52
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 54
    :cond_13
    sget-object v0, Lcom/ss/android/downloadlib/g;->a:Lcom/ss/android/downloadlib/g;

    return-object v0

    .line 52
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/g;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private b()V
    .registers 7

    .prologue
    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 224
    iget-wide v2, p0, Lcom/ss/android/downloadlib/g;->f:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    .line 232
    :cond_f
    :goto_f
    return-void

    .line 227
    :cond_10
    iput-wide v0, p0, Lcom/ss/android/downloadlib/g;->f:J

    .line 229
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 230
    invoke-direct {p0}, Lcom/ss/android/downloadlib/g;->c()V

    goto :goto_f
.end method

.method private declared-synchronized b(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V
    .registers 8

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_e

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/g;->c(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_30

    .line 119
    :goto_c
    monitor-exit p0

    return-void

    .line 112
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/g;

    .line 113
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/a/g;->b(Landroid/content/Context;)Lcom/ss/android/downloadlib/a/g;

    move-result-object v1

    .line 114
    invoke-interface {v1, p2, p3}, Lcom/ss/android/downloadlib/a/g;->b(ILcom/ss/android/a/a/b/d;)Lcom/ss/android/downloadlib/a/g;

    move-result-object v1

    .line 115
    invoke-interface {v1, p4}, Lcom/ss/android/downloadlib/a/g;->b(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/downloadlib/a/g;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Lcom/ss/android/downloadlib/a/g;->a()V

    .line 117
    iget-object v1, p0, Lcom/ss/android/downloadlib/g;->d:Ljava/util/Map;

    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_30

    goto :goto_c

    .line 109
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .registers 11

    .prologue
    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/g;

    .line 238
    invoke-interface {v0}, Lcom/ss/android/downloadlib/a/g;->b()Z

    move-result v5

    if-nez v5, :cond_f

    .line 241
    invoke-interface {v0}, Lcom/ss/android/downloadlib/a/g;->d()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0x1d4c0

    cmp-long v5, v6, v8

    if-lez v5, :cond_f

    .line 242
    invoke-interface {v0}, Lcom/ss/android/downloadlib/a/g;->g()V

    .line 243
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 246
    :cond_35
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 247
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 249
    :cond_40
    return-void
.end method

.method private c(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V
    .registers 8

    .prologue
    .line 125
    if-nez p4, :cond_3

    .line 136
    :goto_2
    return-void

    .line 130
    :cond_3
    new-instance v0, Lcom/ss/android/downloadlib/a/f;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/f;-><init>()V

    .line 131
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/a/g;->b(Landroid/content/Context;)Lcom/ss/android/downloadlib/a/g;

    move-result-object v1

    .line 132
    invoke-interface {v1, p2, p3}, Lcom/ss/android/downloadlib/a/g;->b(ILcom/ss/android/a/a/b/d;)Lcom/ss/android/downloadlib/a/g;

    move-result-object v1

    .line 133
    invoke-interface {v1, p4}, Lcom/ss/android/downloadlib/a/g;->b(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/downloadlib/a/g;

    move-result-object v1

    .line 134
    invoke-interface {v1}, Lcom/ss/android/downloadlib/a/g;->a()V

    .line 135
    iget-object v1, p0, Lcom/ss/android/downloadlib/g;->d:Ljava/util/Map;

    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ss/android/downloadlib/a/f;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->d:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    move-object v0, v1

    .line 102
    :goto_14
    return-object v0

    .line 97
    :cond_15
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/g;

    .line 98
    instance-of v2, v0, Lcom/ss/android/downloadlib/a/f;

    if-eqz v2, :cond_24

    .line 99
    check-cast v0, Lcom/ss/android/downloadlib/a/f;

    goto :goto_14

    :cond_24
    move-object v0, v1

    .line 102
    goto :goto_14
.end method

.method public a(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V
    .registers 7

    .prologue
    .line 69
    if-eqz p4, :cond_c

    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 85
    :cond_c
    :goto_c
    return-void

    .line 72
    :cond_d
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->d:Ljava/util/Map;

    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/g;

    .line 74
    if-eqz v0, :cond_2b

    .line 75
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/a/g;->b(Landroid/content/Context;)Lcom/ss/android/downloadlib/a/g;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/ss/android/downloadlib/a/g;->b(ILcom/ss/android/a/a/b/d;)Lcom/ss/android/downloadlib/a/g;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/ss/android/downloadlib/a/g;->b(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/downloadlib/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/downloadlib/a/g;->a()V

    goto :goto_c

    .line 78
    :cond_2b
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/g;->b(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V

    goto :goto_c

    .line 83
    :cond_37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/g;->c(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V

    goto :goto_c
.end method

.method public a(Lcom/ss/android/a/a/b/a/a;)V
    .registers 3

    .prologue
    .line 203
    if-eqz p1, :cond_7

    .line 204
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_7
    return-void
.end method

.method public a(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;)V
    .registers 6
    .param p2    # Lcom/ss/android/a/a/b/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/ss/android/a/a/b/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/g$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/downloadlib/g$1;-><init>(Lcom/ss/android/downloadlib/g;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4

    .prologue
    .line 298
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/g$5;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/g$5;-><init>(Lcom/ss/android/downloadlib/g;Lcom/ss/android/socialbase/downloader/g/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 265
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/g$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/downloadlib/g$2;-><init>(Lcom/ss/android/downloadlib/g;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 276
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/g$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/g$3;-><init>(Lcom/ss/android/downloadlib/g;Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 155
    :cond_6
    :goto_6
    return-void

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/g;

    .line 145
    if-eqz v0, :cond_6

    .line 146
    invoke-interface {v0, p2}, Lcom/ss/android/downloadlib/a/g;->a(I)Z

    move-result v1

    .line 150
    if-eqz v1, :cond_21

    .line 151
    iget-object v1, p0, Lcom/ss/android/downloadlib/g;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_21
    invoke-direct {p0}, Lcom/ss/android/downloadlib/g;->b()V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;JI)V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 175
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 176
    return-void
.end method

.method public a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V
    .registers 9

    .prologue
    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    :cond_6
    :goto_6
    return-void

    .line 183
    :cond_7
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/g;

    .line 184
    if-eqz v0, :cond_6

    .line 185
    invoke-interface {v0, p5}, Lcom/ss/android/downloadlib/a/g;->b(Lcom/ss/android/a/a/b/b;)Lcom/ss/android/downloadlib/a/g;

    move-result-object v0

    invoke-interface {v0, p6}, Lcom/ss/android/downloadlib/a/g;->b(Lcom/ss/android/a/a/b/a;)Lcom/ss/android/downloadlib/a/g;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/ss/android/downloadlib/a/g;->a(JI)V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 171
    :cond_6
    :goto_6
    return-void

    .line 167
    :cond_7
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/g;

    .line 168
    if-eqz v0, :cond_6

    .line 169
    invoke-interface {v0, p2}, Lcom/ss/android/downloadlib/a/g;->a(Z)V

    goto :goto_6
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 287
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/g$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/g$4;-><init>(Lcom/ss/android/downloadlib/g;Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method
