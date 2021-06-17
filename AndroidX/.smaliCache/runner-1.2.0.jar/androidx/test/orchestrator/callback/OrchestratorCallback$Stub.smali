.class public abstract Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub;
.super Landroidx/test/runner/internal/deps/aidl/BaseStub;
.source "OrchestratorCallback.java"

# interfaces
.implements Landroidx/test/orchestrator/callback/OrchestratorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/orchestrator/callback/OrchestratorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidx.test.orchestrator.callback.OrchestratorCallback"

.field static final TRANSACTION_addTest:I = 0x1

.field static final TRANSACTION_sendTestNotification:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    const-string v0, "androidx.test.orchestrator.callback.OrchestratorCallback"

    invoke-direct {p0, v0}, Landroidx/test/runner/internal/deps/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/test/orchestrator/callback/OrchestratorCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "androidx.test.orchestrator.callback.OrchestratorCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    instance-of v1, v0, Landroidx/test/orchestrator/callback/OrchestratorCallback;

    if-eqz v1, :cond_12

    .line 52
    move-object v1, v0

    check-cast v1, Landroidx/test/orchestrator/callback/OrchestratorCallback;

    return-object v1

    .line 54
    :cond_12
    new-instance v1, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    packed-switch p1, :pswitch_data_1e

    .line 72
    const/4 v0, 0x0

    return v0

    .line 67
    :pswitch_5
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Landroidx/test/runner/internal/deps/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 68
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub;->sendTestNotification(Landroid/os/Bundle;)V

    .line 69
    goto :goto_19

    .line 62
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "test":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub;->addTest(Ljava/lang/String;)V

    .line 64
    nop

    .line 75
    .end local v0    # "test":Ljava/lang/String;
    :goto_19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/4 v0, 0x1

    return v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_11
        :pswitch_5
    .end packed-switch
.end method
