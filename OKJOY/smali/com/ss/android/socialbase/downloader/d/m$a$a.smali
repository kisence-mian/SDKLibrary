.class Lcom/ss/android/socialbase/downloader/d/m$a$a;
.super Ljava/lang/Object;
.source "IDownloadDiskSpaceAidlCallback.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/d/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/m$a$a;->a:Landroid/os/IBinder;

    .line 61
    return-void
.end method


# virtual methods
.method public a()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 75
    :try_start_8
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/m$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 77
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 80
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 81
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 83
    return-void

    .line 80
    :catchall_1e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 81
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/m$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
