.class public abstract Lcom/anythink/china/a/a/c$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/anythink/china/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/a/a/c$a$a;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field private static final c:Ljava/lang/String; = "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {p0, p0, v0}, Lcom/anythink/china/a/a/c$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/anythink/china/a/a/c;
    .registers 3

    .line 31
    if-nez p0, :cond_4

    .line 32
    const/4 p0, 0x0

    return-object p0

    .line 34
    :cond_4
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/anythink/china/a/a/c;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/anythink/china/a/a/c;

    return-object v0

    :cond_13
    new-instance v0, Lcom/anythink/china/a/a/c$a$a;

    invoke-direct {v0, p0}, Lcom/anythink/china/a/a/c$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    .line 44
    const/4 v0, 0x1

    const-string v1, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    sparse-switch p1, :sswitch_data_2c

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 58
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v0

    .line 52
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/anythink/china/a/a/c$a;->b()Z

    move-result p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return v0

    .line 46
    :sswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/anythink/china/a/a/c$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
