.class public Lcom/kwai/filedownloader/services/d;
.super Lcom/kwai/filedownloader/e0/b$a;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/message/e$b;
.implements Lcom/kwai/filedownloader/services/i;


# instance fields
.field private final a:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kwai/filedownloader/e0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/kwai/filedownloader/services/g;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kwai/filedownloader/services/FileDownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/kwai/filedownloader/services/g;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kwai/filedownloader/services/FileDownloadService;",
            ">;",
            "Lcom/kwai/filedownloader/services/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/kwai/filedownloader/e0/b$a;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/kwai/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-static {}, Lcom/kwai/filedownloader/message/e;->a()Lcom/kwai/filedownloader/message/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kwai/filedownloader/message/e;->a(Lcom/kwai/filedownloader/message/e$b;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/kwai/filedownloader/message/MessageSnapshot;)I
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_31

    move-result v2

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_34

    :try_start_b
    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/e0/a;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/e0/a;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_1a
    .catchall {:try_start_b .. :try_end_16} :catchall_2a

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :catch_1a
    move-exception v0

    :try_start_1b
    const-string v1, "callback error"
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_31

    const/4 v3, 0x0

    :try_start_1e
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v3}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_2a

    :try_start_23
    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_31

    :goto_28
    monitor-exit p0

    return v2

    :catchall_2a
    move-exception v0

    :try_start_2b
    iget-object v1, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_31

    goto :goto_28
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    return-object p0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/g;->a()V

    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_15
    return-void
.end method

.method public a(Landroid/content/Intent;II)V
    .registers 4

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/e0/a;)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/services/d;->b(Lcom/kwai/filedownloader/message/MessageSnapshot;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/f0/b;Z)V
    .registers 20

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/kwai/filedownloader/services/g;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/f0/b;Z)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_15
    return-void
.end method

.method public a(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->a(I)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/services/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(I)B
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->c(I)B

    move-result v0

    return v0
.end method

.method public b(Lcom/kwai/filedownloader/e0/a;)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/g;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 3

    invoke-static {}, Lcom/kwai/filedownloader/message/e;->a()Lcom/kwai/filedownloader/message/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/message/e;->a(Lcom/kwai/filedownloader/message/e$b;)V

    return-void
.end method

.method public c(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->f(I)Z

    move-result v0

    return v0
.end method

.method public d(I)J
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/g;->c()V

    return-void
.end method

.method public e(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->g(I)Z

    move-result v0

    return v0
.end method

.method public f(I)J
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->b(I)J

    move-result-wide v0

    return-wide v0
.end method
