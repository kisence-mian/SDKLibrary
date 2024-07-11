.class public Lcom/ss/android/socialbase/downloader/impls/h;
.super Lcom/ss/android/socialbase/downloader/downloader/a;
.source "DefaultDownloadServiceHandler.java"


# static fields
.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/h;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 4

    .line 24
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 27
    goto :goto_f

    .line 25
    :catchall_b
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    :goto_f
    return-void
.end method

.method public a(Landroid/content/Intent;II)V
    .registers 4

    .line 48
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 49
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/h;->e:Ljava/lang/String;

    const-string p2, "onStartCommand"

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_d
    const/high16 p1, 0x40000

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result p1

    if-nez p1, :cond_18

    .line 51
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/impls/h;->b:Z

    .line 53
    :cond_18
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/h;->e()V

    .line 54
    return-void
.end method

.method public c()V
    .registers 3

    .line 38
    const/high16 v0, 0x40000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/h;->b:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/h;->d:Z

    .line 41
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 42
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/h;->e:Ljava/lang/String;

    const-string v1, "onStartCommandOnMainThread"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1b
    return-void
.end method
