.class public Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;
.super Landroid/app/Service;
.source "SqlDownloadCacheService.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 5

    .prologue
    .line 19
    if-eqz p0, :cond_12

    .line 20
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    if-eqz p1, :cond_f

    .line 22
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 24
    :cond_f
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_13

    .line 29
    :cond_12
    :goto_12
    return-void

    .line 26
    :catch_13
    move-exception v0

    .line 27
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;->a:Ljava/lang/String;

    const-string v2, "startServiceAndBind fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    .prologue
    .line 39
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    instance-of v2, v0, Lcom/ss/android/socialbase/downloader/impls/d;

    if-eqz v2, :cond_16

    .line 42
    check-cast v0, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/d;->e()Lcom/ss/android/socialbase/downloader/downloader/s;

    move-result-object v0

    .line 46
    :goto_f
    instance-of v1, v0, Landroid/os/IBinder;

    if-eqz v1, :cond_1d

    .line 47
    check-cast v0, Landroid/os/IBinder;

    .line 49
    :goto_15
    return-object v0

    .line 43
    :cond_16
    instance-of v2, v0, Lcom/ss/android/socialbase/downloader/downloader/s;

    if-eqz v2, :cond_23

    .line 44
    check-cast v0, Lcom/ss/android/socialbase/downloader/downloader/s;

    goto :goto_f

    .line 49
    :cond_1d
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    goto :goto_15

    :cond_23
    move-object v0, v1

    goto :goto_f
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method
