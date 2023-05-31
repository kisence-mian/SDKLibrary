.class public Lcom/kwai/filedownloader/services/FileDownloadService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/services/FileDownloadService$SeparateProcessService;,
        Lcom/kwai/filedownloader/services/FileDownloadService$SharedMainProcessService;
    }
.end annotation


# instance fields
.field private a:Lcom/kwai/filedownloader/services/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/FileDownloadService;->a:Lcom/kwai/filedownloader/services/i;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/services/i;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/kwai/filedownloader/h0/c;->a(Landroid/content/Context;)V

    :try_start_6
    invoke-static {}, Lcom/kwai/filedownloader/h0/e;->a()Lcom/kwai/filedownloader/h0/e;

    move-result-object v0

    iget v0, v0, Lcom/kwai/filedownloader/h0/e;->a:I

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/f;->a(I)V

    invoke-static {}, Lcom/kwai/filedownloader/h0/e;->a()Lcom/kwai/filedownloader/h0/e;

    move-result-object v0

    iget-wide v0, v0, Lcom/kwai/filedownloader/h0/e;->b:J

    invoke-static {v0, v1}, Lcom/kwai/filedownloader/h0/f;->a(J)V
    :try_end_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_18} :catch_32

    :goto_18
    new-instance v0, Lcom/kwai/filedownloader/services/g;

    invoke-direct {v0}, Lcom/kwai/filedownloader/services/g;-><init>()V

    invoke-static {}, Lcom/kwai/filedownloader/h0/e;->a()Lcom/kwai/filedownloader/h0/e;

    move-result-object v1

    iget-boolean v1, v1, Lcom/kwai/filedownloader/h0/e;->d:Z

    if-eqz v1, :cond_37

    new-instance v1, Lcom/kwai/filedownloader/services/e;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/kwai/filedownloader/services/e;-><init>(Ljava/lang/ref/WeakReference;Lcom/kwai/filedownloader/services/g;)V

    iput-object v1, p0, Lcom/kwai/filedownloader/services/FileDownloadService;->a:Lcom/kwai/filedownloader/services/i;

    :goto_31
    return-void

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_18

    :cond_37
    new-instance v1, Lcom/kwai/filedownloader/services/d;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/kwai/filedownloader/services/d;-><init>(Ljava/lang/ref/WeakReference;Lcom/kwai/filedownloader/services/g;)V

    iput-object v1, p0, Lcom/kwai/filedownloader/services/FileDownloadService;->a:Lcom/kwai/filedownloader/services/i;

    goto :goto_31
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/services/FileDownloadService;->a:Lcom/kwai/filedownloader/services/i;

    invoke-interface {v0}, Lcom/kwai/filedownloader/services/i;->c()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/services/FileDownloadService;->a:Lcom/kwai/filedownloader/services/i;

    invoke-interface {v0, p1, p2, p3}, Lcom/kwai/filedownloader/services/i;->a(Landroid/content/Intent;II)V

    const/4 v0, 0x1

    return v0
.end method
