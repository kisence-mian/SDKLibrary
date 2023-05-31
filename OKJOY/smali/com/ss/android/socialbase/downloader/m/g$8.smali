.class final Lcom/ss/android/socialbase/downloader/m/g$8;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/ab;)Lcom/ss/android/socialbase/downloader/d/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/ab;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/ab;)V
    .registers 2

    .prologue
    .line 586
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$8;->a:Lcom/ss/android/socialbase/downloader/d/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3

    .prologue
    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$8;->a:Lcom/ss/android/socialbase/downloader/d/ab;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/ab;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 595
    :goto_6
    return v0

    .line 592
    :catch_7
    move-exception v0

    .line 593
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 595
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3

    .prologue
    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$8;->a:Lcom/ss/android/socialbase/downloader/d/ab;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/ab;->b(Lcom/ss/android/socialbase/downloader/g/c;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 605
    :goto_6
    return v0

    .line 602
    :catch_7
    move-exception v0

    .line 603
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 605
    const/4 v0, 0x0

    goto :goto_6
.end method
