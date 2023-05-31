.class Lcom/ss/android/socialbase/downloader/d/s$a$a;
.super Ljava/lang/Object;
.source "IDownloadForbiddenAidlHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/d/s$a;
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
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/s$a$a;->a:Landroid/os/IBinder;

    .line 64
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/d/r;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 79
    :try_start_a
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 80
    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/d/r;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_15
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 81
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/d/s$a$a;->a:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 82
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 83
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_33

    move-result v2

    if-eqz v2, :cond_31

    .line 86
    :goto_28
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 89
    return v0

    .line 80
    :cond_2f
    const/4 v2, 0x0

    goto :goto_15

    :cond_31
    move v0, v1

    .line 83
    goto :goto_28

    .line 86
    :catchall_33
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/s$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
