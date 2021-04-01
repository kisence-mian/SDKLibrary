.class public Lcom/ss/android/socialbase/appdownloader/i;
.super Ljava/lang/Object;
.source "InstallQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/appdownloader/i$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:J

.field private d:J

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/i;->a:Ljava/util/Queue;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/i;->b:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/i;->e:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/i$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/appdownloader/i$1;-><init>(Lcom/ss/android/socialbase/appdownloader/i;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/i;->f:Ljava/lang/Runnable;

    .line 52
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/appdownloader/i$2;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/appdownloader/i$2;-><init>(Lcom/ss/android/socialbase/appdownloader/i;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/appdownloader/i$1;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/i;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/i;Landroid/content/Context;IZ)I
    .registers 5

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/i;->b(Landroid/content/Context;IZ)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/i;J)J
    .registers 4

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/ss/android/socialbase/appdownloader/i;->d:J

    return-wide p1
.end method

.method public static a()Lcom/ss/android/socialbase/appdownloader/i;
    .registers 1

    .prologue
    .line 103
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/i$a;->a()Lcom/ss/android/socialbase/appdownloader/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/i;)V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/i;->b()V

    return-void
.end method

.method private b(Landroid/content/Context;IZ)I
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 157
    invoke-static {p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;IZ)I

    move-result v0

    .line 158
    if-ne v0, v1, :cond_9

    .line 159
    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/i;->b:Z

    .line 161
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/socialbase/appdownloader/i;->c:J

    .line 162
    return v0
.end method

.method static synthetic b(Lcom/ss/android/socialbase/appdownloader/i;)J
    .registers 3

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/i;->d:J

    return-wide v0
.end method

.method private b()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 71
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/i;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 72
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/i;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/i;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    if-eqz v0, :cond_3c

    .line 74
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v1

    .line 75
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_34

    .line 76
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/i;->e:Landroid/os/Handler;

    new-instance v3, Lcom/ss/android/socialbase/appdownloader/i$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/ss/android/socialbase/appdownloader/i$3;-><init>(Lcom/ss/android/socialbase/appdownloader/i;Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    :goto_2a
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/i;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/i;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    :goto_33
    return-void

    .line 83
    :cond_34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0, v4}, Lcom/ss/android/socialbase/appdownloader/i;->b(Landroid/content/Context;IZ)I

    goto :goto_2a

    .line 87
    :cond_3c
    iput-boolean v4, p0, Lcom/ss/android/socialbase/appdownloader/i;->b:Z

    goto :goto_33
.end method

.method private c()Z
    .registers 5

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/appdownloader/i;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public a(Landroid/content/Context;IZ)I
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 108
    if-eqz p3, :cond_8

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/i;->b(Landroid/content/Context;IZ)I

    move-result v0

    .line 147
    :cond_7
    :goto_7
    return v0

    .line 112
    :cond_8
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/i;->c()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 114
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/i;->e:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/i$4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/i$4;-><init>(Lcom/ss/android/socialbase/appdownloader/i;Landroid/content/Context;IZ)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 123
    :cond_1b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/i;->b(Landroid/content/Context;IZ)I

    move-result v0

    goto :goto_7

    .line 129
    :cond_2a
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/i;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/i;->b:Z

    if-nez v1, :cond_3b

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/i;->b(Landroid/content/Context;IZ)I

    move-result v0

    goto :goto_7

    .line 135
    :cond_3b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v1

    const-string v2, "install_queue_size"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v1

    .line 136
    :goto_46
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/i;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-le v2, v1, :cond_54

    .line 137
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/i;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_46

    .line 139
    :cond_54
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/i;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/i;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v1

    const-string v2, "install_queue_timeout"

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 141
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/i;->e:Landroid/os/Handler;

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/i;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/i;->a:Ljava/util/Queue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 143
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/i;->a:Ljava/util/Queue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method a(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 92
    if-eqz p1, :cond_b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 93
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/i;->b()V

    .line 95
    :cond_b
    return-void
.end method
