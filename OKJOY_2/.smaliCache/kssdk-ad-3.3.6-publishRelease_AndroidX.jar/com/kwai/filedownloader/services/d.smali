.class public Lcom/kwai/filedownloader/services/d;
.super Lcom/kwai/filedownloader/c/b$a;

# interfaces
.implements Lcom/kwai/filedownloader/message/e$b;
.implements Lcom/kwai/filedownloader/services/i;


# instance fields
.field private final a:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/kwai/filedownloader/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/kwai/filedownloader/services/g;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;",
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
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;",
            ">;",
            "Lcom/kwai/filedownloader/services/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/kwai/filedownloader/c/b$a;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/kwai/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-static {}, Lcom/kwai/filedownloader/message/e;->a()Lcom/kwai/filedownloader/message/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/kwai/filedownloader/message/e;->a(Lcom/kwai/filedownloader/message/e$b;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/kwai/filedownloader/message/MessageSnapshot;)I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_34

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_2f

    :try_start_b
    iget-object v3, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/kwai/filedownloader/c/a;

    invoke-interface {v3, p1}, Lcom/kwai/filedownloader/c/a;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_1b
    .catchall {:try_start_b .. :try_end_16} :catchall_19

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catchall_19
    move-exception p1

    goto :goto_29

    :catch_1b
    move-exception p1

    :try_start_1c
    const-string v2, "callback error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v2, v1}, Lcom/kwai/filedownloader/f/d;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    :try_start_23
    iget-object p1, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    :goto_25
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_32

    :goto_29
    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :cond_2f
    iget-object p1, p0, Lcom/kwai/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_34

    goto :goto_25

    :goto_32
    monitor-exit p0

    return v0

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
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

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;

    iget-object v0, v0, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;->context:Landroid/app/Service;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_17
    return-void
.end method

.method public a(Landroid/content/Intent;II)V
    .registers 4

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/c/a;)V
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

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/d/b;Z)V
    .registers 21

    move-object v0, p0

    iget-object v1, v0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/kwai/filedownloader/services/g;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/d/b;Z)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;

    iget-object v0, v0, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;->context:Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_17
    return-void
.end method

.method public a(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->b(I)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/services/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/kwai/filedownloader/c/a;)V
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

.method public b(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->f(I)Z

    move-result p1

    return p1
.end method

.method public c(I)J
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/g;->c()V

    return-void
.end method

.method public d(I)J
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .registers 3

    invoke-static {}, Lcom/kwai/filedownloader/message/e;->a()Lcom/kwai/filedownloader/message/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/message/e;->a(Lcom/kwai/filedownloader/message/e$b;)V

    return-void
.end method

.method public e(I)B
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->e(I)B

    move-result p1

    return p1
.end method

.method public f(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/d;->b:Lcom/kwai/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/g;->g(I)Z

    move-result p1

    return p1
.end method
