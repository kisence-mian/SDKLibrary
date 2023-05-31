.class public abstract Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/samsung/android/deviceidservice/IDeviceIdService;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/deviceidservice/IDeviceIdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static native a(Landroid/os/IBinder;)Lcom/samsung/android/deviceidservice/IDeviceIdService;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native asBinder()Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
