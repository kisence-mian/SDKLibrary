.class final Lcom/ss/android/socialbase/downloader/m/g$12;
.super Lcom/ss/android/socialbase/downloader/d/i$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/w;Z)Lcom/ss/android/socialbase/downloader/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/w;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/w;Z)V
    .registers 3

    .prologue
    .line 139
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->b:Z

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/i$a;-><init>()V

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

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->b:Z

    if-eqz v0, :cond_11

    .line 149
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/g;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/m/g$12$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/m/g$12$1;-><init>(Lcom/ss/android/socialbase/downloader/m/g$12;Lcom/ss/android/socialbase/downloader/g/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    :goto_10
    return-void

    .line 156
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/w;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_10
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->b:Z

    if-eqz v0, :cond_11

    .line 220
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/g;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/m/g$12$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/m/g$12$8;-><init>(Lcom/ss/android/socialbase/downloader/m/g$12;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    :goto_10
    return-void

    .line 227
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/w;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_10
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->b:Z

    if-eqz v0, :cond_11

    .line 164
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/g;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/m/g$12$4;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/m/g$12$4;-><init>(Lcom/ss/android/socialbase/downloader/m/g$12;Lcom/ss/android/socialbase/downloader/g/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    :goto_10
    return-void

    .line 171
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/w;->b(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_10
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->b:Z

    if-eqz v0, :cond_11

    .line 276
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/g;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/m/g$12$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/m/g$12$2;-><init>(Lcom/ss/android/socialbase/downloader/m/g$12;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    :goto_10
    return-void

    .line 283
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/w;->b(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_10
.end method

.method public c(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->b:Z

    if-eqz v0, :cond_11

    .line 178
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/g;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/m/g$12$5;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/m/g$12$5;-><init>(Lcom/ss/android/socialbase/downloader/m/g$12;Lcom/ss/android/socialbase/downloader/g/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    :goto_10
    return-void

    .line 185
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/w;->c(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_10
.end method

.method public c(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->b:Z

    if-eqz v0, :cond_11

    .line 290
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/g;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/m/g$12$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/m/g$12$3;-><init>(Lcom/ss/android/socialbase/downloader/m/g$12;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    :goto_10
    return-void

    .line 297
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/w;->c(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_10
.end method

.method public d(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->b:Z

    if-eqz v0, :cond_11

    .line 192
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/g;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/m/g$12$6;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/m/g$12$6;-><init>(Lcom/ss/android/socialbase/downloader/m/g$12;Lcom/ss/android/socialbase/downloader/g/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    :goto_10
    return-void

    .line 199
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/w;->d(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_10
.end method

.method public e(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->b:Z

    if-eqz v0, :cond_11

    .line 206
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/g;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/m/g$12$7;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/m/g$12$7;-><init>(Lcom/ss/android/socialbase/downloader/m/g$12;Lcom/ss/android/socialbase/downloader/g/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    :goto_10
    return-void

    .line 213
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/w;->e(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_10
.end method

.method public f(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->b:Z

    if-eqz v0, :cond_11

    .line 234
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/g;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/m/g$12$9;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/m/g$12$9;-><init>(Lcom/ss/android/socialbase/downloader/m/g$12;Lcom/ss/android/socialbase/downloader/g/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    :goto_10
    return-void

    .line 241
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/w;->f(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_10
.end method

.method public g(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->b:Z

    if-eqz v0, :cond_11

    .line 248
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/g;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/m/g$12$10;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/m/g$12$10;-><init>(Lcom/ss/android/socialbase/downloader/m/g$12;Lcom/ss/android/socialbase/downloader/g/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    :goto_10
    return-void

    .line 255
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/w;->g(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_10
.end method

.method public h(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->b:Z

    if-eqz v0, :cond_11

    .line 262
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/g;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/m/g$12$11;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/m/g$12$11;-><init>(Lcom/ss/android/socialbase/downloader/m/g$12;Lcom/ss/android/socialbase/downloader/g/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    :goto_10
    return-void

    .line 269
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$12;->a:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/w;->h(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_10
.end method
