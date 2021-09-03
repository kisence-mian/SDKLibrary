.class Lcom/tapsdk/bootstrap/account/TDSUser$3;
.super Lcn/leancloud/livequery/LCLiveQueryEventHandler;
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

.field final synthetic val$notify:Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;


# direct methods
.method constructor <init>(Lcom/tapsdk/bootstrap/account/TDSUser;Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/bootstrap/account/TDSUser;

    .line 626
    iput-object p1, p0, Lcom/tapsdk/bootstrap/account/TDSUser$3;->this$0:Lcom/tapsdk/bootstrap/account/TDSUser;

    iput-object p2, p0, Lcom/tapsdk/bootstrap/account/TDSUser$3;->val$notify:Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;

    invoke-direct {p0}, Lcn/leancloud/livequery/LCLiveQueryEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onObjectCreated(Lcn/leancloud/LCObject;)V
    .registers 5
    .param p1, "object"    # Lcn/leancloud/LCObject;

    .line 628
    if-eqz p1, :cond_2a

    instance-of v0, p1, Lcn/leancloud/LCFriendshipRequest;

    if-nez v0, :cond_7

    goto :goto_2a

    .line 631
    :cond_7
    move-object v0, p1

    check-cast v0, Lcn/leancloud/LCFriendshipRequest;

    .line 632
    .local v0, "friendshipRequest":Lcn/leancloud/LCFriendshipRequest;
    invoke-virtual {v0}, Lcn/leancloud/LCFriendshipRequest;->getFriend()Lcn/leancloud/LCUser;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 633
    invoke-virtual {v0}, Lcn/leancloud/LCFriendshipRequest;->getFriend()Lcn/leancloud/LCUser;

    move-result-object v1

    invoke-virtual {v1}, Lcn/leancloud/LCUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tapsdk/bootstrap/account/TDSUser$3;->this$0:Lcom/tapsdk/bootstrap/account/TDSUser;

    invoke-virtual {v2}, Lcom/tapsdk/bootstrap/account/TDSUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 635
    iget-object v1, p0, Lcom/tapsdk/bootstrap/account/TDSUser$3;->val$notify:Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;

    invoke-interface {v1, v0}, Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;->onNewRequestComing(Lcn/leancloud/LCFriendshipRequest;)V

    .line 637
    :cond_29
    return-void

    .line 629
    .end local v0    # "friendshipRequest":Lcn/leancloud/LCFriendshipRequest;
    :cond_2a
    :goto_2a
    return-void
.end method

.method public onObjectUpdated(Lcn/leancloud/LCObject;Ljava/util/List;)V
    .registers 7
    .param p1, "object"    # Lcn/leancloud/LCObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/leancloud/LCObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 640
    .local p2, "updateKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_50

    instance-of v0, p1, Lcn/leancloud/LCFriendshipRequest;

    if-nez v0, :cond_7

    goto :goto_50

    .line 643
    :cond_7
    if-eqz p2, :cond_4f

    const-string v0, "status"

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_4f

    .line 646
    :cond_12
    move-object v1, p1

    check-cast v1, Lcn/leancloud/LCFriendshipRequest;

    .line 647
    .local v1, "friendshipRequest":Lcn/leancloud/LCFriendshipRequest;
    invoke-virtual {v1}, Lcn/leancloud/LCFriendshipRequest;->getSourceUser()Lcn/leancloud/LCUser;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 648
    invoke-virtual {v1}, Lcn/leancloud/LCFriendshipRequest;->getSourceUser()Lcn/leancloud/LCUser;

    move-result-object v2

    invoke-virtual {v2}, Lcn/leancloud/LCUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tapsdk/bootstrap/account/TDSUser$3;->this$0:Lcom/tapsdk/bootstrap/account/TDSUser;

    invoke-virtual {v3}, Lcom/tapsdk/bootstrap/account/TDSUser;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 650
    invoke-virtual {v1, v0}, Lcn/leancloud/LCFriendshipRequest;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "requestStatus":Ljava/lang/String;
    const-string v2, "accepted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 653
    iget-object v2, p0, Lcom/tapsdk/bootstrap/account/TDSUser$3;->val$notify:Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;

    invoke-interface {v2, v1}, Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;->onRequestAccepted(Lcn/leancloud/LCFriendshipRequest;)V

    goto :goto_4e

    .line 654
    :cond_41
    const-string v2, "declined"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 656
    iget-object v2, p0, Lcom/tapsdk/bootstrap/account/TDSUser$3;->val$notify:Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;

    invoke-interface {v2, v1}, Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;->onRequestDeclined(Lcn/leancloud/LCFriendshipRequest;)V

    .line 659
    .end local v0    # "requestStatus":Ljava/lang/String;
    :cond_4e
    :goto_4e
    return-void

    .line 644
    .end local v1    # "friendshipRequest":Lcn/leancloud/LCFriendshipRequest;
    :cond_4f
    :goto_4f
    return-void

    .line 641
    :cond_50
    :goto_50
    return-void
.end method
