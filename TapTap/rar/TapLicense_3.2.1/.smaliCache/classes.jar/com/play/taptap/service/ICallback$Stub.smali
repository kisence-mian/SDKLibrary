.class public abstract Lcom/play/taptap/service/ICallback$Stub;
.super Landroid/os/Binder;
.source "ICallback.java"

# interfaces
.implements Lcom/play/taptap/service/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/play/taptap/service/ICallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/play/taptap/service/ICallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.play.taptap.service.ICallback"

.field static final TRANSACTION_onResultBack:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.play.taptap.service.ICallback"

    invoke-virtual {p0, p0, v0}, Lcom/play/taptap/service/ICallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/play/taptap/service/ICallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_4
    const-string v0, "com.play.taptap.service.ICallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/play/taptap/service/ICallback;

    if-eqz v1, :cond_14

    .line 38
    move-object v1, v0

    check-cast v1, Lcom/play/taptap/service/ICallback;

    return-object v1

    .line 40
    :cond_14
    new-instance v1, Lcom/play/taptap/service/ICallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/play/taptap/service/ICallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/play/taptap/service/ICallback;
    .registers 1

    .line 122
    sget-object v0, Lcom/play/taptap/service/ICallback$Stub$Proxy;->sDefaultImpl:Lcom/play/taptap/service/ICallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/play/taptap/service/ICallback;)Z
    .registers 3
    .param p0, "impl"    # Lcom/play/taptap/service/ICallback;

    .line 112
    sget-object v0, Lcom/play/taptap/service/ICallback$Stub$Proxy;->sDefaultImpl:Lcom/play/taptap/service/ICallback;

    if-nez v0, :cond_c

    .line 115
    if-eqz p0, :cond_a

    .line 116
    sput-object p0, Lcom/play/taptap/service/ICallback$Stub$Proxy;->sDefaultImpl:Lcom/play/taptap/service/ICallback;

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-string v0, "com.play.taptap.service.ICallback"

    .line 49
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_1e

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 53
    :sswitch_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v1

    .line 58
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/play/taptap/service/ICallback$Stub;->onResultBack(I)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v1

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
