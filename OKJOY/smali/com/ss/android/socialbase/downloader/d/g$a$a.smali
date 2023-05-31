.class Lcom/ss/android/socialbase/downloader/d/g$a$a;
.super Ljava/lang/Object;
.source "IDownloadAidlFileProvider.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/d/g$a;
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
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/g$a$a;->a:Landroid/os/IBinder;

    .line 72
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 87
    :try_start_8
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlFileProvider"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/g$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 91
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 92
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    .line 93
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_34

    .line 100
    :goto_2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    return-object v0

    .line 96
    :cond_32
    const/4 v0, 0x0

    goto :goto_2b

    .line 100
    :catchall_34
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/g$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
