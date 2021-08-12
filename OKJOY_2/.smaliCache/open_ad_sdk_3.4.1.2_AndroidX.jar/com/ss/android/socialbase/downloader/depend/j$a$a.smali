.class Lcom/ss/android/socialbase/downloader/depend/j$a$a;
.super Ljava/lang/Object;
.source "IDownloadAidlMonitorDepend.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/depend/j;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/depend/j$a$a;->b:Landroid/os/IBinder;

    .line 101
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

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 135
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/depend/j$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 137
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/j$a;->c()Lcom/ss/android/socialbase/downloader/depend/j;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 138
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/j$a;->c()Lcom/ss/android/socialbase/downloader/depend/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/j;->a()Ljava/lang/String;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    return-object v2

    .line 140
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3b

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    nop

    .line 147
    return-object v2

    .line 144
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public a(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 115
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/depend/j$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 118
    if-nez v2, :cond_2e

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/j$a;->c()Lcom/ss/android/socialbase/downloader/depend/j;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 119
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/j$a;->c()Lcom/ss/android/socialbase/downloader/depend/j;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/depend/j;->a(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    return-void

    .line 122
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    nop

    .line 128
    return-void

    .line 125
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/j$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 155
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/depend/j$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 157
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/j$a;->c()Lcom/ss/android/socialbase/downloader/depend/j;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 158
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/j$a;->c()Lcom/ss/android/socialbase/downloader/depend/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/j;->b()[I

    move-result-object v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    return-object v2

    .line 160
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3b

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    nop

    .line 167
    return-object v2

    .line 164
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
