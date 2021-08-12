.class Lcom/ss/android/socialbase/downloader/b/f$4;
.super Ljava/lang/Object;
.source "SqlDownloadCacheAidlWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/b/f;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseArray;

.field final synthetic b:Landroid/util/SparseArray;

.field final synthetic c:Lcom/ss/android/socialbase/downloader/b/d;

.field final synthetic d:Lcom/ss/android/socialbase/downloader/b/f;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/b/f;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V
    .registers 5

    .line 155
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f$4;->d:Lcom/ss/android/socialbase/downloader/b/f;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/b/f$4;->a:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/b/f$4;->b:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/b/f$4;->c:Lcom/ss/android/socialbase/downloader/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 159
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f$4;->d:Lcom/ss/android/socialbase/downloader/b/f;

    new-instance v1, Lcom/ss/android/socialbase/downloader/b/f$4$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/b/f$4$1;-><init>(Lcom/ss/android/socialbase/downloader/b/f$4;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/b/f;->a(Lcom/ss/android/socialbase/downloader/b/b;)V

    .line 168
    nop

    .line 170
    const/4 v0, 0x1

    :try_start_c
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/f$4;->d:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/b/f;->d(Lcom/ss/android/socialbase/downloader/b/f;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1c

    .line 173
    xor-int/2addr v1, v0

    goto :goto_21

    .line 171
    :catchall_1c
    move-exception v1

    .line 172
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    .line 174
    :goto_21
    if-eqz v1, :cond_2e

    .line 176
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/f$4;->d:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/b/f;->h(Lcom/ss/android/socialbase/downloader/b/f;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_2e

    .line 178
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 183
    :cond_2e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f$4;->d:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/f;->a()V

    .line 185
    if-eqz v1, :cond_3c

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f$4;->c:Lcom/ss/android/socialbase/downloader/b/d;

    if-eqz v0, :cond_3c

    .line 186
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/d;->a()V

    .line 188
    :cond_3c
    return-void
.end method
