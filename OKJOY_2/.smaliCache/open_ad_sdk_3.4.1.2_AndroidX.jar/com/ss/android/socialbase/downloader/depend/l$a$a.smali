.class Lcom/ss/android/socialbase/downloader/depend/l$a$a;
.super Ljava/lang/Object;
.source "IDownloadCompleteAidlHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/depend/l;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/depend/l$a$a;->b:Landroid/os/IBinder;

    .line 111
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 131
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadCompleteAidlHandler"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 132
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 133
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {p1, v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 137
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    :goto_1b
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/depend/l$a$a;->b:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 140
    if-nez v2, :cond_37

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/l$a;->a()Lcom/ss/android/socialbase/downloader/depend/l;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 141
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/l$a;->a()Lcom/ss/android/socialbase/downloader/depend/l;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/depend/l;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 142
    return-void

    .line 144
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    nop

    .line 150
    return-void

    .line 147
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/l$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 161
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadCompleteAidlHandler"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 163
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {p1, v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 167
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    :goto_1b
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/depend/l$a$a;->b:Landroid/os/IBinder;

    const/4 v5, 0x2

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 170
    if-nez v4, :cond_39

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/l$a;->a()Lcom/ss/android/socialbase/downloader/depend/l;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 171
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/l$a;->a()Lcom/ss/android/socialbase/downloader/depend/l;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/depend/l;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    return p1

    .line 173
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4c

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    .line 177
    :goto_44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    nop

    .line 180
    return v2

    .line 177
    :catchall_4c
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
