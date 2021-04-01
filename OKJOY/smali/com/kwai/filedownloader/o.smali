.class Lcom/kwai/filedownloader/o;
.super Lcom/kwai/filedownloader/services/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwai/filedownloader/services/a",
        "<",
        "Lcom/kwai/filedownloader/o$a;",
        "Lcom/kwai/filedownloader/e0/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-class v0, Lcom/kwai/filedownloader/services/FileDownloadService$SeparateProcessService;

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/services/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/o;->a(Landroid/os/IBinder;)Lcom/kwai/filedownloader/e0/b;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/IBinder;)Lcom/kwai/filedownloader/e0/b;
    .registers 3

    invoke-static {p1}, Lcom/kwai/filedownloader/e0/b$a;->a(Landroid/os/IBinder;)Lcom/kwai/filedownloader/e0/b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/os/IInterface;Landroid/os/Binder;)V
    .registers 3

    check-cast p1, Lcom/kwai/filedownloader/e0/b;

    check-cast p2, Lcom/kwai/filedownloader/o$a;

    invoke-virtual {p0, p1, p2}, Lcom/kwai/filedownloader/o;->a(Lcom/kwai/filedownloader/e0/b;Lcom/kwai/filedownloader/o$a;)V

    return-void
.end method

.method protected a(Lcom/kwai/filedownloader/e0/b;Lcom/kwai/filedownloader/o$a;)V
    .registers 3

    invoke-interface {p1, p2}, Lcom/kwai/filedownloader/e0/b;->a(Lcom/kwai/filedownloader/e0/a;)V

    return-void
.end method

.method public a(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/services/a;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/kwai/filedownloader/h0/a;->a(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/kwai/filedownloader/services/a;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/e0/b;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/e0/b;->a(I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_16

    move-result v0

    goto :goto_a

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/f0/b;Z)Z
    .registers 20

    invoke-virtual {p0}, Lcom/kwai/filedownloader/services/a;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1, p2, p3}, Lcom/kwai/filedownloader/h0/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/kwai/filedownloader/services/a;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/e0/b;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/kwai/filedownloader/e0/b;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/f0/b;Z)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_21} :catch_23

    const/4 v0, 0x1

    goto :goto_a

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(I)B
    .registers 4

    invoke-virtual {p0}, Lcom/kwai/filedownloader/services/a;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/kwai/filedownloader/h0/a;->b(I)B

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p0}, Lcom/kwai/filedownloader/services/a;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/e0/b;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/e0/b;->b(I)B
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    move-result v0

    goto :goto_a

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v1

    goto :goto_a
.end method

.method protected bridge synthetic b()Landroid/os/Binder;
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/o;->b()Lcom/kwai/filedownloader/o$a;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lcom/kwai/filedownloader/o$a;
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/o$a;

    invoke-direct {v0}, Lcom/kwai/filedownloader/o$a;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic b(Landroid/os/IInterface;Landroid/os/Binder;)V
    .registers 3

    check-cast p1, Lcom/kwai/filedownloader/e0/b;

    check-cast p2, Lcom/kwai/filedownloader/o$a;

    invoke-virtual {p0, p1, p2}, Lcom/kwai/filedownloader/o;->b(Lcom/kwai/filedownloader/e0/b;Lcom/kwai/filedownloader/o$a;)V

    return-void
.end method

.method protected b(Lcom/kwai/filedownloader/e0/b;Lcom/kwai/filedownloader/o$a;)V
    .registers 3

    invoke-interface {p1, p2}, Lcom/kwai/filedownloader/e0/b;->b(Lcom/kwai/filedownloader/e0/a;)V

    return-void
.end method

.method public c(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/services/a;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/kwai/filedownloader/h0/a;->c(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/kwai/filedownloader/services/a;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/e0/b;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/e0/b;->c(I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_16

    move-result v0

    goto :goto_a

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_a
.end method
