.class Lcom/ss/android/socialbase/downloader/impls/n$2;
.super Ljava/lang/Object;
.source "IndependentDownloadServiceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/n;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/impls/n;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/n;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n$2;->a:Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 198
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/n$2$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/impls/n$2$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/n$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method
