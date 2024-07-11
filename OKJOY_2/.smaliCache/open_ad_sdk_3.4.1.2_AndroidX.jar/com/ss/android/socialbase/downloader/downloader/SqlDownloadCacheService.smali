.class public Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;
.super Landroid/app/Service;
.source "SqlDownloadCacheService.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 4

    .line 19
    if-eqz p0, :cond_1c

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
    .catchall {:try_start_2 .. :try_end_12} :catchall_13

    goto :goto_1c

    .line 26
    :catchall_13
    move-exception p0

    .line 27
    sget-object p1, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;->a:Ljava/lang/String;

    const-string v0, "startServiceAndBind fail"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 28
    :cond_1c
    :goto_1c
    nop

    .line 29
    :goto_1d
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 39
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object p1

    .line 40
    nop

    .line 41
    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/impls/d;

    if-eqz v0, :cond_10

    .line 42
    check-cast p1, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/impls/d;->e()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object p1

    goto :goto_18

    .line 43
    :cond_10
    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/downloader/r;

    if-eqz v0, :cond_17

    .line 44
    check-cast p1, Lcom/ss/android/socialbase/downloader/downloader/r;

    goto :goto_18

    .line 43
    :cond_17
    const/4 p1, 0x0

    .line 46
    :goto_18
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_1f

    .line 47
    check-cast p1, Landroid/os/IBinder;

    return-object p1

    .line 49
    :cond_1f
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    return-object p1
.end method

.method public onCreate()V
    .registers 2

    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    .line 55
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->j()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 56
    const/4 p1, 0x2

    return p1

    .line 58
    :cond_c
    return p1
.end method
