.class public Lcom/ss/android/socialbase/appdownloader/h;
.super Ljava/lang/Object;
.source "InstallQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/appdownloader/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:J

.field private d:J

.field private e:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Ljava/util/Queue;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Z

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->f:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/h$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/appdownloader/h$1;-><init>(Lcom/ss/android/socialbase/appdownloader/h;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->g:Ljava/lang/Runnable;

    .line 57
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/appdownloader/h$2;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/appdownloader/h$2;-><init>(Lcom/ss/android/socialbase/appdownloader/h;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/appdownloader/h$1;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/h;Landroid/content/Context;IZ)I
    .registers 4

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/h;->b(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/h;J)J
    .registers 3

    .line 24
    iput-wide p1, p0, Lcom/ss/android/socialbase/appdownloader/h;->d:J

    return-wide p1
.end method

.method public static a()Lcom/ss/android/socialbase/appdownloader/h;
    .registers 1

    .line 126
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/h$a;->a()Lcom/ss/android/socialbase/appdownloader/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/h;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/h;->c()V

    return-void
.end method

.method private b(Landroid/content/Context;IZ)I
    .registers 4

    .line 192
    invoke-static {p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;IZ)I

    move-result p1

    .line 193
    const/4 p2, 0x1

    if-ne p1, p2, :cond_9

    .line 194
    iput-boolean p2, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Z

    .line 196
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/appdownloader/h;->c:J

    .line 197
    return p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/appdownloader/h;)Ljava/util/Queue;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic c(Lcom/ss/android/socialbase/appdownloader/h;)J
    .registers 3

    .line 24
    iget-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->d:J

    return-wide v0
.end method

.method private c()V
    .registers 6

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_11

    .line 85
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_11

    .line 87
    return-void

    .line 91
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Ljava/util/Queue;

    monitor-enter v0

    .line 92
    :try_start_14
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 93
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_54

    .line 95
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    const/4 v0, 0x0

    if-eqz v1, :cond_51

    .line 97
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v2

    .line 98
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_40

    .line 99
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->f:Landroid/os/Handler;

    new-instance v3, Lcom/ss/android/socialbase/appdownloader/h$3;

    invoke-direct {v3, p0, v2, v1}, Lcom/ss/android/socialbase/appdownloader/h$3;-><init>(Lcom/ss/android/socialbase/appdownloader/h;Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_47

    .line 106
    :cond_40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Lcom/ss/android/socialbase/appdownloader/h;->b(Landroid/content/Context;IZ)I

    .line 108
    :goto_47
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/h;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    goto :goto_53

    .line 110
    :cond_51
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Z

    .line 112
    :goto_53
    return-void

    .line 93
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v1
.end method

.method static synthetic d(Lcom/ss/android/socialbase/appdownloader/h;)Ljava/lang/Runnable;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/h;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method private d()Z
    .registers 5

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/appdownloader/h;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method static synthetic e(Lcom/ss/android/socialbase/appdownloader/h;)Landroid/os/Handler;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/h;->f:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;IZ)I
    .registers 8

    .line 131
    if-eqz p3, :cond_7

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/h;->b(Landroid/content/Context;IZ)I

    move-result p1

    return p1

    .line 135
    :cond_7
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/h;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    .line 137
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->f:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/h$4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/h$4;-><init>(Lcom/ss/android/socialbase/appdownloader/h;Landroid/content/Context;IZ)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    return v1

    .line 146
    :cond_1b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 147
    const-string v0, "leaves"

    const-string v1, "on Foreground"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/h;->b(Landroid/content/Context;IZ)I

    move-result p1

    return p1

    .line 152
    :cond_31
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/b;->a()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 153
    return v1

    .line 156
    :cond_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_40

    move v0, v1

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    .line 158
    :goto_41
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Z

    if-nez v2, :cond_54

    if-eqz v0, :cond_54

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/h;->b(Landroid/content/Context;IZ)I

    move-result p1

    return p1

    .line 163
    :cond_54
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string p3, "install_queue_size"

    const/4 v2, 0x3

    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    .line 164
    iget-object p3, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Ljava/util/Queue;

    monitor-enter p3

    .line 165
    :goto_62
    :try_start_62
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-le v2, p1, :cond_70

    .line 166
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_62

    .line 168
    :cond_70
    monitor-exit p3
    :try_end_71
    .catchall {:try_start_62 .. :try_end_71} :catchall_aa

    .line 170
    if-eqz v0, :cond_8d

    .line 171
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h;->f:Landroid/os/Handler;

    iget-object p3, p0, Lcom/ss/android/socialbase/appdownloader/h;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string p3, "install_queue_timeout"

    const-wide/16 v2, 0x4e20

    invoke-virtual {p1, p3, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 173
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h;->f:Landroid/os/Handler;

    iget-object p3, p0, Lcom/ss/android/socialbase/appdownloader/h;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, p3, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    :cond_8d
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Ljava/util/Queue;

    monitor-enter p1

    .line 177
    :try_start_90
    iget-object p3, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Ljava/util/Queue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a5

    .line 178
    iget-object p3, p0, Lcom/ss/android/socialbase/appdownloader/h;->a:Ljava/util/Queue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 180
    :cond_a5
    monitor-exit p1

    .line 182
    return v1

    .line 180
    :catchall_a7
    move-exception p2

    monitor-exit p1
    :try_end_a9
    .catchall {:try_start_90 .. :try_end_a9} :catchall_a7

    throw p2

    .line 168
    :catchall_aa
    move-exception p1

    :try_start_ab
    monitor-exit p3
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)V
    .registers 3

    .line 201
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->e:Ljava/lang/ref/SoftReference;

    .line 202
    return-void
.end method

.method a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .registers 3

    .line 115
    if-eqz p1, :cond_b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 116
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/h;->c()V

    .line 118
    :cond_b
    return-void
.end method

.method public b()Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->e:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_d

    :cond_7
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    .line 206
    :goto_d
    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/h;->e:Ljava/lang/ref/SoftReference;

    .line 207
    return-object v0
.end method
