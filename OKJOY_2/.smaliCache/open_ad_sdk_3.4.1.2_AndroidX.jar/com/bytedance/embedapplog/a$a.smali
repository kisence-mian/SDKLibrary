.class public abstract Lcom/bytedance/embedapplog/a$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/a$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/a;
    .registers 3

    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_4
    const-string v0, "com.bun.lib.MsaIdInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/embedapplog/a;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/bytedance/embedapplog/a;

    return-object v0

    .line 33
    :cond_13
    new-instance v0, Lcom/bytedance/embedapplog/a$a$a;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    .line 41
    const/4 v0, 0x1

    const-string v1, "com.bun.lib.MsaIdInterface"

    sparse-switch p1, :sswitch_data_60

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 45
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v0

    .line 90
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a$a;->f()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    return v0

    .line 82
    :sswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a$a;->e()Z

    move-result p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v0

    .line 74
    :sswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a$a;->d()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return v0

    .line 66
    :sswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a$a;->c()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return v0

    .line 58
    :sswitch_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a$a;->b()Z

    move-result p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return v0

    .line 50
    :sswitch_51
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v0

    nop

    :sswitch_data_60
    .sparse-switch
        0x1 -> :sswitch_51
        0x2 -> :sswitch_43
        0x3 -> :sswitch_35
        0x4 -> :sswitch_27
        0x5 -> :sswitch_19
        0x6 -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
