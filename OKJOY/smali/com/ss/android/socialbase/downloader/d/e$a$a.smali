.class Lcom/ss/android/socialbase/downloader/d/e$a$a;
.super Ljava/lang/Object;
.source "IChunkCntAidlCalculator.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/d/e$a;
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
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/e$a$a;->a:Landroid/os/IBinder;

    .line 64
    return-void
.end method


# virtual methods
.method public a(J)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 79
    :try_start_8
    const-string v0, "com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/e$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 82
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 83
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_25

    move-result v0

    .line 86
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 89
    return v0

    .line 86
    :catchall_25
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/e$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
