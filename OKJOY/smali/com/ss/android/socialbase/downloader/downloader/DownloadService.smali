.class public Lcom/ss/android/socialbase/downloader/downloader/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/ss/android/socialbase/downloader/downloader/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    .prologue
    .line 32
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind downloadServiceHandler != null:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_2a

    .line 34
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 36
    :goto_27
    return-object v0

    .line 32
    :cond_28
    const/4 v0, 0x0

    goto :goto_12

    .line 36
    :cond_2a
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 25
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->q()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Ljava/lang/ref/WeakReference;)V

    .line 28
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 63
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 64
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->b:Ljava/lang/String;

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_19

    .line 67
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/p;->d()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 70
    :cond_19
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 71
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    .prologue
    .line 42
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->b:Ljava/lang/String;

    const-string v1, "DownloadService onStartCommand"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/p;->c()V

    .line 47
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_20

    .line 49
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/DownloadService;Landroid/content/Intent;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 58
    :cond_20
    const/4 v0, 0x3

    return v0
.end method
