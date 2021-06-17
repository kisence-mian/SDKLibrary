.class Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessTokenTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentAccessTokenBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenTracker;


# direct methods
.method private constructor <init>(Lcom/facebook/AccessTokenTracker;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;->this$0:Lcom/facebook/AccessTokenTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/AccessTokenTracker;Lcom/facebook/AccessTokenTracker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/AccessTokenTracker;
    .param p2, "x1"    # Lcom/facebook/AccessTokenTracker$1;

    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;-><init>(Lcom/facebook/AccessTokenTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 104
    # getter for: Lcom/facebook/AccessTokenTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AccessTokenTracker;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessTokenChanged"

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    nop

    .line 107
    const-string v0, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/AccessToken;

    .line 108
    .local v0, "oldAccessToken":Lcom/facebook/AccessToken;
    nop

    .line 109
    const-string v1, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/AccessToken;

    .line 111
    .local v1, "newAccessToken":Lcom/facebook/AccessToken;
    iget-object v2, p0, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;->this$0:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/AccessTokenTracker;->onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    .line 113
    .end local v0    # "oldAccessToken":Lcom/facebook/AccessToken;
    .end local v1    # "newAccessToken":Lcom/facebook/AccessToken;
    :cond_2c
    return-void
.end method
