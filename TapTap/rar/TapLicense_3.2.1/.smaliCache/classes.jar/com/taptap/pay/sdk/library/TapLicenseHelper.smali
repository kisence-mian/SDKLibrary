.class public Lcom/taptap/pay/sdk/library/TapLicenseHelper;
.super Ljava/lang/Object;
.source "TapLicenseHelper.java"


# static fields
.field private static volatile instance:Lcom/taptap/pay/sdk/library/TapLicenseHelper;


# instance fields
.field protected checkOnce:Z

.field protected inventoryCallback:Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

.field protected licenseCallback:Lcom/taptap/pay/sdk/library/TapLicenseCallback;

.field protected publicKey:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static check(Landroid/app/Activity;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 43
    if-eqz p0, :cond_9

    .line 44
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->startHelperFragment(Landroid/app/Activity;)Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;

    move-result-object v0

    .line 45
    .local v0, "fragment":Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;
    invoke-virtual {v0, p0}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->check(Landroid/app/Activity;)V

    .line 51
    .end local v0    # "fragment":Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;
    :cond_9
    return-void
.end method

.method static getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;
    .registers 1

    .line 18
    sget-object v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->instance:Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    invoke-direct {v0}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;-><init>()V

    sput-object v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->instance:Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    .line 21
    :cond_b
    sget-object v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->instance:Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    return-object v0
.end method

.method public static purchaseDLC(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dlc"    # Ljava/lang/String;

    .line 65
    if-eqz p0, :cond_9

    .line 66
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->startHelperFragment(Landroid/app/Activity;)Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;

    move-result-object v0

    .line 67
    .local v0, "fragment":Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;
    invoke-virtual {v0, p1}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->purchase(Ljava/lang/String;)V

    .line 73
    .end local v0    # "fragment":Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;
    :cond_9
    return-void
.end method

.method public static varargs queryDLC(Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dlcList"    # [Ljava/lang/String;

    .line 54
    if-eqz p0, :cond_9

    .line 55
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->startHelperFragment(Landroid/app/Activity;)Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;

    move-result-object v0

    .line 56
    .local v0, "fragment":Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;
    invoke-virtual {v0, p1}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->query([Ljava/lang/String;)V

    .line 62
    .end local v0    # "fragment":Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;
    :cond_9
    return-void
.end method

.method public static setDLCCallback(Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;)V
    .registers 3
    .param p0, "callback"    # Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->setDLCCallback(ZLjava/lang/String;Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;)V

    .line 33
    return-void
.end method

.method public static setDLCCallback(ZLjava/lang/String;Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;)V
    .registers 4
    .param p0, "checkOnce"    # Z
    .param p1, "publicKey"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    .line 37
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v0

    iput-boolean p0, v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->checkOnce:Z

    .line 38
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v0

    iput-object p1, v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->publicKey:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v0

    iput-object p2, v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->inventoryCallback:Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    .line 40
    return-void
.end method

.method public static setLicenseCallback(Lcom/taptap/pay/sdk/library/TapLicenseCallback;)V
    .registers 2
    .param p0, "callback"    # Lcom/taptap/pay/sdk/library/TapLicenseCallback;

    .line 28
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v0

    iput-object p0, v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->licenseCallback:Lcom/taptap/pay/sdk/library/TapLicenseCallback;

    .line 29
    return-void
.end method
