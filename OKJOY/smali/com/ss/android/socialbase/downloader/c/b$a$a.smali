.class Lcom/ss/android/socialbase/downloader/c/b$a$a;
.super Ljava/lang/Object;
.source "ISqlCacheLoadCompleteCallbackAidl.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/c/b$a;
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
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/b$a$a;->a:Landroid/os/IBinder;

    .line 68
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 82
    :try_start_8
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlCacheLoadCompleteCallbackAidl"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 84
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/b$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 86
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    .line 89
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 90
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 92
    return-void

    .line 89
    :catchall_24
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 90
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/b$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
