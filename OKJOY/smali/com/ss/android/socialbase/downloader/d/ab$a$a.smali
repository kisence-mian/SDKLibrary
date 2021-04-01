.class Lcom/ss/android/socialbase/downloader/d/ab$a$a;
.super Ljava/lang/Object;
.source "INotificationClickAidlCallback.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/d/ab$a;
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
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/ab$a$a;->a:Landroid/os/IBinder;

    .line 84
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 99
    :try_start_a
    const-string v4, "com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100
    if-eqz p1, :cond_30

    .line 101
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    :goto_19
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/d/ab$a$a;->a:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 108
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 109
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_35

    move-result v4

    if-eqz v4, :cond_3d

    .line 112
    :goto_29
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 115
    return v0

    .line 105
    :cond_30
    const/4 v4, 0x0

    :try_start_31
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_19

    .line 112
    :catchall_35
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_3d
    move v0, v1

    .line 109
    goto :goto_29
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/ab$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 123
    :try_start_a
    const-string v4, "com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    if-eqz p1, :cond_30

    .line 125
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    .line 131
    :goto_19
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/d/ab$a$a;->a:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 132
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 133
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_35

    move-result v4

    if-eqz v4, :cond_3d

    .line 136
    :goto_29
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 139
    return v0

    .line 129
    :cond_30
    const/4 v4, 0x0

    :try_start_31
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_19

    .line 136
    :catchall_35
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_3d
    move v0, v1

    .line 133
    goto :goto_29
.end method
