.class public abstract Lcom/ss/android/socialbase/downloader/depend/o$a;
.super Landroid/os/Binder;
.source "IDownloadDiskSpaceAidlCallback.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/depend/o$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/depend/o$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/o;
    .registers 3

    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/o;

    if-eqz v1, :cond_13

    .line 38
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/o;

    return-object v0

    .line 40
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/depend/o$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/depend/o$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static b()Lcom/ss/android/socialbase/downloader/depend/o;
    .registers 1

    .line 113
    sget-object v0, Lcom/ss/android/socialbase/downloader/depend/o$a$a;->a:Lcom/ss/android/socialbase/downloader/depend/o;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    nop

    .line 49
    const/4 v0, 0x1

    const-string v1, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlCallback"

    sparse-switch p1, :sswitch_data_1a

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 53
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v0

    .line 58
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/depend/o$a;->a()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v0

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
