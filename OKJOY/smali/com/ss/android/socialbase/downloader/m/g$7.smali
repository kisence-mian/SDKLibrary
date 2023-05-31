.class final Lcom/ss/android/socialbase/downloader/m/g$7;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/y;)Lcom/ss/android/socialbase/downloader/d/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/y;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/y;)V
    .registers 2

    .prologue
    .line 549
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$7;->a:Lcom/ss/android/socialbase/downloader/d/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$7;->a:Lcom/ss/android/socialbase/downloader/d/y;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/y;->a()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 577
    :goto_6
    return-object v0

    .line 574
    :catch_7
    move-exception v0

    .line 575
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 577
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$7;->a:Lcom/ss/android/socialbase/downloader/d/y;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/d/y;->a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 558
    :goto_5
    return-void

    .line 555
    :catch_6
    move-exception v0

    .line 556
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public a(Z)Z
    .registers 3

    .prologue
    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$7;->a:Lcom/ss/android/socialbase/downloader/d/y;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/y;->a(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 567
    :goto_6
    return v0

    .line 564
    :catch_7
    move-exception v0

    .line 565
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 567
    const/4 v0, 0x0

    goto :goto_6
.end method
