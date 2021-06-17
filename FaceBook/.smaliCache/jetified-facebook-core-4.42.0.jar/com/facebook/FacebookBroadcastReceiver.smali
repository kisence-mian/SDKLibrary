.class public Lcom/facebook/FacebookBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FacebookBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailedAppCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "appCallId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 74
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 41
    const-string v0, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "appCallId":Ljava/lang/String;
    const-string v1, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "action":Ljava/lang/String;
    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 46
    .local v2, "extras":Landroid/os/Bundle;
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->isErrorResult(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 47
    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/FacebookBroadcastReceiver;->onFailedAppCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_21

    .line 49
    :cond_1e
    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/FacebookBroadcastReceiver;->onSuccessfulAppCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 52
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_21
    :goto_21
    return-void
.end method

.method protected onSuccessfulAppCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "appCallId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 63
    return-void
.end method
