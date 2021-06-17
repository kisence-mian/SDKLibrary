.class public Lcom/tapjoy/GCMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 58
    invoke-static {p1}, Lcom/tapjoy/internal/hd;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/hd;->a(Landroid/content/Intent;)Z

    move-result v0

    .line 59
    invoke-virtual {p0}, Lcom/tapjoy/GCMReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 60
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/tapjoy/GCMReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 61
    if-eqz v0, :cond_18

    .line 63
    invoke-virtual {p0}, Lcom/tapjoy/GCMReceiver;->abortBroadcast()V

    .line 66
    :cond_18
    return-void
.end method
