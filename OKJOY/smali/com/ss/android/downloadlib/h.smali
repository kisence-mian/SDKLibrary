.class public Lcom/ss/android/downloadlib/h;
.super Ljava/lang/Object;
.source "TTDownloader.java"


# static fields
.field private static volatile a:Lcom/ss/android/downloadlib/h;


# instance fields
.field private b:Lcom/ss/android/a/a/a;

.field private c:Lcom/ss/android/downloadlib/f;

.field private d:Lcom/ss/android/downloadad/a/a;

.field private e:Lcom/ss/android/downloadad/a/b;

.field private f:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/ss/android/downloadlib/g;->a()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/h;->c:Lcom/ss/android/downloadlib/f;

    .line 69
    new-instance v0, Lcom/ss/android/downloadlib/e;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/e;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/h;->b:Lcom/ss/android/a/a/a;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/h;->f:J

    .line 71
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/h;->b(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ss/android/downloadlib/h;
    .registers 3

    .prologue
    .line 57
    sget-object v0, Lcom/ss/android/downloadlib/h;->a:Lcom/ss/android/downloadlib/h;

    if-nez v0, :cond_13

    .line 58
    const-class v1, Lcom/ss/android/downloadlib/h;

    monitor-enter v1

    .line 59
    :try_start_7
    sget-object v0, Lcom/ss/android/downloadlib/h;->a:Lcom/ss/android/downloadlib/h;

    if-nez v0, :cond_12

    .line 60
    new-instance v0, Lcom/ss/android/downloadlib/h;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ss/android/downloadlib/h;->a:Lcom/ss/android/downloadlib/h;

    .line 62
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 64
    :cond_13
    sget-object v0, Lcom/ss/android/downloadlib/h;->a:Lcom/ss/android/downloadlib/h;

    return-object v0

    .line 62
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 78
    invoke-static {p1}, Lcom/ss/android/downloadlib/a/j;->a(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    .line 80
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/b/c;->b()V

    .line 81
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "misc_config"

    new-instance v3, Lcom/ss/android/downloadlib/c/c;

    invoke-direct {v3}, Lcom/ss/android/downloadlib/c/c;-><init>()V

    new-instance v4, Lcom/ss/android/downloadlib/c/b;

    invoke-direct {v4, p1}, Lcom/ss/android/downloadlib/c/b;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/ss/android/downloadlib/c;

    invoke-direct {v5}, Lcom/ss/android/downloadlib/c;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/c/c;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/appdownloader/c/h;)V

    .line 87
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/c/a;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/c/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/c/g;)V

    .line 88
    return-void
.end method

.method private h()Lcom/ss/android/downloadlib/f;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->c:Lcom/ss/android/downloadlib/f;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/ss/android/a/a/a;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->b:Lcom/ss/android/a/a/a;

    return-object v0
.end method

.method public a(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V
    .registers 6

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/ss/android/downloadlib/h;->h()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/f;->a(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V

    .line 165
    return-void
.end method

.method public a(Lcom/ss/android/a/a/b/a/a;)V
    .registers 3

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/ss/android/downloadlib/h;->h()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/f;->a(Lcom/ss/android/a/a/b/a/a;)V

    .line 270
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/ss/android/downloadlib/h;->h()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;I)V

    .line 231
    return-void
.end method

.method public a(Ljava/lang/String;JI)V
    .registers 7

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/ss/android/downloadlib/h;->h()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;JI)V

    .line 198
    return-void
.end method

.method public a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V
    .registers 15

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/ss/android/downloadlib/h;->h()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 194
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/ss/android/downloadlib/h;->h()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;Z)V

    .line 241
    return-void
.end method

.method public b()J
    .registers 3

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/ss/android/downloadlib/h;->f:J

    return-wide v0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/h;->f:J

    .line 119
    return-void
.end method

.method public d()Lcom/ss/android/downloadad/a/a;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->d:Lcom/ss/android/downloadad/a/a;

    if-nez v0, :cond_a

    .line 125
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/h;->d:Lcom/ss/android/downloadad/a/a;

    .line 127
    :cond_a
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->d:Lcom/ss/android/downloadad/a/a;

    return-object v0
.end method

.method public e()Lcom/ss/android/downloadad/a/b;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->e:Lcom/ss/android/downloadad/a/b;

    if-nez v0, :cond_a

    .line 135
    invoke-static {}, Lcom/ss/android/downloadlib/b;->a()Lcom/ss/android/downloadlib/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/h;->e:Lcom/ss/android/downloadad/a/b;

    .line 137
    :cond_a
    iget-object v0, p0, Lcom/ss/android/downloadlib/h;->e:Lcom/ss/android/downloadad/a/b;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 358
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 2

    .prologue
    .line 370
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/d;->c()V

    .line 371
    return-void
.end method
