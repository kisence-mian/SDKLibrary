.class public abstract Lcom/kwai/filedownloader/e0/a$a;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/e0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/e0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/e0/a$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.kwai.filedownloader.i.IFileDownloadIPCCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/kwai/filedownloader/e0/a;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.kwai.filedownloader.i.IFileDownloadIPCCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/kwai/filedownloader/e0/a;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/kwai/filedownloader/e0/a;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/kwai/filedownloader/e0/a$a$a;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/e0/a$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v1, 0x1

    const-string v0, "com.kwai.filedownloader.i.IFileDownloadIPCCallback"

    if-eq p1, v1, :cond_14

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_e

    :cond_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/kwai/filedownloader/message/MessageSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/message/MessageSnapshot;

    :goto_25
    invoke-interface {p0, v0}, Lcom/kwai/filedownloader/e0/a;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    move v0, v1

    goto :goto_e

    :cond_2a
    const/4 v0, 0x0

    goto :goto_25
.end method
