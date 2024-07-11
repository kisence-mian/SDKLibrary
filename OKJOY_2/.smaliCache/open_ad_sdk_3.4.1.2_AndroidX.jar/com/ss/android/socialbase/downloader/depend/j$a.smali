.class public abstract Lcom/ss/android/socialbase/downloader/depend/j$a;
.super Landroid/os/Binder;
.source "IDownloadAidlMonitorDepend.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/depend/j$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/depend/j$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/j;
    .registers 3

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/j;

    if-eqz v1, :cond_13

    .line 46
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/j;

    return-object v0

    .line 48
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/depend/j$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/depend/j$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static c()Lcom/ss/android/socialbase/downloader/depend/j;
    .registers 1

    .line 182
    sget-object v0, Lcom/ss/android/socialbase/downloader/depend/j$a$a;->a:Lcom/ss/android/socialbase/downloader/depend/j;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    nop

    .line 57
    const/4 v0, 0x1

    const-string v1, "com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend"

    sparse-switch p1, :sswitch_data_3a

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 61
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v0

    .line 83
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/depend/j$a;->b()[I

    move-result-object p1

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 87
    return v0

    .line 75
    :sswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/depend/j$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v0

    .line 66
    :sswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/j$a;->a(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v0

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
