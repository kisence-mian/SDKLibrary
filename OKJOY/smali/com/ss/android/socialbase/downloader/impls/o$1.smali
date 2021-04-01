.class Lcom/ss/android/socialbase/downloader/impls/o$1;
.super Ljava/lang/Object;
.source "IndependentProcessDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/ag;


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

    .prologue
    .line 734
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/o$1;->a:Lcom/ss/android/socialbase/downloader/impls/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 737
    if-ne p2, v1, :cond_25

    .line 738
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(I)V

    .line 739
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->i(I)Ljava/util/List;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_24

    .line 741
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 742
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILjava/util/List;)V

    .line 748
    :cond_24
    :goto_24
    return-void

    .line 744
    :cond_25
    const/4 v0, 0x2

    if-ne p2, v0, :cond_24

    .line 745
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(I)V

    goto :goto_24
.end method
