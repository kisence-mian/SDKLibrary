.class public Lcom/ss/android/downloadlib/f;
.super Ljava/lang/Object;
.source "DownloadDispatcher.java"


# static fields
.field private static volatile b:Lcom/ss/android/downloadlib/f;


# instance fields
.field public final a:Landroid/os/Handler;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/downloadlib/addownload/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/downloadlib/addownload/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/downloadlib/f;->b:Lcom/ss/android/downloadlib/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/f;->a:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/f;
    .registers 2

    .line 50
    sget-object v0, Lcom/ss/android/downloadlib/f;->b:Lcom/ss/android/downloadlib/f;

    if-nez v0, :cond_17

    .line 51
    const-class v0, Lcom/ss/android/downloadlib/f;

    monitor-enter v0

    .line 52
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/f;->b:Lcom/ss/android/downloadlib/f;

    if-nez v1, :cond_12

    .line 53
    new-instance v1, Lcom/ss/android/downloadlib/f;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/f;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/f;->b:Lcom/ss/android/downloadlib/f;

    .line 55
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 57
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/downloadlib/f;->b:Lcom/ss/android/downloadlib/f;

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/f;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/ss/android/downloadlib/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private declared-synchronized b(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V
    .registers 7

    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_d

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/f;->c(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V

    goto :goto_2e

    .line 114
    :cond_d
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/addownload/g;

    .line 115
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/addownload/g;->b(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    .line 116
    invoke-interface {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/g;->b(ILcom/ss/android/a/a/b/d;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    .line 117
    invoke-interface {p1, p4}, Lcom/ss/android/downloadlib/addownload/g;->b(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    .line 118
    invoke-interface {p1}, Lcom/ss/android/downloadlib/addownload/g;->a()V

    .line 119
    iget-object p1, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 121
    :goto_2e
    monitor-exit p0

    return-void

    .line 110
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c()V
    .registers 7

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 243
    iget-wide v2, p0, Lcom/ss/android/downloadlib/f;->f:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    .line 244
    return-void

    .line 246
    :cond_10
    iput-wide v0, p0, Lcom/ss/android/downloadlib/f;->f:J

    .line 248
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 249
    invoke-direct {p0}, Lcom/ss/android/downloadlib/f;->d()V

    .line 251
    :cond_1d
    return-void
.end method

.method private c(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V
    .registers 6

    .line 127
    if-nez p4, :cond_3

    .line 128
    return-void

    .line 132
    :cond_3
    new-instance v0, Lcom/ss/android/downloadlib/addownload/f;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/f;-><init>()V

    .line 133
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/addownload/g;->b(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    .line 134
    invoke-interface {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/g;->b(ILcom/ss/android/a/a/b/d;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    .line 135
    invoke-interface {p1, p4}, Lcom/ss/android/downloadlib/addownload/g;->b(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    .line 136
    invoke-interface {p1}, Lcom/ss/android/downloadlib/addownload/g;->a()V

    .line 137
    iget-object p1, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method private d()V
    .registers 10

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    iget-object v3, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/downloadlib/addownload/g;

    .line 257
    invoke-interface {v4}, Lcom/ss/android/downloadlib/addownload/g;->b()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 258
    goto :goto_f

    .line 260
    :cond_22
    invoke-interface {v4}, Lcom/ss/android/downloadlib/addownload/g;->d()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/32 v7, 0x493e0

    cmp-long v5, v5, v7

    if-lez v5, :cond_35

    .line 261
    invoke-interface {v4}, Lcom/ss/android/downloadlib/addownload/g;->g()V

    .line 262
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_35
    goto :goto_f

    .line 265
    :cond_36
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 266
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 268
    :cond_41
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/f;
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_22

    .line 99
    :cond_12
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/g;

    .line 100
    instance-of v0, p1, Lcom/ss/android/downloadlib/addownload/f;

    if-eqz v0, :cond_21

    .line 101
    check-cast p1, Lcom/ss/android/downloadlib/addownload/f;

    return-object p1

    .line 104
    :cond_21
    return-object v1

    .line 97
    :cond_22
    :goto_22
    return-object v1
.end method

.method public a(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V
    .registers 7

    .line 71
    if-eqz p4, :cond_3b

    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3b

    .line 74
    :cond_d
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/addownload/g;

    .line 76
    if-eqz v0, :cond_2b

    .line 77
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/addownload/g;->b(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/g;->b(ILcom/ss/android/a/a/b/d;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/ss/android/downloadlib/addownload/g;->b(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/downloadlib/addownload/g;->a()V

    .line 78
    return-void

    .line 80
    :cond_2b
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/f;->b(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V

    goto :goto_3a

    .line 85
    :cond_37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/f;->c(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V

    .line 87
    :goto_3a
    return-void

    .line 72
    :cond_3b
    :goto_3b
    return-void
.end method

.method public a(Lcom/ss/android/a/a/b/a/a;)V
    .registers 5

    .line 211
    if-eqz p1, :cond_1f

    .line 212
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "fix_listener_oom"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 213
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 215
    :cond_1a
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_1f
    :goto_1f
    return-void
.end method

.method public a(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;)V
    .registers 6

    .line 273
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/f$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/downloadlib/f$1;-><init>(Lcom/ss/android/downloadlib/f;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/f$5;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/f$5;-><init>(Lcom/ss/android/downloadlib/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Ljava/lang/String;)V
    .registers 6

    .line 288
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/f$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/downloadlib/f$2;-><init>(Lcom/ss/android/downloadlib/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .registers 5

    .line 303
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/f$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/f$3;-><init>(Lcom/ss/android/downloadlib/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 142
    return-void

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/addownload/g;

    .line 146
    if-eqz v0, :cond_25

    .line 147
    invoke-interface {v0, p2}, Lcom/ss/android/downloadlib/addownload/g;->a(I)Z

    move-result p2

    .line 151
    if-eqz p2, :cond_21

    .line 152
    iget-object p2, p0, Lcom/ss/android/downloadlib/f;->c:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object p2, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_21
    invoke-direct {p0}, Lcom/ss/android/downloadlib/f;->c()V

    .line 156
    return-void

    .line 149
    :cond_25
    return-void
.end method

.method public a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V
    .registers 17

    .line 178
    const/4 v0, 0x0

    move-object v8, v0

    check-cast v8, Lcom/ss/android/a/a/a/s;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v9}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/a/s;Lcom/ss/android/a/a/a/n;)V

    .line 179
    return-void
.end method

.method public a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/a/s;Lcom/ss/android/a/a/a/n;)V
    .registers 10

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    return-void

    .line 187
    :cond_7
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/g;

    .line 188
    if-eqz p1, :cond_28

    .line 190
    invoke-interface {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/g;->a(J)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    .line 191
    invoke-interface {p1, p5}, Lcom/ss/android/downloadlib/addownload/g;->b(Lcom/ss/android/a/a/b/b;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    .line 192
    invoke-interface {p1, p6}, Lcom/ss/android/downloadlib/addownload/g;->b(Lcom/ss/android/a/a/b/a;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    .line 193
    invoke-interface {p1, p7}, Lcom/ss/android/downloadlib/addownload/g;->a(Lcom/ss/android/a/a/a/s;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    .line 194
    invoke-interface {p1, p8}, Lcom/ss/android/downloadlib/addownload/g;->a(Lcom/ss/android/a/a/a/n;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    .line 195
    invoke-interface {p1, p4}, Lcom/ss/android/downloadlib/addownload/g;->b(I)V

    .line 197
    :cond_28
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 4

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    return-void

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/g;

    .line 167
    if-eqz p1, :cond_14

    .line 168
    invoke-interface {p1, p2}, Lcom/ss/android/downloadlib/addownload/g;->a(Z)V

    .line 170
    :cond_14
    return-void
.end method

.method public b()Landroid/os/Handler;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .registers 5

    .line 318
    iget-object v0, p0, Lcom/ss/android/downloadlib/f;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/f$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/f$4;-><init>(Lcom/ss/android/downloadlib/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method
