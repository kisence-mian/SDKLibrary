.class Lcom/ss/android/socialbase/downloader/impls/o$1;
.super Ljava/lang/Object;
.source "IndependentProcessDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/o;->a(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/impls/o;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/o;)V
    .registers 2

    .line 774
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/o$1;->a:Lcom/ss/android/socialbase/downloader/impls/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 4

    .line 777
    const/4 v0, 0x1

    if-ne p2, v0, :cond_25

    .line 778
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->pause(I)V

    .line 779
    const/4 p2, 0x0

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->i(I)Ljava/util/List;

    move-result-object p2

    .line 780
    if-eqz p2, :cond_34

    .line 781
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 782
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(ILjava/util/List;)V

    goto :goto_34

    .line 784
    :cond_25
    const/4 v0, 0x2

    if-ne p2, v0, :cond_34

    .line 785
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->cancel(I)V

    goto :goto_35

    .line 784
    :cond_34
    :goto_34
    nop

    .line 788
    :goto_35
    return-void
.end method
