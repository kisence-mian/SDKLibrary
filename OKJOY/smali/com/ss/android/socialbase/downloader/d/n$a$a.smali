.class Lcom/ss/android/socialbase/downloader/d/n$a$a;
.super Ljava/lang/Object;
.source "IDownloadDiskSpaceAidlHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/d/n$a;
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
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/n$a$a;->a:Landroid/os/IBinder;

    .line 68
    return-void
.end method


# virtual methods
.method public a(JJLcom/ss/android/socialbase/downloader/d/m;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 83
    :try_start_a
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    invoke-virtual {v3, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    if-eqz p5, :cond_35

    invoke-interface {p5}, Lcom/ss/android/socialbase/downloader/d/m;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1b
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 87
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/d/n$a$a;->a:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 88
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 89
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_39

    move-result v2

    if-eqz v2, :cond_37

    .line 92
    :goto_2e
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 93
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 95
    return v0

    .line 86
    :cond_35
    const/4 v2, 0x0

    goto :goto_1b

    :cond_37
    move v0, v1

    .line 89
    goto :goto_2e

    .line 92
    :catchall_39
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 93
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/n$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
