.class public interface abstract Lcom/tapsdk/bootstrap/account/TDSUser$FriendshipNotification;
.super Ljava/lang/Object;
.source "TDSUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/bootstrap/account/TDSUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FriendshipNotification"
.end annotation


# virtual methods
.method public abstract onNewRequestComing(Lcn/leancloud/LCFriendshipRequest;)V
.end method

.method public abstract onRequestAccepted(Lcn/leancloud/LCFriendshipRequest;)V
.end method

.method public abstract onRequestDeclined(Lcn/leancloud/LCFriendshipRequest;)V
.end method
