.class final Lcom/mintegral/msdk/base/controller/a$a$c;
.super Ljava/lang/Object;
.source "MTGSDKContext.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/controller/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/controller/a$a;

.field private b:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/controller/a$a;Landroid/os/IBinder;)V
    .registers 3

    .prologue
    .line 648
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/a$a$c;->a:Lcom/mintegral/msdk/base/controller/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object p2, p0, Lcom/mintegral/msdk/base/controller/a$a$c;->b:Landroid/os/IBinder;

    .line 650
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 659
    const/4 v0, 0x0

    .line 661
    :try_start_9
    const-string v1, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/a$a$c;->b:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 663
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 664
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1b} :catch_23
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2e

    move-result-object v0

    .line 668
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 669
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 671
    :goto_22
    return-object v0

    .line 666
    :catch_23
    move-exception v1

    :try_start_24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2e

    .line 668
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 669
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_22

    .line 668
    :catchall_2e
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 669
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a$a$c;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 679
    :try_start_a
    const-string v4, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 680
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    iget-object v4, p0, Lcom/mintegral/msdk/base/controller/a$a$c;->b:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 682
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 683
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_20} :catch_2c
    .catchall {:try_start_a .. :try_end_20} :catchall_38

    move-result v4

    if-eqz v4, :cond_2a

    .line 688
    :goto_23
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 689
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 691
    :goto_29
    return v0

    :cond_2a
    move v0, v1

    .line 683
    goto :goto_23

    .line 685
    :catch_2c
    move-exception v0

    :try_start_2d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_38

    .line 688
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 689
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    move v0, v1

    .line 690
    goto :goto_29

    .line 688
    :catchall_38
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 689
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
