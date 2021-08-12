.class public Lcom/ss/android/socialbase/downloader/downloader/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/ss/android/socialbase/downloader/downloader/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    .line 32
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind downloadServiceHandler != null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v0, :cond_28

    .line 34
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 36
    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 25
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 27
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/lang/ref/WeakReference;)V

    .line 28
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 68
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 69
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->b:Ljava/lang/String;

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v0, :cond_17

    .line 72
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->d()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 75
    :cond_17
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 76
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    .line 42
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->b:Ljava/lang/String;

    const-string v1, "DownloadService onStartCommand"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->c()V

    .line 47
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_20

    .line 49
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/DownloadService;Landroid/content/Intent;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 58
    :cond_20
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->j()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 60
    const/4 p1, 0x2

    return p1

    .line 62
    :cond_28
    const/4 p1, 0x3

    return p1
.end method
