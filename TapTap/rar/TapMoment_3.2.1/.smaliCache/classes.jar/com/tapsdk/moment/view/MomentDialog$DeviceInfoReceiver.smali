.class Lcom/tapsdk/moment/view/MomentDialog$DeviceInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/view/MomentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceInfoReceiver"
.end annotation


# instance fields
.field private final mFragmentWeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tapsdk/moment/view/MomentDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tapsdk/moment/view/MomentDialog;)V
    .registers 3
    .param p1, "fragment"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 1253
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1254
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$DeviceInfoReceiver;->mFragmentWeRef:Ljava/lang/ref/WeakReference;

    .line 1255
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1259
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$DeviceInfoReceiver;->mFragmentWeRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/moment/view/MomentDialog;

    .line 1260
    .local v0, "fragment":Lcom/tapsdk/moment/view/MomentDialog;
    if-nez v0, :cond_b

    return-void

    .line 1261
    :cond_b
    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->onDeviceInfoDidChange()V
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$2200(Lcom/tapsdk/moment/view/MomentDialog;)V

    .line 1262
    return-void
.end method
