.class final Lcom/ss/android/socialbase/downloader/i/f$12;
.super Lcom/ss/android/socialbase/downloader/depend/i$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)V
    .registers 3

    .line 153
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->b:Z

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->b:Z

    if-eqz v0, :cond_11

    .line 163
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/i/f$12$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/i/f$12$1;-><init>(Lcom/ss/android/socialbase/downloader/i/f$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 170
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onPrepare(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 173
    :goto_16
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->b:Z

    if-eqz v0, :cond_11

    .line 234
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/i/f$12$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/i/f$12$9;-><init>(Lcom/ss/android/socialbase/downloader/i/f$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 241
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onFailed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 243
    :goto_16
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->b:Z

    if-eqz v0, :cond_11

    .line 178
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/i/f$12$5;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/i/f$12$5;-><init>(Lcom/ss/android/socialbase/downloader/i/f$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 185
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 187
    :goto_16
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->b:Z

    if-eqz v0, :cond_11

    .line 290
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/i/f$12$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/i/f$12$2;-><init>(Lcom/ss/android/socialbase/downloader/i/f$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 297
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onRetry(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 299
    :goto_16
    return-void
.end method

.method public c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->b:Z

    if-eqz v0, :cond_11

    .line 192
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/i/f$12$6;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/i/f$12$6;-><init>(Lcom/ss/android/socialbase/downloader/i/f$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 199
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onProgress(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 201
    :goto_16
    return-void
.end method

.method public c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->b:Z

    if-eqz v0, :cond_11

    .line 304
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/i/f$12$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/i/f$12$3;-><init>(Lcom/ss/android/socialbase/downloader/i/f$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 311
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onRetryDelay(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 313
    :goto_16
    return-void
.end method

.method public d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->b:Z

    if-eqz v0, :cond_11

    .line 206
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/i/f$12$7;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/i/f$12$7;-><init>(Lcom/ss/android/socialbase/downloader/i/f$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 213
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onPause(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 215
    :goto_16
    return-void
.end method

.method public e(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->b:Z

    if-eqz v0, :cond_11

    .line 220
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/i/f$12$8;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/i/f$12$8;-><init>(Lcom/ss/android/socialbase/downloader/i/f$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 227
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onSuccessed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 229
    :goto_16
    return-void
.end method

.method public f(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->b:Z

    if-eqz v0, :cond_11

    .line 248
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/i/f$12$10;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/i/f$12$10;-><init>(Lcom/ss/android/socialbase/downloader/i/f$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 255
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onCanceled(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 257
    :goto_16
    return-void
.end method

.method public g(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->b:Z

    if-eqz v0, :cond_11

    .line 262
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/i/f$12$11;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/i/f$12$11;-><init>(Lcom/ss/android/socialbase/downloader/i/f$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 269
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onFirstStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 271
    :goto_16
    return-void
.end method

.method public h(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->b:Z

    if-eqz v0, :cond_11

    .line 276
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/i/f$12$12;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/i/f$12$12;-><init>(Lcom/ss/android/socialbase/downloader/i/f$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 283
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onFirstSuccess(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 285
    :goto_16
    return-void
.end method

.method public i(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/s;

    if-eqz v1, :cond_1c

    .line 318
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/i/f$12;->b:Z

    if-eqz v1, :cond_17

    .line 319
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/i/f$12$4;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/i/f$12$4;-><init>(Lcom/ss/android/socialbase/downloader/i/f$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c

    .line 326
    :cond_17
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/s;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 329
    :cond_1c
    :goto_1c
    return-void
.end method
