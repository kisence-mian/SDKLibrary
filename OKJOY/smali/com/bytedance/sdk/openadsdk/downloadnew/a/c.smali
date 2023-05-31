.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;
.super Ljava/lang/Object;
.source "DMLibWebManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lcom/ss/android/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->a:Ljava/lang/ref/WeakReference;

    .line 33
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->b:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->c:Ljava/lang/String;

    .line 36
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/a/a/b/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/a/a/b/f$a;->a()Lcom/ss/android/a/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->e:Lcom/ss/android/a/a/b/c;

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->a()V

    .line 39
    return-void
.end method

.method private l()Landroid/content/Context;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_10
.end method

.method private declared-synchronized m()V
    .registers 4

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/h;->a(Ljava/lang/String;I)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 55
    :cond_1c
    monitor-exit p0

    return-void

    .line 51
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n()V
    .registers 6

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 62
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->e:Lcom/ss/android/a/a/b/c;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/h;->a(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 64
    monitor-exit p0

    return-void

    .line 58
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->n()V

    .line 48
    return-void
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V
    .registers 3

    .prologue
    .line 203
    return-void
.end method

.method public a(J)V
    .registers 6

    .prologue
    .line 147
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/h;->a(Ljava/lang/String;Z)V

    .line 148
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 95
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 100
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 2

    .prologue
    .line 188
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Z)V
    .registers 3

    .prologue
    .line 193
    return-void
.end method

.method public a(Z)Z
    .registers 3

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->n()V

    .line 75
    return-void
.end method

.method public b(Z)Z
    .registers 3

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->m()V

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->a:Ljava/lang/ref/WeakReference;

    .line 90
    :cond_f
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .registers 6

    .prologue
    .line 125
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v0

    if-nez v0, :cond_24

    .line 128
    :try_start_10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    .line 129
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 130
    if-eqz v0, :cond_24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1f} :catch_23

    move-result v0

    if-nez v0, :cond_24

    .line 138
    :goto_22
    return-void

    .line 134
    :catch_23
    move-exception v0

    .line 137
    :cond_24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->e:Lcom/ss/android/a/a/b/c;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/h;->a(Ljava/lang/String;JI)V

    goto :goto_22
.end method

.method public g()V
    .registers 3

    .prologue
    .line 142
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->a(J)V

    .line 143
    return-void
.end method

.method public h()V
    .registers 1

    .prologue
    .line 153
    return-void
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method
