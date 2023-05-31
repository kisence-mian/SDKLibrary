.class public abstract Lcom/ss/android/socialbase/downloader/d/f$a;
.super Landroid/os/Binder;
.source "IDownloadAidlDepend.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/d/f$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlDepend"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/d/f$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/d/f;
    .registers 3

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlDepend"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/d/f;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/ss/android/socialbase/downloader/d/f;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/d/f$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/d/f$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_44

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 42
    :sswitch_a
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlDepend"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    .line 43
    goto :goto_9

    .line 47
    :sswitch_11
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlDepend"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 50
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    move-object v1, v0

    .line 56
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    .line 57
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/e/a;

    .line 63
    :goto_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    invoke-virtual {p0, v1, v0, v2}, Lcom/ss/android/socialbase/downloader/d/f$a;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 66
    goto :goto_9

    :cond_3f
    move-object v1, v2

    .line 53
    goto :goto_25

    :cond_41
    move-object v0, v2

    .line 60
    goto :goto_33

    .line 38
    nop

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_11
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
