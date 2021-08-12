.class public abstract Lcom/ss/android/socialbase/downloader/depend/ag$a;
.super Landroid/os/Binder;
.source "INotificationClickAidlCallback.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/depend/ag$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/depend/ag$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/depend/ag;
    .registers 1

    .line 225
    sget-object v0, Lcom/ss/android/socialbase/downloader/depend/ag$a$a;->a:Lcom/ss/android/socialbase/downloader/depend/ag;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/ag;
    .registers 3

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/ag;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/ag;

    return-object v0

    .line 49
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/depend/ag$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/depend/ag$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    nop

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.ss.android.socialbase.downloader.depend.INotificationClickAidlCallback"

    sparse-switch p1, :sswitch_data_6e

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 62
    :sswitch_d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v1

    .line 97
    :sswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_24

    .line 100
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_25

    .line 103
    :cond_24
    nop

    .line 105
    :goto_25
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/depend/ag$a;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return v1

    .line 82
    :sswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_43

    .line 85
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_44

    .line 88
    :cond_43
    nop

    .line 90
    :goto_44
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/depend/ag$a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return v1

    .line 67
    :sswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_62

    .line 70
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_63

    .line 73
    :cond_62
    nop

    .line 75
    :goto_63
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/depend/ag$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return v1

    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_4f
        0x2 -> :sswitch_30
        0x3 -> :sswitch_11
        0x5f4e5446 -> :sswitch_d
    .end sparse-switch
.end method
