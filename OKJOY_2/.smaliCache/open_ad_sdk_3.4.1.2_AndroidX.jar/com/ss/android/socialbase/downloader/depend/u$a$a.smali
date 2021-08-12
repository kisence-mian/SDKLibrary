.class Lcom/ss/android/socialbase/downloader/depend/u$a$a;
.super Ljava/lang/Object;
.source "IDownloadForbiddenAidlCallback.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/u$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/depend/u;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/depend/u$a$a;->b:Landroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 103
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 105
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/depend/u$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 106
    if-nez v2, :cond_2e

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/u$a;->b()Lcom/ss/android/socialbase/downloader/depend/u;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 107
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/u$a;->b()Lcom/ss/android/socialbase/downloader/depend/u;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/depend/u;->a(Ljava/util/List;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 108
    return-void

    .line 110
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    nop

    .line 116
    return-void

    .line 113
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 123
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/depend/u$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 125
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/u$a;->b()Lcom/ss/android/socialbase/downloader/depend/u;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 126
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/u$a;->b()Lcom/ss/android/socialbase/downloader/depend/u;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/u;->a()Z

    move-result v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3e

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    return v2

    .line 128
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3e

    if-eqz v2, :cond_36

    const/4 v4, 0x1

    .line 132
    :cond_36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    nop

    .line 135
    return v4

    .line 132
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/u$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
