.class Lcom/ss/android/socialbase/downloader/depend/ai$a$a;
.super Ljava/lang/Object;
.source "IRetryDelayTimeAidlCalculator.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/ai;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/ai$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/depend/ai;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/depend/ai$a$a;->b:Landroid/os/IBinder;

    .line 81
    return-void
.end method


# virtual methods
.method public a(II)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 96
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/depend/ai$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 100
    if-nez v2, :cond_32

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/ai$a;->a()Lcom/ss/android/socialbase/downloader/depend/ai;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 101
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/ai$a;->a()Lcom/ss/android/socialbase/downloader/depend/ai;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/ai;->a(II)J

    move-result-wide p1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_41

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    return-wide p1

    .line 103
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_41

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    nop

    .line 110
    return-wide p1

    .line 107
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/ai$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
