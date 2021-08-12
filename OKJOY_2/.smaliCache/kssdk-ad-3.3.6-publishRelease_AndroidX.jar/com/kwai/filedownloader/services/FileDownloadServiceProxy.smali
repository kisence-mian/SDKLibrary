.class public Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;
.super Lcom/kwad/sdk/b/b;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicImpl;
    value = Lcom/kwad/sdk/api/proxy/app/FileDownloadService;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/services/FileDownloadServiceProxy$SeparateProcessServiceProxy;,
        Lcom/kwai/filedownloader/services/FileDownloadServiceProxy$SharedMainProcessServiceProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "filedownloader"


# instance fields
.field public context:Landroid/app/Service;

.field private handler:Lcom/kwai/filedownloader/services/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/app/Service;Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object p1, p0, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;->handler:Lcom/kwai/filedownloader/services/i;

    invoke-interface {p1, p2}, Lcom/kwai/filedownloader/services/i;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/app/Service;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;->context:Landroid/app/Service;

    invoke-static {p1}, Lcom/kwai/filedownloader/f/c;->a(Landroid/content/Context;)V

    :try_start_8
    invoke-static {}, Lcom/kwai/filedownloader/f/e;->a()Lcom/kwai/filedownloader/f/e;

    move-result-object p1

    iget p1, p1, Lcom/kwai/filedownloader/f/e;->a:I

    invoke-static {p1}, Lcom/kwai/filedownloader/f/f;->a(I)V

    invoke-static {}, Lcom/kwai/filedownloader/f/e;->a()Lcom/kwai/filedownloader/f/e;

    move-result-object p1

    iget-wide v0, p1, Lcom/kwai/filedownloader/f/e;->b:J

    invoke-static {v0, v1}, Lcom/kwai/filedownloader/f/f;->a(J)V
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1f
    new-instance p1, Lcom/kwai/filedownloader/services/g;

    invoke-direct {p1}, Lcom/kwai/filedownloader/services/g;-><init>()V

    invoke-static {}, Lcom/kwai/filedownloader/f/e;->a()Lcom/kwai/filedownloader/f/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kwai/filedownloader/f/e;->d:Z

    if-eqz v0, :cond_37

    new-instance v0, Lcom/kwai/filedownloader/services/e;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lcom/kwai/filedownloader/services/e;-><init>(Ljava/lang/ref/WeakReference;Lcom/kwai/filedownloader/services/g;)V

    goto :goto_41

    :cond_37
    new-instance v0, Lcom/kwai/filedownloader/services/d;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lcom/kwai/filedownloader/services/d;-><init>(Ljava/lang/ref/WeakReference;Lcom/kwai/filedownloader/services/g;)V

    :goto_41
    iput-object v0, p0, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;->handler:Lcom/kwai/filedownloader/services/i;

    return-void
.end method

.method public onDestroy(Landroid/app/Service;)V
    .registers 2

    iget-object p1, p0, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;->handler:Lcom/kwai/filedownloader/services/i;

    invoke-interface {p1}, Lcom/kwai/filedownloader/services/i;->d()V

    return-void
.end method

.method public onStartCommand(Landroid/app/Service;Landroid/content/Intent;II)I
    .registers 5

    iget-object p1, p0, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;->handler:Lcom/kwai/filedownloader/services/i;

    invoke-interface {p1, p2, p3, p4}, Lcom/kwai/filedownloader/services/i;->a(Landroid/content/Intent;II)V

    const/4 p1, 0x1

    return p1
.end method
