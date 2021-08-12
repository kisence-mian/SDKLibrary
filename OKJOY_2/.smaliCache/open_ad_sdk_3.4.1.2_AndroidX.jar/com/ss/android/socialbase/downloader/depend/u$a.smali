.class public abstract Lcom/ss/android/socialbase/downloader/depend/u$a;
.super Landroid/os/Binder;
.source "IDownloadForbiddenAidlCallback.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/depend/u$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/depend/u$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/u;
    .registers 3

    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/u;

    if-eqz v1, :cond_13

    .line 42
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/u;

    return-object v0

    .line 44
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/depend/u$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/depend/u$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static b()Lcom/ss/android/socialbase/downloader/depend/u;
    .registers 1

    .line 149
    sget-object v0, Lcom/ss/android/socialbase/downloader/depend/u$a$a;->a:Lcom/ss/android/socialbase/downloader/depend/u;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    nop

    .line 53
    const/4 v0, 0x1

    const-string v1, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback"

    sparse-switch p1, :sswitch_data_2c

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 57
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return v0

    .line 71
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/depend/u$a;->a()Z

    move-result p1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return v0

    .line 62
    :sswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/u$a;->a(Ljava/util/List;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    return v0

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
