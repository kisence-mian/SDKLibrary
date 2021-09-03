.class Lcom/tapsdk/bootstrap/TapBootstrapImpl$4;
.super Ljava/lang/Object;
.source "TapBootstrapImpl.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/bootstrap/TapBootstrapImpl;->initTrackerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/functions/Action1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/bootstrap/TapBootstrapImpl;


# direct methods
.method constructor <init>(Lcom/tapsdk/bootstrap/TapBootstrapImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/bootstrap/TapBootstrapImpl;

    .line 339
    iput-object p1, p0, Lcom/tapsdk/bootstrap/TapBootstrapImpl$4;->this$0:Lcom/tapsdk/bootstrap/TapBootstrapImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "event"    # Ljava/lang/Object;

    .line 342
    instance-of v0, p1, Lcom/taptap/sdk/tracker/event/AuthorizationOpenEvent;

    if-eqz v0, :cond_b

    .line 343
    move-object v0, p1

    check-cast v0, Lcom/taptap/sdk/tracker/event/AuthorizationOpenEvent;

    invoke-static {v0}, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->authorizationOpen(Lcom/taptap/sdk/tracker/event/AuthorizationOpenEvent;)V

    goto :goto_25

    .line 344
    :cond_b
    instance-of v0, p1, Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;

    if-eqz v0, :cond_16

    .line 345
    move-object v0, p1

    check-cast v0, Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;

    invoke-static {v0}, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->authorizationBack(Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;)V

    goto :goto_25

    .line 346
    :cond_16
    instance-of v0, p1, Lcom/taptap/sdk/tracker/event/AuthorizationTokenEvent;

    if-eqz v0, :cond_1e

    .line 347
    invoke-static {}, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->authorizationToken()V

    goto :goto_25

    .line 348
    :cond_1e
    instance-of v0, p1, Lcom/taptap/sdk/tracker/event/AuthorizationProfileEvent;

    if-eqz v0, :cond_25

    .line 349
    invoke-static {}, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->authorizationProfile()V

    .line 351
    :cond_25
    :goto_25
    return-void
.end method
