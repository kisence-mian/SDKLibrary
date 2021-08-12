.class public abstract Lcom/ss/android/socialbase/downloader/depend/aa$a;
.super Landroid/os/Binder;
.source "IDownloadNotificationEventAidlListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/depend/aa$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/depend/aa$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/aa;
    .registers 3

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/aa;

    if-eqz v1, :cond_13

    .line 46
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/aa;

    return-object v0

    .line 48
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/depend/aa$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/depend/aa$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static b()Lcom/ss/android/socialbase/downloader/depend/aa;
    .registers 1

    .line 205
    sget-object v0, Lcom/ss/android/socialbase/downloader/depend/aa$a$a;->a:Lcom/ss/android/socialbase/downloader/depend/aa;

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

    const-string v1, "com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener"

    sparse-switch p1, :sswitch_data_5c

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 61
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v0

    .line 96
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/depend/aa$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v0

    .line 86
    :sswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_29

    move p1, v0

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    .line 89
    :goto_2a
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/aa$a;->a(Z)Z

    move-result p1

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return v0

    .line 66
    :sswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4b

    .line 71
    sget-object p4, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_4c

    .line 74
    :cond_4b
    const/4 p4, 0x0

    .line 77
    :goto_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 80
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/ss/android/socialbase/downloader/depend/aa$a;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v0

    nop

    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_35
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
