.class final Lcom/ss/android/socialbase/downloader/i/f$7;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/aa;)Lcom/ss/android/socialbase/downloader/depend/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/aa;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/aa;)V
    .registers 2

    .line 593
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$7;->a:Lcom/ss/android/socialbase/downloader/depend/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$7;->a:Lcom/ss/android/socialbase/downloader/depend/aa;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/aa;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 618
    :catch_7
    move-exception v0

    .line 619
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 621
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$7;->a:Lcom/ss/android/socialbase/downloader/depend/aa;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/depend/aa;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 601
    goto :goto_a

    .line 599
    :catch_6
    move-exception p1

    .line 600
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 602
    :goto_a
    return-void
.end method

.method public a(Z)Z
    .registers 3

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$7;->a:Lcom/ss/android/socialbase/downloader/depend/aa;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/aa;->a(Z)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 608
    :catch_7
    move-exception p1

    .line 609
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 611
    const/4 p1, 0x0

    return p1
.end method
