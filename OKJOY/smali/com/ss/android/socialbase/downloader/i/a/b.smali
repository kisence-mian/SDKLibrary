.class public Lcom/ss/android/socialbase/downloader/i/a/b;
.super Ljava/lang/Object;
.source "DownloadPreconnecter.java"


# static fields
.field static a:J

.field static b:J

.field private static final c:Landroid/os/HandlerThread;

.field private static final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Downloader-preconnecter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/a/b;->c:Landroid/os/HandlerThread;

    .line 39
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a/b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/ss/android/socialbase/downloader/i/a/b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/a/b;->d:Landroid/os/Handler;

    .line 41
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/socialbase/downloader/i/a/b$1;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/i/a/b$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

.method public static a()V
    .registers 4

    .prologue
    const-wide/32 v2, 0x493e0

    .line 68
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "preconnect_connection_outdate_time"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/socialbase/downloader/i/a/b;->a:J

    .line 69
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "preconnect_head_info_outdate_time"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/socialbase/downloader/i/a/b;->b:J

    .line 70
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/a/a;->a()Lcom/ss/android/socialbase/downloader/i/a/a;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v1

    const-string v2, "preconnect_max_cache_size"

    const/4 v3, 0x3

    .line 71
    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/i/a/a;->a(I)V

    .line 72
    return-void
.end method
