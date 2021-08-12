.class public abstract Lcom/ss/android/downloadlib/a/c/d$a;
.super Landroid/os/Binder;
.source "ICallback.java"

# interfaces
.implements Lcom/ss/android/downloadlib/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a/c/d$a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/ss/android/downloadlib/a/c/d$a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/downloadlib/a/c/d;
    .registers 3

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_4
    sget-object v0, Lcom/ss/android/downloadlib/a/c/d$a;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/ss/android/downloadlib/a/c/d;

    if-nez v1, :cond_11

    goto :goto_14

    .line 46
    :cond_11
    check-cast v0, Lcom/ss/android/downloadlib/a/c/d;

    return-object v0

    .line 44
    :cond_14
    :goto_14
    new-instance v0, Lcom/ss/android/downloadlib/a/c/d$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/a/c/d$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 21
    sget-object v0, Lcom/ss/android/downloadlib/a/c/d$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 21
    sput-object p0, Lcom/ss/android/downloadlib/a/c/d$a;->a:Ljava/lang/String;

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

    .line 50
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 51
    sget-object p1, Lcom/ss/android/downloadlib/a/c/d$a;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_17

    sget-object p1, Lcom/ss/android/downloadlib/a/c/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/a/c/b;

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a/c/d$a;->a(Lcom/ss/android/downloadlib/a/c/b;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v0

    .line 55
    :cond_1f
    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_29

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 58
    :cond_29
    sget-object p1, Lcom/ss/android/downloadlib/a/c/d$a;->a:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v0
.end method
