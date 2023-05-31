.class Lcom/ss/android/socialbase/downloader/impls/n$1;
.super Ljava/lang/Object;
.source "IndependentDownloadServiceHandler.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
    .line 164
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n$1;->a:Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 167
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/n;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied: mServiceConnection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/n$1;->a:Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/n;->a(Lcom/ss/android/socialbase/downloader/impls/n;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/n;->i()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_50

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/n;->j()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_50

    .line 172
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n$1;->a:Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/n;->b(Lcom/ss/android/socialbase/downloader/impls/n;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/n$1$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/impls/n$1$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/n$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/n;->k()I

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/n;->a(J)J

    .line 189
    :cond_50
    return-void
.end method
