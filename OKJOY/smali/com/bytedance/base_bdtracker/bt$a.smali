.class public abstract Lcom/bytedance/base_bdtracker/bt$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/base_bdtracker/bt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/base_bdtracker/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/base_bdtracker/bt$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/bytedance/base_bdtracker/bt;
    .registers 3

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/base_bdtracker/bt;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/bytedance/base_bdtracker/bt;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/bytedance/base_bdtracker/bt$a$a;

    invoke-direct {v0, p0}, Lcom/bytedance/base_bdtracker/bt$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_34

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 43
    :sswitch_9
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :sswitch_f
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/base_bdtracker/bt$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 56
    :sswitch_1f
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/bytedance/base_bdtracker/bt$a;->b()Z

    move-result v0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v0, :cond_32

    move v0, v1

    :goto_2e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_32
    const/4 v0, 0x0

    goto :goto_2e

    .line 39
    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
