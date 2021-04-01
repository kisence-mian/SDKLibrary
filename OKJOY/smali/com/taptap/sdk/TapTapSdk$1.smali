.class final Lcom/taptap/sdk/TapTapSdk$1;
.super Landroid/content/BroadcastReceiver;
.source "TapTapSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/TapTapSdk;->openTapTapForum(Landroid/app/Activity;Lcom/taptap/sdk/TapTapSdk$Config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;


# direct methods
.method constructor <init>(Landroid/support/v4/content/LocalBroadcastManager;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/taptap/sdk/TapTapSdk$1;->val$localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1b

    # getter for: Lcom/taptap/sdk/TapTapSdk;->tapTapSdkListener:Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;
    invoke-static {}, Lcom/taptap/sdk/TapTapSdk;->access$000()Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 75
    const-string v1, "appear.forum.taptap.action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 76
    # getter for: Lcom/taptap/sdk/TapTapSdk;->tapTapSdkListener:Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;
    invoke-static {}, Lcom/taptap/sdk/TapTapSdk;->access$000()Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;->onForumAppear()V

    .line 83
    :cond_1b
    :goto_1b
    return-void

    .line 77
    :cond_1c
    const-string v1, "disappear.forum.taptap.action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 78
    # getter for: Lcom/taptap/sdk/TapTapSdk;->tapTapSdkListener:Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;
    invoke-static {}, Lcom/taptap/sdk/TapTapSdk;->access$000()Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;->onForumDisappear()V

    .line 79
    iget-object v1, p0, Lcom/taptap/sdk/TapTapSdk$1;->val$localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    # getter for: Lcom/taptap/sdk/TapTapSdk;->broadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {}, Lcom/taptap/sdk/TapTapSdk;->access$100()Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    const/4 v1, 0x0

    # setter for: Lcom/taptap/sdk/TapTapSdk;->broadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/taptap/sdk/TapTapSdk;->access$102(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_1b
.end method
