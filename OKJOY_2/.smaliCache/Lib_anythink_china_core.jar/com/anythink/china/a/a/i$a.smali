.class public final Lcom/anythink/china/a/a/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/a/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/anythink/china/a/a/i$a;->a:Landroid/os/IBinder;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 6

    .line 27
    nop

    .line 28
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 29
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 32
    :try_start_9
    const-string v2, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Lcom/anythink/china/a/a/i$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1d

    .line 40
    goto :goto_28

    .line 36
    :catchall_1d
    move-exception v2

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    .line 42
    :goto_28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    return-object v2
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/anythink/china/a/a/i$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
