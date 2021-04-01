.class public Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;
.super Landroid/app/Service;
.source "DownloadHandleService.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 37
    if-nez p1, :cond_3

    .line 64
    :cond_2
    :goto_2
    return-void

    .line 39
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 44
    const-string v1, "extra_download_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 47
    const-string v2, "com.ss.android.downloader.action.DOWNLOAD_WAKEUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 48
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 49
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService$1;

    invoke-direct {v2, p0, v1}, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 59
    :cond_2b
    const-string v2, "com.ss.android.downloader.action.PROCESS_NOTIFY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 60
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/c;->n(I)V

    goto :goto_2

    .line 61
    :cond_3b
    const-string v1, "com.ss.android.downloader.action.MULTI_PROCESS_NOTIFY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->a()V

    goto :goto_2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 32
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;->a(Landroid/content/Intent;)V

    .line 33
    const/4 v0, 0x2

    return v0
.end method
