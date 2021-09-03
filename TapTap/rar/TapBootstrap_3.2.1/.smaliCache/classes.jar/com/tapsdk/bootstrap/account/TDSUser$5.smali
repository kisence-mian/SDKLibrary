.class Lcom/tapsdk/bootstrap/account/TDSUser$5;
.super Lcn/leancloud/livequery/LCLiveQueryEventHandler;
.source "TDSUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/bootstrap/account/TDSUser;->unregisterFriendshipNotification(Lcn/leancloud/callback/LCCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/bootstrap/account/TDSUser;


# direct methods
.method constructor <init>(Lcom/tapsdk/bootstrap/account/TDSUser;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/bootstrap/account/TDSUser;

    .line 677
    iput-object p1, p0, Lcom/tapsdk/bootstrap/account/TDSUser$5;->this$0:Lcom/tapsdk/bootstrap/account/TDSUser;

    invoke-direct {p0}, Lcn/leancloud/livequery/LCLiveQueryEventHandler;-><init>()V

    return-void
.end method
