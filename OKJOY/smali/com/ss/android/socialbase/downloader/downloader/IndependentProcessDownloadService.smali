.class public Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;
.super Lcom/ss/android/socialbase/downloader/downloader/DownloadService;
.source "IndependentProcessDownloadService.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Z

.field private static d:I

.field private static e:J


# instance fields
.field private f:Landroid/os/Handler;

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->b:Ljava/lang/String;

    .line 28
    sput-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->c:Z

    .line 29
    sput v1, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->d:I

    .line 30
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->e:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->f:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2;-><init>(Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->g:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;)V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->c()V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 22
    sput-boolean p0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->c:Z

    return p0
.end method

.method private b()V
    .registers 7

    .prologue
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_7

    .line 76
    :cond_6
    :goto_6
    return-void

    .line 51
    :cond_7
    const/16 v0, 0x200

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->c:Z

    if-nez v0, :cond_6

    .line 58
    sget v0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->d:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_20

    .line 59
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->b:Ljava/lang/String;

    const-string v1, "bindMainProcess: bind too many times!!! "

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 62
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    sget-wide v2, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->e:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gez v2, :cond_36

    .line 65
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->b:Ljava/lang/String;

    const-string v1, "bindMainProcess: time too short since last bind!!! "

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 68
    :cond_36
    sget v2, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->d:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->d:I

    .line 69
    sput-wide v0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->e:J

    .line 70
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->f:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;)V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->b()V

    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 79
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->b:Ljava/lang/String;

    const-string v1, "bindMainProcess: "

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    :try_start_e
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->g:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_17} :catch_18

    .line 88
    :goto_17
    return-void

    .line 85
    :catch_18
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 35
    invoke-super {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->onCreate()V

    .line 36
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->r()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 38
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Ljava/lang/ref/WeakReference;)V

    .line 39
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->b()V

    .line 40
    return-void
.end method
