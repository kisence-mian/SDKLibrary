.class public abstract Lcom/ss/android/socialbase/downloader/downloader/a;
.super Ljava/lang/Object;
.source "AbsDownloadServiceHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/p;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field protected final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/d;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile b:Z

.field protected volatile c:Z

.field protected volatile d:Z

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    .line 32
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    .line 35
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->g:Landroid/os/Handler;

    .line 167
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/a$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/a$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 63
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    const-string v1, "onBind Abs"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 211
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/f/a;->a(I)V

    .line 212
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .registers 6

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 70
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startForeground  id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  isServiceAlive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :try_start_40
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4e} :catch_4f

    .line 81
    :goto_4e
    return-void

    .line 75
    :catch_4f
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e

    .line 79
    :cond_54
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    const-string v1, "startForeground: downloadService is null, do nothing!"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e
.end method

.method protected a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 3

    .prologue
    .line 40
    return-void
.end method

.method public a(Landroid/content/Intent;II)V
    .registers 4

    .prologue
    .line 104
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/o;)V
    .registers 2

    .prologue
    .line 207
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 5

    .prologue
    .line 113
    if-nez p1, :cond_3

    .line 123
    :goto_2
    return-void

    .line 115
    :cond_3
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pendDownloadTask pendingTasks.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " downloadTask.getDownloadId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_54

    .line 117
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 118
    :try_start_3e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_53

    .line 119
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    :cond_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_3e .. :try_end_54} :catchall_73

    .line 122
    :cond_54
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after pendDownloadTask pendingTasks.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 120
    :catchall_73
    move-exception v0

    :try_start_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v0
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    .line 48
    return-void
.end method

.method public a(Z)V
    .registers 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 86
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopForeground  service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  isServiceAlive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    :try_start_37
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    .line 90
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_44} :catch_45

    .line 95
    :cond_44
    :goto_44
    return-void

    .line 91
    :catch_45
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    return v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 127
    if-nez p1, :cond_4

    .line 162
    :goto_3
    return-void

    .line 129
    :cond_4
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    if-nez v0, :cond_60

    .line 130
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 131
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    const-string v1, "tryDownload but service is not alive"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_15
    const/high16 v0, 0x40000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 133
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 134
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/a;->a(Lcom/ss/android/socialbase/downloader/g/d;)V

    .line 135
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Z

    if-nez v0, :cond_44

    .line 136
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 137
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    const-string v2, "tryDownload: 1"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_34
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Z

    .line 145
    :goto_3f
    monitor-exit v1

    goto :goto_3

    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_41

    throw v0

    .line 142
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->h:Ljava/lang/Runnable;

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_41

    goto :goto_3f

    .line 147
    :cond_55
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/a;->a(Lcom/ss/android/socialbase/downloader/g/d;)V

    .line 148
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto :goto_3

    .line 151
    :cond_60
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 152
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 153
    :try_start_6f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 154
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 155
    :cond_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_6f .. :try_end_85} :catchall_93

    .line 157
    :cond_85
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_8e

    .line 159
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;)V

    .line 160
    :cond_8e
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/a;->e()V

    goto/16 :goto_3

    .line 155
    :catchall_93
    move-exception v0

    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v0
.end method

.method public b()Z
    .registers 4

    .prologue
    .line 57
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceForeground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    return v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 100
    return-void
.end method

.method public c(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 2

    .prologue
    .line 183
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    .line 109
    return-void
.end method

.method protected e()V
    .registers 5

    .prologue
    .line 186
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumePendingTask pendingTasks.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 189
    :try_start_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 190
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 191
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_4e

    .line 192
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v3

    .line 193
    if-eqz v3, :cond_51

    .line 194
    const/4 v0, 0x0

    move v1, v0

    :goto_35
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_51

    .line 195
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 196
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 197
    if-eqz v0, :cond_4a

    .line 198
    invoke-virtual {v3, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;)V

    .line 194
    :cond_4a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_35

    .line 191
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0

    .line 202
    :cond_51
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    if-nez v0, :cond_19

    .line 217
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 218
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    const-string v1, "startService"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_11
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 221
    :cond_19
    return-void
.end method
