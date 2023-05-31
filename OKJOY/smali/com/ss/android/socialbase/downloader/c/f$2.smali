.class Lcom/ss/android/socialbase/downloader/c/f$2;
.super Ljava/lang/Object;
.source "SqlDownloadCacheAidlWrapper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/c/f;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
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
    .line 83
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/f$2;->a:Lcom/ss/android/socialbase/downloader/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/c/f;->a(Z)Z

    .line 87
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f$2;->a:Lcom/ss/android/socialbase/downloader/c/f;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/c/f;->b(Lcom/ss/android/socialbase/downloader/c/f;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 88
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f$2;->a:Lcom/ss/android/socialbase/downloader/c/f;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/c/f;->a(Lcom/ss/android/socialbase/downloader/c/f;)Lcom/ss/android/socialbase/downloader/c/f$a;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 89
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f$2;->a:Lcom/ss/android/socialbase/downloader/c/f;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/c/f;->d(Lcom/ss/android/socialbase/downloader/c/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/f$2;->a:Lcom/ss/android/socialbase/downloader/c/f;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/c/f;->c(Lcom/ss/android/socialbase/downloader/c/f;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    :cond_25
    return-void
.end method
