.class public Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;
.super Ljava/lang/Object;
.source "TapLicenseServiceImpl.java"

# interfaces
.implements Lcom/taptap/pay/sdk/library/wrapper/TapLicenseService;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private logger:Lcom/tds/common/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "license_log"

    invoke-static {v0}, Lcom/tds/common/log/Logger;->get(Ljava/lang/String;)Lcom/tds/common/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->logger:Lcom/tds/common/log/Logger;

    return-void
.end method


# virtual methods
.method public check(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 95
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "check"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->check(Landroid/app/Activity;)V

    .line 97
    return-void
.end method

.method public purchaseDLC(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dlc"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "purchaseDLC"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p1, p2}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->purchaseDLC(Landroid/app/Activity;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public queryDLC(Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dlcList"    # [Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "queryDLC"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p1, p2}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->queryDLC(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setDLCCallback(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 46
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "setDLCCallback"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->setDLCCallbackWithParams(Lcom/tds/common/bridge/BridgeCallback;ZLjava/lang/String;)V

    .line 48
    return-void
.end method

.method public setDLCCallbackWithParams(Lcom/tds/common/bridge/BridgeCallback;ZLjava/lang/String;)V
    .registers 7
    .param p1, "callback"    # Lcom/tds/common/bridge/BridgeCallback;
    .param p2, "checkOnce"    # Z
    .param p3, "publicKey"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "setDLCCallbackWithParams"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 54
    const/4 p3, 0x0

    .line 56
    :cond_10
    new-instance v0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl$2;-><init>(Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-static {p2, p3, v0}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->setDLCCallback(ZLjava/lang/String;Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;)V

    .line 91
    return-void
.end method

.method public setLicenseCallback(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 29
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "setLicenseCallback"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl$1;-><init>(Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-static {v0}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->setLicenseCallback(Lcom/taptap/pay/sdk/library/TapLicenseCallback;)V

    .line 42
    return-void
.end method
