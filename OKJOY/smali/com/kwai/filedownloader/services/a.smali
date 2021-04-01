.class public abstract Lcom/kwai/filedownloader/services/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/u;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CA",
        "LLBACK:Landroid/os/Binder;",
        "INTERFACE::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/kwai/filedownloader/u;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Binder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCA",
            "LLBACK;"
        }
    .end annotation
.end field

.field private volatile b:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TINTERFACE;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/services/a;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/services/a;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/kwai/filedownloader/services/a;->c:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/kwai/filedownloader/services/a;->b()Landroid/os/Binder;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/services/a;->a:Landroid/os/Binder;

    return-void
.end method

.method private a(Z)V
    .registers 6

    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/kwai/filedownloader/services/a;->b:Landroid/os/IInterface;

    if-eqz v0, :cond_d

    :try_start_6
    iget-object v0, p0, Lcom/kwai/filedownloader/services/a;->b:Landroid/os/IInterface;

    iget-object v1, p0, Lcom/kwai/filedownloader/services/a;->a:Landroid/os/Binder;

    invoke-virtual {p0, v0, v1}, Lcom/kwai/filedownloader/services/a;->b(Landroid/os/IInterface;Landroid/os/Binder;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_34

    :cond_d
    :goto_d
    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/services/a;->b:Landroid/os/IInterface;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "release connect resources %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwai/filedownloader/services/a;->b:Landroid/os/IInterface;

    invoke-static {}, Lcom/kwai/filedownloader/f;->a()Lcom/kwai/filedownloader/f;

    move-result-object v1

    new-instance v2, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;

    if-eqz p1, :cond_39

    sget-object v0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->lost:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    :goto_2b
    iget-object v3, p0, Lcom/kwai/filedownloader/services/a;->c:Ljava/lang/Class;

    invoke-direct {v2, v0, v3}, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;-><init>(Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/event/a;->a(Lcom/kwai/filedownloader/event/b;)V

    return-void

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d

    :cond_39
    sget-object v0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->disconnected:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    goto :goto_2b
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TINTERFACE;"
        }
    .end annotation
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kwai/filedownloader/services/a;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 7

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/kwai/filedownloader/h0/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_47

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_1d

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "bindStartByContext %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kwai/filedownloader/services/a;->c:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_33

    iget-object v1, p0, Lcom/kwai/filedownloader/services/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/kwai/filedownloader/services/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    iget-object v1, p0, Lcom/kwai/filedownloader/services/a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/kwai/filedownloader/services/a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_40
    invoke-virtual {p1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fatal-Exception: You can\'t bind the FileDownloadService in :filedownloader process.\n It\'s the invalid operation and is likely to cause unexpected problems.\n Maybe you want to use non-separate process mode for FileDownloader, More detail about non-separate mode, please move to wiki manually: https://github.com/lingochamp/FileDownloader/wiki/filedownloader.properties"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract a(Landroid/os/IInterface;Landroid/os/Binder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TINTERFACE;TCA",
            "LLBACK;",
            ")V"
        }
    .end annotation
.end method

.method public a()Z
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/services/a;->c()Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected abstract b()Landroid/os/Binder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCA",
            "LLBACK;"
        }
    .end annotation
.end method

.method protected abstract b(Landroid/os/IInterface;Landroid/os/Binder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TINTERFACE;TCA",
            "LLBACK;",
            ")V"
        }
    .end annotation
.end method

.method protected c()Landroid/os/IInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TINTERFACE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwai/filedownloader/services/a;->b:Landroid/os/IInterface;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    invoke-virtual {p0, p2}, Lcom/kwai/filedownloader/services/a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/services/a;->b:Landroid/os/IInterface;

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/kwai/filedownloader/services/a;->b:Landroid/os/IInterface;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "onServiceConnected %s %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/kwai/filedownloader/services/a;->b:Landroid/os/IInterface;

    iget-object v1, p0, Lcom/kwai/filedownloader/services/a;->a:Landroid/os/Binder;

    invoke-virtual {p0, v0, v1}, Lcom/kwai/filedownloader/services/a;->a(Landroid/os/IInterface;Landroid/os/Binder;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_42

    :goto_21
    iget-object v0, p0, Lcom/kwai/filedownloader/services/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/kwai/filedownloader/services/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_32

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_21

    :cond_47
    invoke-static {}, Lcom/kwai/filedownloader/f;->a()Lcom/kwai/filedownloader/f;

    move-result-object v0

    new-instance v1, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;

    sget-object v2, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->connected:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    iget-object v3, p0, Lcom/kwai/filedownloader/services/a;->c:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;-><init>(Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/event/a;->a(Lcom/kwai/filedownloader/event/b;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const/4 v2, 0x1

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/kwai/filedownloader/services/a;->b:Landroid/os/IInterface;

    aput-object v1, v0, v2

    const-string v1, "onServiceDisconnected %s %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, v2}, Lcom/kwai/filedownloader/services/a;->a(Z)V

    return-void
.end method
