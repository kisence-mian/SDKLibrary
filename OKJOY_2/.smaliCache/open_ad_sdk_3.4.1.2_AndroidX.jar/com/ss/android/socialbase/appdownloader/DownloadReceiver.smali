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

    .line 37
    const-class v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->b:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;)Landroid/os/Handler;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 134
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->F()Z

    move-result v0

    if-nez v0, :cond_7

    .line 135
    return-void

    .line 138
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    .line 143
    goto :goto_19

    .line 141
    :catchall_15
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    :goto_19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 47
    if-eqz p1, :cond_6f

    if-nez p2, :cond_5

    goto :goto_6f

    .line 49
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 51
    return-void

    .line 54
    :cond_10
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->a()Lcom/ss/android/socialbase/appdownloader/c/c;

    move-result-object v1

    .line 55
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    if-eqz v1, :cond_28

    invoke-interface {v1}, Lcom/ss/android/socialbase/appdownloader/c/c;->a()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 56
    :cond_28
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 57
    sget-object p2, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a:Ljava/lang/String;

    const-string v1, "Received broadcast intent for android.intent.action.BOOT_COMPLETED"

    invoke-static {p2, v1}, Lcom/ss/android/socialbase/downloader/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_35
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6e

    .line 61
    :cond_39
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 62
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 63
    sget-object p2, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a:Ljava/lang/String;

    const-string v1, "Received broadcast intent for android.intent.action.MEDIA_MOUNTED"

    invoke-static {p2, v1}, Lcom/ss/android/socialbase/downloader/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_4e
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6e

    .line 67
    :cond_52
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 68
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 70
    :cond_62
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;-><init>(Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    :cond_6e
    :goto_6e
    return-void

    .line 48
    :cond_6f
    :goto_6f
    return-void
.end method
