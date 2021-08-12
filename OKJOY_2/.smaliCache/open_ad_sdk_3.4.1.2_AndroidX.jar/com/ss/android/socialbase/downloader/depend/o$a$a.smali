.class Lcom/ss/android/socialbase/downloader/depend/o$a$a;
.super Ljava/lang/Object;
.source "IDownloadDiskSpaceAidlCallback.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/o$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/depend/o;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/depend/o$a$a;->b:Landroid/os/IBinder;

    .line 75
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

    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 87
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 89
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/depend/o$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 91
    if-nez v2, :cond_2b

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/o$a;->b()Lcom/ss/android/socialbase/downloader/depend/o;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 92
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/o$a;->b()Lcom/ss/android/socialbase/downloader/depend/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/o;->a()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    return-void

    .line 95
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    nop

    .line 101
    return-void

    .line 98
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/o$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
