.class Lcom/ss/android/socialbase/downloader/impls/d$1;
.super Ljava/lang/Object;
.source "DefaultDownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/impls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/impls/d;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/d;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/d$1;->a:Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 50
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/d$1$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/impls/d$1$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/d$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 64
    :cond_11
    return-void
.end method
