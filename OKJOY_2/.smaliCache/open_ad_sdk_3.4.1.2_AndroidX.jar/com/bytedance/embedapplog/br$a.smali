.class public abstract Lcom/bytedance/embedapplog/br$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/br;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/br$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/br;
    .registers 3

    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_4
    const-string v0, "com.heytap.openid.IOpenID"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/embedapplog/br;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/bytedance/embedapplog/br;

    return-object v0

    .line 32
    :cond_13
    new-instance v0, Lcom/bytedance/embedapplog/br$a$a;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/br$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    .line 40
    const/4 v0, 0x1

    const-string v1, "com.heytap.openid.IOpenID"

    sparse-switch p1, :sswitch_data_2a

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 44
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v0

    .line 49
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-virtual {p0, p1, p4, p2}, Lcom/bytedance/embedapplog/br$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v0

    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
