.class public abstract Lcom/ss/android/socialbase/downloader/depend/p$a;
.super Landroid/os/Binder;
.source "IDownloadDiskSpaceAidlHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/depend/p$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/depend/p$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/depend/p;
    .registers 1

    .line 126
    sget-object v0, Lcom/ss/android/socialbase/downloader/depend/p$a$a;->a:Lcom/ss/android/socialbase/downloader/depend/p;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/p;
    .registers 3

    .line 34
    if-nez p0, :cond_4

    .line 35
    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/p;

    if-eqz v1, :cond_13

    .line 39
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/p;

    return-object v0

    .line 41
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/depend/p$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/depend/p$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    nop

    .line 50
    const/4 v0, 0x1

    const-string v1, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler"

    sparse-switch p1, :sswitch_data_30

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 54
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return v0

    .line 59
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/depend/o$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/o;

    move-result-object v7

    .line 66
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/depend/p$a;->a(JJLcom/ss/android/socialbase/downloader/depend/o;)Z

    move-result p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return v0

    nop

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
