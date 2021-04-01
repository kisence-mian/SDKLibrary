.class Lcom/ss/android/socialbase/downloader/c/f$1;
.super Ljava/lang/Object;
.source "SqlDownloadCacheAidlWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/c/f;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/c/f;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/f$1;->a:Lcom/ss/android/socialbase/downloader/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 53
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/f;->e()Z

    move-result v0

    if-nez v0, :cond_17

    .line 54
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f$1;->a:Lcom/ss/android/socialbase/downloader/c/f;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/c/f;->a(Lcom/ss/android/socialbase/downloader/c/f;)Lcom/ss/android/socialbase/downloader/c/f$a;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 55
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f$1;->a:Lcom/ss/android/socialbase/downloader/c/f;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/c/f;->a(Lcom/ss/android/socialbase/downloader/c/f;)Lcom/ss/android/socialbase/downloader/c/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/c/f$a;->a()V

    .line 58
    :cond_17
    return-void
.end method
