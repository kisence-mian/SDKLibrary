.class Lcom/ss/android/socialbase/downloader/depend/aa$a$a;
.super Ljava/lang/Object;
.source "IDownloadNotificationEventAidlListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/aa$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/depend/aa;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/depend/aa$a$a;->b:Landroid/os/IBinder;

    .line 114
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 178
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/depend/aa$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 180
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/aa$a;->b()Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 181
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/aa$a;->b()Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/aa;->a()Ljava/lang/String;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    return-object v2

    .line 183
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3b

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    nop

    .line 190
    return-object v2

    .line 187
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 128
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1b

    .line 131
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {p2, v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 135
    :cond_1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    :goto_1e
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/depend/aa$a$a;->b:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 140
    if-nez v2, :cond_40

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/aa$a;->b()Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 141
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/aa$a;->b()Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/depend/aa;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_4b

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 142
    return-void

    .line 144
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4b

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    nop

    .line 150
    return-void

    .line 147
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 157
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v3

    :goto_14
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/depend/aa$a$a;->b:Landroid/os/IBinder;

    const/4 v5, 0x2

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 160
    if-nez v4, :cond_35

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/aa$a;->b()Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 161
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/aa$a;->b()Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/depend/aa;->a(Z)Z

    move-result p1
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_48

    .line 167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    return p1

    .line 163
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_48

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v3

    .line 167
    :goto_40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    nop

    .line 170
    return v2

    .line 167
    :catchall_48
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/aa$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
