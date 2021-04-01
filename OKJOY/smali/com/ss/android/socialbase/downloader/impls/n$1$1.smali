.class Lcom/ss/android/socialbase/downloader/impls/n$1$1;
.super Ljava/lang/Object;
.source "IndependentDownloadServiceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/n$1;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/impls/n$1;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/n$1;)V
    .registers 2

    .prologue
    .line 172
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n$1$1;->a:Lcom/ss/android/socialbase/downloader/impls/n$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 176
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/n;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "run: restart downloader process !!"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n$1$1;->a:Lcom/ss/android/socialbase/downloader/impls/n$1;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/impls/n$1;->a:Lcom/ss/android/socialbase/downloader/impls/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/n;->a(Lcom/ss/android/socialbase/downloader/impls/n;Z)Z

    .line 179
    :try_start_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n$1$1;->a:Lcom/ss/android/socialbase/downloader/impls/n$1;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/impls/n$1;->a:Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/n$1$1;->a:Lcom/ss/android/socialbase/downloader/impls/n$1;

    iget-object v2, v2, Lcom/ss/android/socialbase/downloader/impls/n$1;->a:Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/impls/n;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_20} :catch_21

    .line 184
    :goto_20
    return-void

    .line 181
    :catch_21
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_20
.end method
