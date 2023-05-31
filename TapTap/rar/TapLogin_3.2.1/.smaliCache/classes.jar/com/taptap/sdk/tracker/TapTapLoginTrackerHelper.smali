.class public Lcom/taptap/sdk/tracker/TapTapLoginTrackerHelper;
.super Ljava/lang/Object;
.source "TapTapLoginTrackerHelper.java"


# static fields
.field private static authorizationType:Ljava/lang/String; = "not_defined"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authorizationBack()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/tds/common/reactor/RxBus;->getInstance()Lcom/tds/common/reactor/RxBus;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;

    sget-object v2, Lcom/taptap/sdk/tracker/TapTapLoginTrackerHelper;->authorizationType:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/RxBus;->send(Ljava/lang/Object;)V

    return-void
.end method

.method public static authorizationOpen(Ljava/lang/String;)V
    .registers 3

    .line 1
    sput-object p0, Lcom/taptap/sdk/tracker/TapTapLoginTrackerHelper;->authorizationType:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/tds/common/reactor/RxBus;->getInstance()Lcom/tds/common/reactor/RxBus;

    move-result-object p0

    new-instance v0, Lcom/taptap/sdk/tracker/event/AuthorizationOpenEvent;

    sget-object v1, Lcom/taptap/sdk/tracker/TapTapLoginTrackerHelper;->authorizationType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taptap/sdk/tracker/event/AuthorizationOpenEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/RxBus;->send(Ljava/lang/Object;)V

    return-void
.end method

.method public static authorizationProfile()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/tds/common/reactor/RxBus;->getInstance()Lcom/tds/common/reactor/RxBus;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/tracker/event/AuthorizationProfileEvent;

    invoke-direct {v1}, Lcom/taptap/sdk/tracker/event/AuthorizationProfileEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/RxBus;->send(Ljava/lang/Object;)V

    return-void
.end method

.method public static authorizationToken()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/tds/common/reactor/RxBus;->getInstance()Lcom/tds/common/reactor/RxBus;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/tracker/event/AuthorizationTokenEvent;

    invoke-direct {v1}, Lcom/taptap/sdk/tracker/event/AuthorizationTokenEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/RxBus;->send(Ljava/lang/Object;)V

    return-void
.end method
