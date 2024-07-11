.class public abstract Lcom/bytedance/embedapplog/cl$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/cl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/cl$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/cl;
    .registers 3

    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_4
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/embedapplog/cl;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Lcom/bytedance/embedapplog/cl;

    return-object v0

    .line 36
    :cond_13
    new-instance v0, Lcom/bytedance/embedapplog/cl$a$a;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/cl$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    .line 46
    nop

    .line 47
    const/4 v0, 0x1

    const-string v1, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    sparse-switch p1, :sswitch_data_2c

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 49
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v0

    .line 60
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/cl$a;->b()Z

    move-result p1

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return v0

    .line 53
    :sswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/cl$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v0

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
