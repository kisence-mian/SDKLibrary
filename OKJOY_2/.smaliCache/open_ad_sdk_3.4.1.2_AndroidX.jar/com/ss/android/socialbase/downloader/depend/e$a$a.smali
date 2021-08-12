.class Lcom/ss/android/socialbase/downloader/depend/e$a$a;
.super Ljava/lang/Object;
.source "IChunkCntAidlCalculator.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/depend/e;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/depend/e$a$a;->b:Landroid/os/IBinder;

    .line 79
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

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 94
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/depend/e$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 97
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/e$a;->a()Lcom/ss/android/socialbase/downloader/depend/e;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 98
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/e$a;->a()Lcom/ss/android/socialbase/downloader/depend/e;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/e;->a(J)I

    move-result p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3e

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 98
    return p1

    .line 100
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3e

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    nop

    .line 107
    return p1

    .line 104
    :catchall_3e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/e$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
