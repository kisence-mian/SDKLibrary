.class Lcom/taptap/pay/sdk/library/TapTapLicense;
.super Ljava/lang/Object;
.source "TapTapLicense.java"


# static fields
.field static final ACTION_PAY_CHANGE:Ljava/lang/String; = "com.taptap.vending.billing.PURCHASES_UPDATED"

.field private static final TAG:Ljava/lang/String; = "TapTapLicense"

.field private static volatile instance:Lcom/taptap/pay/sdk/library/TapTapLicense;


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final alertDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

.field private cnIabService:Lcom/taptap/pay/sdk/library/IabService;

.field private dlcManager:Lcom/taptap/pay/sdk/library/DLCManager;

.field private fragment:Landroid/app/Fragment;

.field private globalIabService:Lcom/taptap/pay/sdk/library/IabService;

.field private licenseCallback:Lcom/taptap/pay/sdk/library/TapLicenseCallback;

.field private licenseManager:Lcom/taptap/pay/sdk/library/CheckLicenseManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Lcom/taptap/pay/sdk/library/TapTapLicense$5;

    invoke-direct {v0, p0}, Lcom/taptap/pay/sdk/library/TapTapLicense$5;-><init>(Lcom/taptap/pay/sdk/library/TapTapLicense;)V

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->alertDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    .line 38
    return-void
.end method

.method private _onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 238
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->dlcManager:Lcom/taptap/pay/sdk/library/DLCManager;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/DLCManager;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 239
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->dlcManager:Lcom/taptap/pay/sdk/library/DLCManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taptap/pay/sdk/library/DLCManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 241
    :cond_f
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->licenseManager:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_1e

    .line 242
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->licenseManager:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 244
    :cond_1e
    return-void
.end method

.method static synthetic access$000(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/IabService;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapTapLicense;

    .line 15
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->cnIabService:Lcom/taptap/pay/sdk/library/IabService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/IabService;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapTapLicense;

    .line 15
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->globalIabService:Lcom/taptap/pay/sdk/library/IabService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taptap/pay/sdk/library/TapTapLicense;)Ljava/lang/ref/WeakReference;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapTapLicense;

    .line 15
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapTapLicense;

    .line 15
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->alertDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/TapLicenseCallback;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapTapLicense;

    .line 15
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->licenseCallback:Lcom/taptap/pay/sdk/library/TapLicenseCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/CheckLicenseManager;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapTapLicense;

    .line 15
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->licenseManager:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/taptap/pay/sdk/library/TapTapLicense;Lcom/taptap/pay/sdk/library/CheckLicenseManager;)Lcom/taptap/pay/sdk/library/CheckLicenseManager;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapTapLicense;
    .param p1, "x1"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    .line 15
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->licenseManager:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    return-object p1
.end method

.method public static getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;
    .registers 1

    .line 31
    sget-object v0, Lcom/taptap/pay/sdk/library/TapTapLicense;->instance:Lcom/taptap/pay/sdk/library/TapTapLicense;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lcom/taptap/pay/sdk/library/TapTapLicense;

    invoke-direct {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;-><init>()V

    sput-object v0, Lcom/taptap/pay/sdk/library/TapTapLicense;->instance:Lcom/taptap/pay/sdk/library/TapTapLicense;

    .line 34
    :cond_b
    sget-object v0, Lcom/taptap/pay/sdk/library/TapTapLicense;->instance:Lcom/taptap/pay/sdk/library/TapTapLicense;

    return-object v0
.end method

.method static notifyLicenseSuccess(Ljava/lang/String;)V
    .registers 3
    .param p0, "logFrom"    # Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyLicenseSuccess | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapTapLicense"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Lcom/taptap/pay/sdk/library/UIHelper;->dismissDialog()V

    .line 142
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/pay/sdk/library/TapTapLicense;->licenseCallback:Lcom/taptap/pay/sdk/library/TapLicenseCallback;

    if-eqz v0, :cond_33

    .line 143
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/taptap/pay/sdk/library/TapTapLicense$4;

    invoke-direct {v1}, Lcom/taptap/pay/sdk/library/TapTapLicense$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 150
    :cond_33
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 233
    const-string v0, "TapTapLicense"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->_onActivityResult(IILandroid/content/Intent;)V

    .line 235
    return-void
.end method


# virtual methods
.method public check(Landroid/app/Activity;Landroid/app/Fragment;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 45
    const-string v0, "TapTapLicense"

    const-string v1, "check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iput-object p2, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->fragment:Landroid/app/Fragment;

    .line 47
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 50
    :try_start_10
    new-instance v1, Lcom/taptap/pay/sdk/library/CNIabService;

    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/taptap/pay/sdk/library/CNIabService;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->cnIabService:Lcom/taptap/pay/sdk/library/IabService;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_20

    .line 53
    goto :goto_26

    .line 51
    :catch_20
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TapTap CN not INSTALLED"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_26
    :try_start_26
    new-instance v1, Lcom/taptap/pay/sdk/library/GlobalIabService;

    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/taptap/pay/sdk/library/GlobalIabService;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->globalIabService:Lcom/taptap/pay/sdk/library/IabService;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_35} :catch_36

    .line 58
    goto :goto_3c

    .line 56
    :catch_36
    move-exception v1

    .line 57
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "TapTap IO not INSTALLED"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3c
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->cnIabService:Lcom/taptap/pay/sdk/library/IabService;

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->globalIabService:Lcom/taptap/pay/sdk/library/IabService;

    if-nez v0, :cond_52

    .line 61
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->alertDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    invoke-static {v0, v1}, Lcom/taptap/pay/sdk/library/UIHelper;->showNoInstalled(Landroid/app/Activity;Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;)V

    goto :goto_8e

    .line 62
    :cond_52
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taptap/pay/sdk/library/Settings;->getLicensed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 63
    const-string v0, "settings = licensed"

    invoke-static {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->notifyLicenseSuccess(Ljava/lang/String;)V

    goto :goto_8e

    .line 64
    :cond_66
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->cnIabService:Lcom/taptap/pay/sdk/library/IabService;

    if-eqz v0, :cond_77

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->globalIabService:Lcom/taptap/pay/sdk/library/IabService;

    if-eqz v1, :cond_77

    .line 66
    new-instance v0, Lcom/taptap/pay/sdk/library/TapTapLicense$1;

    invoke-direct {v0, p0}, Lcom/taptap/pay/sdk/library/TapTapLicense$1;-><init>(Lcom/taptap/pay/sdk/library/TapTapLicense;)V

    invoke-static {v0}, Lcom/taptap/pay/sdk/library/UIHelper;->runAsyncThread(Ljava/lang/Runnable;)V

    goto :goto_8e

    .line 83
    :cond_77
    if-eqz v0, :cond_82

    .line 84
    new-instance v0, Lcom/taptap/pay/sdk/library/TapTapLicense$2;

    invoke-direct {v0, p0}, Lcom/taptap/pay/sdk/library/TapTapLicense$2;-><init>(Lcom/taptap/pay/sdk/library/TapTapLicense;)V

    invoke-static {v0}, Lcom/taptap/pay/sdk/library/UIHelper;->runAsyncThread(Ljava/lang/Runnable;)V

    goto :goto_8e

    .line 90
    :cond_82
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->globalIabService:Lcom/taptap/pay/sdk/library/IabService;

    if-eqz v0, :cond_8e

    .line 91
    new-instance v0, Lcom/taptap/pay/sdk/library/TapTapLicense$3;

    invoke-direct {v0, p0}, Lcom/taptap/pay/sdk/library/TapTapLicense$3;-><init>(Lcom/taptap/pay/sdk/library/TapTapLicense;)V

    invoke-static {v0}, Lcom/taptap/pay/sdk/library/UIHelper;->runAsyncThread(Ljava/lang/Runnable;)V

    .line 98
    :cond_8e
    :goto_8e
    return-void
.end method

.method checkLicense(Lcom/taptap/pay/sdk/library/IabService;Z)Z
    .registers 8
    .param p1, "service"    # Lcom/taptap/pay/sdk/library/IabService;
    .param p2, "silence"    # Z

    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "connect":Z
    :try_start_1
    invoke-virtual {p1}, Lcom/taptap/pay/sdk/library/IabService;->connect()Z

    move-result v1
    :try_end_5
    .catch Lcom/taptap/pay/sdk/library/exceptions/TapTapBaseException; {:try_start_1 .. :try_end_5} :catch_7

    move v0, v1

    .line 198
    goto :goto_b

    .line 196
    :catch_7
    move-exception v1

    .line 197
    .local v1, "e":Lcom/taptap/pay/sdk/library/exceptions/TapTapBaseException;
    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/exceptions/TapTapBaseException;->printStackTrace()V

    .line 199
    .end local v1    # "e":Lcom/taptap/pay/sdk/library/exceptions/TapTapBaseException;
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLicense| connect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapTapLicense"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    .line 203
    .local v1, "licensed":Z
    if-eqz v0, :cond_33

    :try_start_26
    invoke-virtual {p1}, Lcom/taptap/pay/sdk/library/IabService;->checkLicense()Z

    move-result v3
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2a} :catch_2e

    if-eqz v3, :cond_33

    const/4 v3, 0x1

    goto :goto_34

    .line 204
    :catch_2e
    move-exception v3

    .line 205
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    .line 203
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_33
    const/4 v3, 0x0

    :goto_34
    move v1, v3

    .line 206
    nop

    .line 208
    :goto_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkLicense| licensed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " silence = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-nez v1, :cond_65

    if-nez p2, :cond_65

    .line 210
    sget-object v2, Lcom/taptap/pay/sdk/library/UIHelper;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/taptap/pay/sdk/library/TapTapLicense$6;

    invoke-direct {v3, p0, p1}, Lcom/taptap/pay/sdk/library/TapTapLicense$6;-><init>(Lcom/taptap/pay/sdk/library/TapTapLicense;Lcom/taptap/pay/sdk/library/IabService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7b

    .line 218
    :cond_65
    if-eqz v1, :cond_7b

    .line 219
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->licenseManager:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    if-eqz v2, :cond_6e

    .line 220
    invoke-virtual {v2}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->hideProgress()V

    .line 222
    :cond_6e
    const-string v2, "checkLicense = licensed"

    invoke-static {v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->notifyLicenseSuccess(Ljava/lang/String;)V

    .line 224
    :try_start_73
    invoke-virtual {p1}, Lcom/taptap/pay/sdk/library/IabService;->destroy()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77

    .line 227
    goto :goto_7b

    .line 225
    :catch_77
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7b
    :goto_7b
    return v1
.end method

.method getActivity()Landroid/app/Activity;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method getFragment()Landroid/app/Fragment;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public initDLCManager(ZLjava/lang/String;Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;)V
    .registers 5
    .param p1, "checkOnce"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    .line 101
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->dlcManager:Lcom/taptap/pay/sdk/library/DLCManager;

    if-nez v0, :cond_b

    .line 102
    new-instance v0, Lcom/taptap/pay/sdk/library/DLCManager;

    invoke-direct {v0}, Lcom/taptap/pay/sdk/library/DLCManager;-><init>()V

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->dlcManager:Lcom/taptap/pay/sdk/library/DLCManager;

    .line 104
    :cond_b
    if-eqz p3, :cond_12

    .line 105
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->dlcManager:Lcom/taptap/pay/sdk/library/DLCManager;

    invoke-virtual {v0, p3}, Lcom/taptap/pay/sdk/library/DLCManager;->setupPurchaseListener(Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;)V

    .line 107
    :cond_12
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->dlcManager:Lcom/taptap/pay/sdk/library/DLCManager;

    invoke-virtual {v0, p1}, Lcom/taptap/pay/sdk/library/DLCManager;->setCheckOnce(Z)V

    .line 108
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->dlcManager:Lcom/taptap/pay/sdk/library/DLCManager;

    invoke-virtual {v0, p2}, Lcom/taptap/pay/sdk/library/DLCManager;->setPublicKey(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public purchase(Landroid/app/Fragment;Ljava/lang/String;)V
    .registers 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "sku"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->fragment:Landroid/app/Fragment;

    .line 123
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 124
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->dlcManager:Lcom/taptap/pay/sdk/library/DLCManager;

    if-eqz v0, :cond_15

    .line 125
    invoke-virtual {v0, p2}, Lcom/taptap/pay/sdk/library/DLCManager;->purchase(Ljava/lang/String;)V

    goto :goto_1c

    .line 127
    :cond_15
    const-string v0, "TapTapLicense"

    const-string v1, "Please init dlc manager first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_1c
    return-void
.end method

.method public varargs queryPurchaseBySKU(Landroid/app/Fragment;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "skus"    # [Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->fragment:Landroid/app/Fragment;

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 114
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->dlcManager:Lcom/taptap/pay/sdk/library/DLCManager;

    if-eqz v0, :cond_15

    .line 115
    invoke-virtual {v0, p2}, Lcom/taptap/pay/sdk/library/DLCManager;->queryPurchaseBySKU([Ljava/lang/String;)V

    goto :goto_1c

    .line 117
    :cond_15
    const-string v0, "TapTapLicense"

    const-string v1, "Please init dlc manager first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_1c
    return-void
.end method

.method public setLicenseCallback(Lcom/taptap/pay/sdk/library/TapLicenseCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/taptap/pay/sdk/library/TapLicenseCallback;

    .line 41
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense;->licenseCallback:Lcom/taptap/pay/sdk/library/TapLicenseCallback;

    .line 42
    return-void
.end method
