.class Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProfileTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ProfileTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ProfileTracker;


# direct methods
.method private constructor <init>(Lcom/facebook/ProfileTracker;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;->this$0:Lcom/facebook/ProfileTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ProfileTracker;Lcom/facebook/ProfileTracker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/ProfileTracker;
    .param p2, "x1"    # Lcom/facebook/ProfileTracker$1;

    .line 95
    invoke-direct {p0, p1}, Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;-><init>(Lcom/facebook/ProfileTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 100
    const-string v0, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/Profile;

    .line 101
    .local v0, "oldProfile":Lcom/facebook/Profile;
    const-string v1, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/Profile;

    .line 103
    .local v1, "newProfile":Lcom/facebook/Profile;
    iget-object v2, p0, Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;->this$0:Lcom/facebook/ProfileTracker;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ProfileTracker;->onCurrentProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    .line 105
    .end local v0    # "oldProfile":Lcom/facebook/Profile;
    .end local v1    # "newProfile":Lcom/facebook/Profile;
    :cond_21
    return-void
.end method
