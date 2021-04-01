.class public Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;
.super Lcom/mintegral/msdk/mtgjscommon/windvane/i;
.source "BannerJSPlugin.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/i;-><init>()V

    .line 20
    const-string v0, "BannerJSBridge"

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public click(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 76
    :try_start_0
    const-string v0, "BannerJSBridge"

    const-string v1, "click"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    if-eqz v0, :cond_10

    .line 78
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    invoke-interface {v0, p2}, Lcom/mintegral/msdk/mtgbanner/common/bridge/b;->a(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 83
    :cond_10
    :goto_10
    return-void

    .line 80
    :catch_11
    move-exception v0

    .line 81
    const-string v1, "BannerJSBridge"

    const-string v2, "click"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public init(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 65
    :try_start_0
    const-string v0, "BannerJSBridge"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    if-eqz v0, :cond_10

    .line 67
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/bridge/b;->b(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 72
    :cond_10
    :goto_10
    return-void

    .line 69
    :catch_11
    move-exception v0

    .line 70
    const-string v1, "BannerJSBridge"

    const-string v2, "init"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public initialize(Landroid/content/Context;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V
    .registers 6

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/i;->initialize(Landroid/content/Context;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V

    .line 29
    :try_start_3
    instance-of v0, p1, Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    if-eqz v0, :cond_c

    .line 30
    check-cast p1, Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    .line 39
    :cond_b
    :goto_b
    return-void

    .line 32
    :cond_c
    invoke-virtual {p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    if-eqz v0, :cond_b

    .line 33
    invoke-virtual {p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_23

    goto :goto_b

    .line 36
    :catch_23
    move-exception v0

    .line 37
    const-string v1, "BannerJSBridge"

    const-string v2, "initialize"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public onJSBridgeConnect(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 43
    :try_start_0
    const-string v0, "BannerJSBridge"

    const-string v1, "onJSBridgeConnect"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    if-eqz v0, :cond_10

    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/bridge/b;->a(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 50
    :cond_10
    :goto_10
    return-void

    .line 47
    :catch_11
    move-exception v0

    .line 48
    const-string v1, "BannerJSBridge"

    const-string v2, "onJSBridgeConnect"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public readyStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 54
    :try_start_0
    const-string v0, "BannerJSBridge"

    const-string v1, "readyStatus"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    if-eqz v0, :cond_10

    .line 56
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/mtgbanner/common/bridge/b;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 61
    :cond_10
    :goto_10
    return-void

    .line 58
    :catch_11
    move-exception v0

    .line 59
    const-string v1, "BannerJSBridge"

    const-string v2, "readyStatus"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public reportUrls(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 120
    :try_start_0
    const-string v0, "BannerJSBridge"

    const-string v1, "reportUrls"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    if-eqz v0, :cond_10

    .line 122
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/mtgbanner/common/bridge/b;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 127
    :cond_10
    :goto_10
    return-void

    .line 124
    :catch_11
    move-exception v0

    .line 125
    const-string v1, "BannerJSBridge"

    const-string v2, "reportUrls"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public sendImpressions(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 109
    :try_start_0
    const-string v0, "BannerJSBridge"

    const-string v1, "sendImpressions"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    if-eqz v0, :cond_10

    .line 111
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    invoke-interface {v0, p2}, Lcom/mintegral/msdk/mtgbanner/common/bridge/b;->c(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 116
    :cond_10
    :goto_10
    return-void

    .line 113
    :catch_11
    move-exception v0

    .line 114
    const-string v1, "BannerJSBridge"

    const-string v2, "sendImpressions"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 87
    :try_start_0
    const-string v0, "BannerJSBridge"

    const-string v1, "toggleCloseBtn"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    if-eqz v0, :cond_10

    .line 89
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    invoke-interface {v0, p2}, Lcom/mintegral/msdk/mtgbanner/common/bridge/b;->b(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 94
    :cond_10
    :goto_10
    return-void

    .line 91
    :catch_11
    move-exception v0

    .line 92
    const-string v1, "BannerJSBridge"

    const-string v2, "toggleCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 98
    :try_start_0
    const-string v0, "BannerJSBridge"

    const-string v1, "triggerCloseBtn"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    if-eqz v0, :cond_10

    .line 100
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerJSPlugin;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/b;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/mtgbanner/common/bridge/b;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 105
    :cond_10
    :goto_10
    return-void

    .line 102
    :catch_11
    move-exception v0

    .line 103
    const-string v1, "BannerJSBridge"

    const-string v2, "triggerCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method
