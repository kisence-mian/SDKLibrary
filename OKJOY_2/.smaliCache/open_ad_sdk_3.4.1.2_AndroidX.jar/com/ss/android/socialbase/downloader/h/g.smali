.class public Lcom/ss/android/socialbase/downloader/h/g;
.super Landroid/os/Handler;
.source "WeakDownloadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/h/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/socialbase/downloader/h/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/ss/android/socialbase/downloader/h/g$a;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/g;->a:Ljava/lang/ref/WeakReference;

    .line 28
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/h/g$a;

    .line 33
    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 34
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/h/g$a;->a(Landroid/os/Message;)V

    .line 35
    :cond_f
    return-void
.end method
