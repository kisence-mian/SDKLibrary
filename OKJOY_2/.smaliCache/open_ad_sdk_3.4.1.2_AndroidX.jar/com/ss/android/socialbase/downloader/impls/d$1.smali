.class Lcom/ss/android/socialbase/downloader/impls/d$1;
.super Ljava/lang/Object;
.source "DefaultDownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/h/g$a;


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

    .line 50
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/d$1;->a:Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 3

    .line 53
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 54
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 55
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/d$1$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/impls/d$1$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/d$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 66
    :cond_11
    return-void
.end method
