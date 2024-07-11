.class final Lcom/ss/android/socialbase/downloader/i/f$23;
.super Lcom/ss/android/socialbase/downloader/depend/aa$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ab;)Lcom/ss/android/socialbase/downloader/depend/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/ab;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/ab;)V
    .registers 2

    .line 336
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$23;->a:Lcom/ss/android/socialbase/downloader/depend/ab;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/aa$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$23;->a:Lcom/ss/android/socialbase/downloader/depend/ab;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/ab;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$23;->a:Lcom/ss/android/socialbase/downloader/depend/ab;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/depend/ab;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public a(Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$23;->a:Lcom/ss/android/socialbase/downloader/depend/ab;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/ab;->a(Z)Z

    move-result p1

    return p1
.end method
