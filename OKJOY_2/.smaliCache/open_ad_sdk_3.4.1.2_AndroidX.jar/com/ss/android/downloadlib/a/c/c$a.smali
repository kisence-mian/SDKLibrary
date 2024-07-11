.class public abstract Lcom/ss/android/downloadlib/a/c/c$a;
.super Landroid/os/Binder;
.source "IAidlService.java"

# interfaces
.implements Lcom/ss/android/downloadlib/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a/c/c$a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/ss/android/downloadlib/a/c/c$a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/downloadlib/a/c/c;
    .registers 3

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_4
    sget-object v0, Lcom/ss/android/downloadlib/a/c/c$a;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/ss/android/downloadlib/a/c/c;

    if-nez v1, :cond_11

    goto :goto_14

    .line 46
    :cond_11
    check-cast v0, Lcom/ss/android/downloadlib/a/c/c;

    return-object v0

    .line 44
    :cond_14
    :goto_14
    new-instance v0, Lcom/ss/android/downloadlib/a/c/c$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/a/c/c$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/ss/android/downloadlib/a/c/c$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 22
    sput-object p0, Lcom/ss/android/downloadlib/a/c/c$a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_32

    .line 52
    const/4 v1, 0x0

    .line 53
    packed-switch p1, :pswitch_data_38

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 55
    :pswitch_f
    sget-object p1, Lcom/ss/android/downloadlib/a/c/c$a;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_23

    .line 57
    sget-object p1, Lcom/ss/android/downloadlib/a/c/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ss/android/downloadlib/a/c/b;

    .line 59
    :cond_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/downloadlib/a/c/d$a;->a(Landroid/os/IBinder;)Lcom/ss/android/downloadlib/a/c/d;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/ss/android/downloadlib/a/c/c$a;->a(Lcom/ss/android/downloadlib/a/c/b;Lcom/ss/android/downloadlib/a/c/d;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v0

    .line 66
    :cond_32
    sget-object p1, Lcom/ss/android/downloadlib/a/c/c$a;->a:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method
