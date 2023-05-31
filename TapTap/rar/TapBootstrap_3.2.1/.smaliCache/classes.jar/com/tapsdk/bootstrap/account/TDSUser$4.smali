.class Lcom/tapsdk/bootstrap/account/TDSUser$4;
.super Lcn/leancloud/livequery/LCLiveQuerySubscribeCallback;
.source "TDSUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/bootstrap/account/TDSUser;->registerFriendshipNotification(Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;Lcn/leancloud/callback/LCCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/bootstrap/account/TDSUser;

.field final synthetic val$callback:Lcn/leancloud/callback/LCCallback;


# direct methods
.method constructor <init>(Lcom/tapsdk/bootstrap/account/TDSUser;Lcn/leancloud/callback/LCCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/bootstrap/account/TDSUser;

    .line 661
    iput-object p1, p0, Lcom/tapsdk/bootstrap/account/TDSUser$4;->this$0:Lcom/tapsdk/bootstrap/account/TDSUser;

    iput-object p2, p0, Lcom/tapsdk/bootstrap/account/TDSUser$4;->val$callback:Lcn/leancloud/callback/LCCallback;

    invoke-direct {p0}, Lcn/leancloud/livequery/LCLiveQuerySubscribeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcn/leancloud/LCException;)V
    .registers 3
    .param p1, "e"    # Lcn/leancloud/LCException;

    .line 664
    iget-object v0, p0, Lcom/tapsdk/bootstrap/account/TDSUser$4;->val$callback:Lcn/leancloud/callback/LCCallback;

    if-eqz v0, :cond_7

    .line 665
    invoke-virtual {v0, p1}, Lcn/leancloud/callback/LCCallback;->internalDone(Lcn/leancloud/LCException;)V

    .line 667
    :cond_7
    return-void
.end method
