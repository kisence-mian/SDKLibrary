.class Lcom/ss/android/socialbase/downloader/d/f$a$a;
.super Ljava/lang/Object;
.source "IDownloadAidlDepend.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/d/f$a;
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
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/f$a$a;->a:Landroid/os/IBinder;

    .line 77
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 91
    :try_start_8
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlDepend"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 92
    if-eqz p1, :cond_35

    .line 93
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    :goto_17
    if-eqz p2, :cond_42

    .line 100
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/ss/android/socialbase/downloader/e/a;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    :goto_21
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/f$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 108
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3a

    .line 111
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    return-void

    .line 97
    :cond_35
    const/4 v0, 0x0

    :try_start_36
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_17

    .line 111
    :catchall_3a
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 104
    :cond_42
    const/4 v0, 0x0

    :try_start_43
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3a

    goto :goto_21
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/f$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
