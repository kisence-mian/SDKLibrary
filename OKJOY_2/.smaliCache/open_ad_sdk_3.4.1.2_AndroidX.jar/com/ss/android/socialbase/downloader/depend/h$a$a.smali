.class Lcom/ss/android/socialbase/downloader/depend/h$a$a;
.super Ljava/lang/Object;
.source "IDownloadAidlInterceptor.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/depend/h;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/depend/h$a$a;->b:Landroid/os/IBinder;

    .line 77
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 92
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/depend/h$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 94
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/h$a;->b()Lcom/ss/android/socialbase/downloader/depend/h;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 95
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/h$a;->b()Lcom/ss/android/socialbase/downloader/depend/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/h;->a()Z

    move-result v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3e

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    return v2

    .line 97
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3e

    if-eqz v2, :cond_36

    move v3, v4

    .line 101
    :cond_36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 103
    nop

    .line 104
    return v3

    .line 101
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/h$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
