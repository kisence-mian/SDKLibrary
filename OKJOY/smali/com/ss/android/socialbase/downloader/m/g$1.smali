.class final Lcom/ss/android/socialbase/downloader/m/g$1;
.super Lcom/ss/android/socialbase/downloader/g/a$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/g/d;)Lcom/ss/android/socialbase/downloader/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/g/d;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/f;->c(I)Lcom/ss/android/socialbase/downloader/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/d;->b(Lcom/ss/android/socialbase/downloader/b/h;)I

    move-result v0

    return v0
.end method

.method public a(II)Lcom/ss/android/socialbase/downloader/d/i;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/f;->c(I)Lcom/ss/android/socialbase/downloader/b/h;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/h;I)Lcom/ss/android/socialbase/downloader/d/w;

    move-result-object v1

    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/h;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_18

    const/4 v0, 0x0

    :goto_13
    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/w;Z)Lcom/ss/android/socialbase/downloader/d/i;

    move-result-object v0

    return-object v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public a()Lcom/ss/android/socialbase/downloader/g/c;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/ss/android/socialbase/downloader/d/e;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->f()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lcom/ss/android/socialbase/downloader/d/e;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/d/i;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/f;->c(I)Lcom/ss/android/socialbase/downloader/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/d;->c(Lcom/ss/android/socialbase/downloader/b/h;)Lcom/ss/android/socialbase/downloader/d/w;

    move-result-object v1

    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/h;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_18

    const/4 v0, 0x0

    :goto_13
    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/w;Z)Lcom/ss/android/socialbase/downloader/d/i;

    move-result-object v0

    return-object v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public c()Lcom/ss/android/socialbase/downloader/d/y;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->j()Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/z;)Lcom/ss/android/socialbase/downloader/d/y;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ss/android/socialbase/downloader/d/ab;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->k()Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/ac;)Lcom/ss/android/socialbase/downloader/d/ab;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/ss/android/socialbase/downloader/d/h;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->c()Lcom/ss/android/socialbase/downloader/d/v;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/v;)Lcom/ss/android/socialbase/downloader/d/h;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/ss/android/socialbase/downloader/d/f;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->d()Lcom/ss/android/socialbase/downloader/d/l;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/l;)Lcom/ss/android/socialbase/downloader/d/f;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/ss/android/socialbase/downloader/d/s;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->h()Lcom/ss/android/socialbase/downloader/d/u;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/u;)Lcom/ss/android/socialbase/downloader/d/s;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/ss/android/socialbase/downloader/d/ad;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->g()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/downloader/r;)Lcom/ss/android/socialbase/downloader/d/ad;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/ss/android/socialbase/downloader/d/n;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->i()Lcom/ss/android/socialbase/downloader/d/p;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/p;)Lcom/ss/android/socialbase/downloader/d/n;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/ss/android/socialbase/downloader/d/j;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/x;)Lcom/ss/android/socialbase/downloader/d/j;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/ss/android/socialbase/downloader/d/g;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$1;->a:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->l()Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/q;)Lcom/ss/android/socialbase/downloader/d/g;

    move-result-object v0

    return-object v0
.end method
