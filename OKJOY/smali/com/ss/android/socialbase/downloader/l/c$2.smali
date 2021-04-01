.class Lcom/ss/android/socialbase/downloader/l/c$2;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/e/a;J)Lcom/ss/android/socialbase/downloader/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/l/c;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/l/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/l/c$2;->b:Lcom/ss/android/socialbase/downloader/l/c;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/l/c$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 1534
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/l/c$2;->b:Lcom/ss/android/socialbase/downloader/l/c;

    monitor-enter v1

    .line 1535
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1536
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c$2;->b:Lcom/ss/android/socialbase/downloader/l/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/l/c;->a(Lcom/ss/android/socialbase/downloader/l/c;)V

    .line 1537
    monitor-exit v1

    .line 1538
    return-void

    .line 1537
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method
