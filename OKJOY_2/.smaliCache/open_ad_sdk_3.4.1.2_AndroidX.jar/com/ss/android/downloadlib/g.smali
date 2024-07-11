.class public Lcom/ss/android/downloadlib/g;
.super Ljava/lang/Object;
.source "TTDownloader.java"


# static fields
.field private static volatile a:Lcom/ss/android/downloadlib/g;


# instance fields
.field private final b:Lcom/ss/android/a/a/a;

.field private final c:Lcom/ss/android/downloadlib/f;

.field private final d:Lcom/ss/android/downloadad/a/a;

.field private e:Lcom/ss/android/downloadad/a/b;

.field private f:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lcom/ss/android/downloadlib/f;->a()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/g;->c:Lcom/ss/android/downloadlib/f;

    .line 79
    new-instance v0, Lcom/ss/android/downloadlib/e;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/e;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/g;->b:Lcom/ss/android/a/a/a;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/g;->f:J

    .line 81
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/g;->b(Landroid/content/Context;)V

    .line 83
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadlib/g;->d:Lcom/ss/android/downloadad/a/a;

    .line 84
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;
    .registers 3

    .line 67
    sget-object v0, Lcom/ss/android/downloadlib/g;->a:Lcom/ss/android/downloadlib/g;

    if-nez v0, :cond_17

    .line 68
    const-class v0, Lcom/ss/android/downloadlib/g;

    monitor-enter v0

    .line 69
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/g;->a:Lcom/ss/android/downloadlib/g;

    if-nez v1, :cond_12

    .line 70
    new-instance v1, Lcom/ss/android/downloadlib/g;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ss/android/downloadlib/g;->a:Lcom/ss/android/downloadlib/g;

    .line 72
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 74
    :cond_17
    :goto_17
    sget-object p0, Lcom/ss/android/downloadlib/g;->a:Lcom/ss/android/downloadlib/g;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .registers 9

    .line 90
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/k;->a(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    .line 92
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/f;->b()V

    .line 94
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lcom/ss/android/downloadlib/d/f;

    invoke-direct {v4}, Lcom/ss/android/downloadlib/d/f;-><init>()V

    new-instance v5, Lcom/ss/android/downloadlib/d/e;

    invoke-direct {v5, p1}, Lcom/ss/android/downloadlib/d/e;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/ss/android/downloadlib/c;

    invoke-direct {v6}, Lcom/ss/android/downloadlib/c;-><init>()V

    const-string v3, "misc_config"

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/c/c;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/appdownloader/c/h;)V

    .line 99
    new-instance v0, Lcom/ss/android/downloadlib/d/c;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/d/c;-><init>()V

    .line 100
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/c/g;)V

    .line 101
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->registerDownloadCacheSyncListener(Lcom/ss/android/socialbase/downloader/depend/k;)V

    .line 102
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p1

    new-instance v0, Lcom/ss/android/downloadlib/addownload/l;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/p;)V

    .line 103
    new-instance p1, Lcom/ss/android/downloadlib/d/d;

    invoke-direct {p1}, Lcom/ss/android/downloadlib/d/d;-><init>()V

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/d/c;)V

    .line 104
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p1

    invoke-static {}, Lcom/ss/android/downloadlib/g/c;->a()Lcom/ss/android/downloadlib/g/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/c/j;)V

    .line 106
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object p1

    new-instance v0, Lcom/ss/android/downloadlib/g$1;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/g$1;-><init>(Lcom/ss/android/downloadlib/g;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    .line 112
    return-void
.end method

.method private h()Lcom/ss/android/downloadlib/f;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->c:Lcom/ss/android/downloadlib/f;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/ss/android/a/a/a;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->b:Lcom/ss/android/a/a/a;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 4

    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 442
    const/4 p1, 0x0

    return-object p1

    .line 444
    :cond_8
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V
    .registers 6

    .line 205
    invoke-direct {p0}, Lcom/ss/android/downloadlib/g;->h()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/f;->a(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V

    .line 206
    return-void
.end method

.method public a(Lcom/ss/android/a/a/b/a/a;)V
    .registers 3

    .line 336
    invoke-direct {p0}, Lcom/ss/android/downloadlib/g;->h()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/f;->a(Lcom/ss/android/a/a/b/a/a;)V

    .line 337
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    .line 295
    invoke-direct {p0}, Lcom/ss/android/downloadlib/g;->h()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;I)V

    .line 296
    return-void
.end method

.method public a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V
    .registers 14

    .line 251
    invoke-direct {p0}, Lcom/ss/android/downloadlib/g;->h()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 252
    return-void
.end method

.method public a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/a/s;Lcom/ss/android/a/a/a/n;)V
    .registers 18

    .line 244
    invoke-direct {p0}, Lcom/ss/android/downloadlib/g;->h()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/a/s;Lcom/ss/android/a/a/a/n;)V

    .line 246
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 4

    .line 306
    invoke-direct {p0}, Lcom/ss/android/downloadlib/g;->h()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;Z)V

    .line 307
    return-void
.end method

.method public b()J
    .registers 3

    .line 154
    iget-wide v0, p0, Lcom/ss/android/downloadlib/g;->f:J

    return-wide v0
.end method

.method public c()V
    .registers 3

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/g;->f:J

    .line 162
    return-void
.end method

.method public d()Lcom/ss/android/downloadad/a/a;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->d:Lcom/ss/android/downloadad/a/a;

    return-object v0
.end method

.method public e()Lcom/ss/android/downloadad/a/b;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->e:Lcom/ss/android/downloadad/a/b;

    if-nez v0, :cond_a

    .line 175
    invoke-static {}, Lcom/ss/android/downloadlib/b;->a()Lcom/ss/android/downloadlib/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/g;->e:Lcom/ss/android/downloadad/a/b;

    .line 177
    :cond_a
    iget-object v0, p0, Lcom/ss/android/downloadlib/g;->e:Lcom/ss/android/downloadad/a/b;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 425
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 2

    .line 437
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/d;->e()V

    .line 438
    return-void
.end method
