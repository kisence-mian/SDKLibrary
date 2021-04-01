.class Lcom/ss/android/socialbase/downloader/d/h$a$a;
.super Ljava/lang/Object;
.source "IDownloadAidlInterceptor.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/d/h$a;
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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/h$a$a;->a:Landroid/os/IBinder;

    .line 62
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 77
    :try_start_a
    const-string v4, "com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/d/h$a$a;->a:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 79
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 80
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_28

    move-result v4

    if-eqz v4, :cond_26

    .line 83
    :goto_1f
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 86
    return v0

    :cond_26
    move v0, v1

    .line 80
    goto :goto_1f

    .line 83
    :catchall_28
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/h$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
