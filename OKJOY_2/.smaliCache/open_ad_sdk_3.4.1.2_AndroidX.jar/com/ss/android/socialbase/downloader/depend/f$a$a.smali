.class Lcom/ss/android/socialbase/downloader/depend/f$a$a;
.super Ljava/lang/Object;
.source "IDownloadAidlDepend.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/depend/f;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/depend/f$a$a;->b:Landroid/os/IBinder;

    .line 91
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 105
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadAidlDepend"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 106
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 107
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {p1, v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 111
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    :goto_1b
    if-eqz p2, :cond_24

    .line 114
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {p2, v0, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 118
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    :goto_27
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/depend/f$a$a;->b:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 122
    if-nez v2, :cond_46

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/f$a;->a()Lcom/ss/android/socialbase/downloader/depend/f;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 123
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/f$a;->a()Lcom/ss/android/socialbase/downloader/depend/f;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/depend/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_51

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    return-void

    .line 126
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_51

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    nop

    .line 132
    return-void

    .line 129
    :catchall_51
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/f$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
