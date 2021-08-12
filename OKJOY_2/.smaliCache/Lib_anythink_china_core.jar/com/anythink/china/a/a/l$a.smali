.class public final Lcom/anythink/china/a/a/l$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/a/a/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/a/l;
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/anythink/china/a/a/l$a;->a:Landroid/os/IBinder;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 6

    .line 31
    nop

    .line 32
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 33
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 36
    :try_start_9
    const-string v2, "com.zui.deviceidservice.IDeviceidInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/anythink/china/a/a/l$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_27
    .catchall {:try_start_9 .. :try_end_1c} :catchall_25

    .line 40
    nop

    .line 41
    nop

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    return-object v2

    .line 45
    :catchall_25
    move-exception v2

    goto :goto_34

    .line 43
    :catch_27
    move-exception v2

    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    nop

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 45
    :goto_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    throw v2
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 6

    .line 53
    nop

    .line 54
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 55
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 58
    :try_start_9
    const-string v2, "com.zui.deviceidservice.IDeviceidInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/anythink/china/a/a/l$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 60
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 61
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_27
    .catchall {:try_start_9 .. :try_end_1c} :catchall_25

    .line 62
    nop

    .line 63
    nop

    .line 67
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 68
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    return-object v2

    .line 67
    :catchall_25
    move-exception v2

    goto :goto_34

    .line 65
    :catch_27
    move-exception v2

    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    .line 67
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 68
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 69
    nop

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 67
    :goto_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 68
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 69
    throw v2
.end method
