.class Lcom/kwai/filedownloader/o;
.super Lcom/kwai/filedownloader/services/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwai/filedownloader/services/a<",
        "Lcom/kwai/filedownloader/o$a;",
        "Lcom/kwai/filedownloader/c/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-class v0, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy$SeparateProcessServiceProxy;

    invoke-static {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getProxyRealClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/services/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lcom/kwai/filedownloader/c/b;
    .registers 2

    invoke-static {p1}, Lcom/kwai/filedownloader/c/b$a;->a(Landroid/os/IBinder;)Lcom/kwai/filedownloader/c/b;

    move-result-object p1

    return-object p1
.end method

.method protected a()Lcom/kwai/filedownloader/o$a;
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/o$a;

    invoke-direct {v0}, Lcom/kwai/filedownloader/o$a;-><init>()V

    return-object v0
.end method

.method protected synthetic a(Landroid/os/IInterface;Landroid/os/Binder;)V
    .registers 3

    check-cast p1, Lcom/kwai/filedownloader/c/b;

    check-cast p2, Lcom/kwai/filedownloader/o$a;

    invoke-virtual {p0, p1, p2}, Lcom/kwai/filedownloader/o;->b(Lcom/kwai/filedownloader/c/b;Lcom/kwai/filedownloader/o$a;)V

    return-void
.end method

.method protected a(Lcom/kwai/filedownloader/c/b;Lcom/kwai/filedownloader/o$a;)V
    .registers 3

    invoke-interface {p1, p2}, Lcom/kwai/filedownloader/c/b;->a(Lcom/kwai/filedownloader/c/a;)V

    return-void
.end method

.method public a(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/o;->c()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/kwai/filedownloader/f/a;->a(I)Z

    move-result p1

    return p1

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/kwai/filedownloader/o;->d()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/c/b;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/c/b;->a(I)Z

    move-result p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16

    return p1

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/d/b;Z)Z
    .registers 21

    invoke-virtual {p0}, Lcom/kwai/filedownloader/o;->c()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1, p2, p3}, Lcom/kwai/filedownloader/f/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/kwai/filedownloader/o;->d()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/kwai/filedownloader/c/b;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/kwai/filedownloader/c/b;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/d/b;Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_23} :catch_25

    const/4 v0, 0x1

    return v0

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)B
    .registers 4

    invoke-virtual {p0}, Lcom/kwai/filedownloader/o;->c()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/kwai/filedownloader/f/a;->b(I)B

    move-result p1

    return p1

    :cond_b
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p0}, Lcom/kwai/filedownloader/o;->d()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/kwai/filedownloader/c/b;

    invoke-interface {v1, p1}, Lcom/kwai/filedownloader/c/b;->e(I)B

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1b
    return v0
.end method

.method protected synthetic b()Landroid/os/Binder;
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/o;->a()Lcom/kwai/filedownloader/o$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/o;->a(Landroid/os/IBinder;)Lcom/kwai/filedownloader/c/b;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(Landroid/os/IInterface;Landroid/os/Binder;)V
    .registers 3

    check-cast p1, Lcom/kwai/filedownloader/c/b;

    check-cast p2, Lcom/kwai/filedownloader/o$a;

    invoke-virtual {p0, p1, p2}, Lcom/kwai/filedownloader/o;->a(Lcom/kwai/filedownloader/c/b;Lcom/kwai/filedownloader/o$a;)V

    return-void
.end method

.method protected b(Lcom/kwai/filedownloader/c/b;Lcom/kwai/filedownloader/o$a;)V
    .registers 3

    invoke-interface {p1, p2}, Lcom/kwai/filedownloader/c/b;->b(Lcom/kwai/filedownloader/c/a;)V

    return-void
.end method

.method public c(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/o;->c()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/kwai/filedownloader/f/a;->c(I)Z

    move-result p1

    return p1

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/kwai/filedownloader/o;->d()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/c/b;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/c/b;->f(I)Z

    move-result p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16

    return p1

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
