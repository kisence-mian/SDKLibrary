.class public Lcom/ss/android/socialbase/downloader/impls/h;
.super Lcom/ss/android/socialbase/downloader/downloader/a;
.source "DefaultDownloadServiceHandler.java"


# static fields
.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/h;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 5

    .prologue
    .line 24
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 28
    :goto_a
    return-void

    .line 25
    :catch_b
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a
.end method

.method public a(Landroid/content/Intent;II)V
    .registers 6

    .prologue
    .line 48
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 49
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/h;->e:Ljava/lang/String;

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_d
    const/high16 v0, 0x40000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/h;->b:Z

    .line 53
    :cond_18
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/h;->e()V

    .line 54
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 38
    const/high16 v0, 0x40000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/h;->b:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/h;->d:Z

    .line 41
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 42
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/h;->e:Ljava/lang/String;

    const-string v1, "onStartCommandOnMainThread"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1b
    return-void
.end method
