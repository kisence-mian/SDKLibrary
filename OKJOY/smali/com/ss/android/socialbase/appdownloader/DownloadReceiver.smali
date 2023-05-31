.class public Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->b:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 131
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 138
    :goto_d
    return-void

    .line 134
    :catch_e
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 46
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 126
    :cond_4
    :goto_4
    return-void

    .line 48
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 53
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->a()Lcom/ss/android/socialbase/appdownloader/c/c;

    move-result-object v1

    .line 54
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    if-eqz v1, :cond_27

    invoke-interface {v1}, Lcom/ss/android/socialbase/appdownloader/c/c;->a()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 55
    :cond_27
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 56
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a:Ljava/lang/String;

    const-string v2, "Received broadcast intent for android.intent.action.BOOT_COMPLETED"

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_34
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 60
    :cond_38
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 61
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 62
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a:Ljava/lang/String;

    const-string v2, "Received broadcast intent for android.intent.action.MEDIA_MOUNTED"

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_4d
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 66
    :cond_51
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    :cond_61
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;-><init>(Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4
.end method
