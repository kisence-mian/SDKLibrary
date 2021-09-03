.class Lcom/taptap/pay/sdk/library/CheckLicenseManager;
.super Ljava/lang/Object;
.source "CheckLicenseManager.java"


# static fields
.field private static final ACTIVITY_RESULT_BACK:I = 0x2

.field private static final ACTIVITY_RESULT_NULL:I = 0x0

.field private static final ACTIVITY_RESULT_SENT:I = 0x1

.field private static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"


# instance fields
.field private activityLifeCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private activityResultStatus:I

.field private checkLock:Z

.field private final filter:Landroid/content/IntentFilter;

.field private hasBroadcastRegistered:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private progressDialog:Lcom/taptap/pay/sdk/library/TapAlertDialog;

.field private secureRandomRequestCode:I

.field private final service:Lcom/taptap/pay/sdk/library/IabService;

.field private final successLicensed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/IabService;)V
    .registers 5
    .param p1, "service"    # Lcom/taptap/pay/sdk/library/IabService;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->progressDialog:Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->successLicensed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.taptap.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->filter:Landroid/content/IntentFilter;

    .line 35
    iput-boolean v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->hasBroadcastRegistered:Z

    .line 46
    new-instance v0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;

    invoke-direct {v0, p0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager$1;-><init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)V

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;

    invoke-direct {v0, p0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;-><init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)V

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->activityLifeCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 41
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->service:Lcom/taptap/pay/sdk/library/IabService;

    .line 42
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->activityLifeCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    .line 22
    iget-boolean v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->checkLock:Z

    return v0
.end method

.method static synthetic access$002(Lcom/taptap/pay/sdk/library/CheckLicenseManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->checkLock:Z

    return p1
.end method

.method static synthetic access$100(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)Lcom/taptap/pay/sdk/library/IabService;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    .line 22
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->service:Lcom/taptap/pay/sdk/library/IabService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    .line 22
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->successLicensed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taptap/pay/sdk/library/CheckLicenseManager;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->notifyLicenseResult(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    .line 22
    invoke-direct {p0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->moveGameToFront()V

    return-void
.end method

.method static synthetic access$500(Lcom/taptap/pay/sdk/library/CheckLicenseManager;Landroid/app/Activity;)Landroid/content/Intent;
    .registers 3
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 22
    invoke-direct {p0, p1}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->getCheckIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/taptap/pay/sdk/library/CheckLicenseManager;Landroid/app/Fragment;Landroid/content/Intent;)V
    .registers 3
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;
    .param p1, "x1"    # Landroid/app/Fragment;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->checkLicenseByIntent(Landroid/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    .line 22
    iget v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->activityResultStatus:I

    return v0
.end method

.method static synthetic access$702(Lcom/taptap/pay/sdk/library/CheckLicenseManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->activityResultStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/taptap/pay/sdk/library/CheckLicenseManager;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 22
    invoke-direct {p0, p1}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->finishService(Landroid/app/Activity;)V

    return-void
.end method

.method private checkLicenseByIntent(Landroid/app/Fragment;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/app/Fragment;
    .param p2, "checkIntent"    # Landroid/content/Intent;

    .line 140
    const/4 v0, 0x1

    iput v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->activityResultStatus:I

    .line 142
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->secureRandomRequestCode:I

    .line 145
    :try_start_10
    invoke-virtual {p1, p2, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    .line 149
    goto :goto_1b

    .line 146
    :catch_14
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    const/4 v1, 0x0

    iput v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->activityResultStatus:I

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method private finishService(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 273
    const-string v0, "CheckLicenseManager"

    const-string v1, "finishService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne p1, v1, :cond_21

    .line 276
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->service:Lcom/taptap/pay/sdk/library/IabService;

    if-eqz v1, :cond_18

    .line 277
    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/IabService;->destroy()V

    .line 279
    :cond_18
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->activityLifeCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 281
    :cond_21
    iget-boolean v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->hasBroadcastRegistered:Z

    if-eqz v1, :cond_37

    .line 282
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->hasBroadcastRegistered:Z

    .line 283
    const-string v1, "unregister receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :try_start_2d
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33

    .line 289
    goto :goto_37

    .line 287
    :catch_33
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    :goto_37
    return-void
.end method

.method private getCheckIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .registers 5
    .param p1, "context"    # Landroid/app/Activity;

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "checkIntent":Landroid/content/Intent;
    const-string v1, "com.play.taptap.billing.CheckLicenseAct"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->service:Lcom/taptap/pay/sdk/library/IabService;

    if-eqz v1, :cond_15

    .line 131
    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/IabService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    :cond_15
    const/4 v1, 0x3

    const-string v2, "apiVersion"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/4 v1, 0x0

    const-string v2, "wakeUp"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    return-object v0
.end method

.method private moveGameToFront()V
    .registers 4

    .line 199
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    .line 200
    .local v0, "taskId":I
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 201
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 202
    .local v1, "am":Landroid/app/ActivityManager;
    if-eqz v1, :cond_22

    .line 203
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 205
    :cond_22
    return-void
.end method

.method private notifyLicenseResult(ZZ)V
    .registers 5
    .param p1, "success"    # Z
    .param p2, "needNotify"    # Z

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->activityResultStatus:I

    .line 84
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->successLicensed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    if-eqz p1, :cond_27

    .line 88
    if-eqz p2, :cond_11

    .line 89
    const-string v0, "onsuccess"

    invoke-static {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->notifyLicenseSuccess(Ljava/lang/String;)V

    .line 92
    :cond_11
    sget-object v0, Lcom/taptap/pay/sdk/library/UIHelper;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/taptap/pay/sdk/library/CheckLicenseManager$2;

    invoke-direct {v1, p0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager$2;-><init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->finishService(Landroid/app/Activity;)V

    goto :goto_31

    .line 102
    :cond_27
    sget-object v0, Lcom/taptap/pay/sdk/library/UIHelper;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;

    invoke-direct {v1, p0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager$3;-><init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    :goto_31
    return-void
.end method


# virtual methods
.method getRequestCode()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->secureRandomRequestCode:I

    return v0
.end method

.method hideProgress()V
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->progressDialog:Lcom/taptap/pay/sdk/library/TapAlertDialog;

    if-eqz v0, :cond_a

    .line 193
    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog;->dismiss()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->progressDialog:Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 196
    :cond_a
    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 157
    const-string v0, "CheckLicenseManager"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x2

    iput v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->activityResultStatus:I

    .line 161
    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->hideProgress()V

    .line 162
    iget v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->secureRandomRequestCode:I

    if-ne p1, v0, :cond_73

    .line 163
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p2, v0, :cond_23

    .line 164
    const/4 v0, 0x6

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 165
    .local v0, "result":I
    if-nez v0, :cond_20

    move v2, v1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    move v0, v2

    .line 166
    .local v0, "licensed":Z
    goto :goto_24

    .line 167
    .end local v0    # "licensed":Z
    :cond_23
    const/4 v0, 0x0

    .line 170
    .restart local v0    # "licensed":Z
    :goto_24
    if-eqz v0, :cond_63

    .line 171
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/taptap/pay/sdk/library/Settings;->getLicensedDate(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_44

    .line 172
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/taptap/pay/sdk/library/Settings;->setLicensedDate(Landroid/content/Context;)V

    goto :goto_5f

    .line 173
    :cond_44
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/taptap/pay/sdk/library/Settings;->getLicensedDateAfterFiveDays(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_5f

    .line 174
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/taptap/pay/sdk/library/Settings;->setLicensedDateAfterFiveDays(Landroid/content/Context;)V

    .line 176
    :cond_5f
    :goto_5f
    invoke-direct {p0, v1, v1}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->notifyLicenseResult(ZZ)V

    goto :goto_73

    .line 179
    :cond_63
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/taptap/pay/sdk/library/CheckLicenseManager$4;

    invoke-direct {v2, p0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager$4;-><init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)V

    invoke-static {v1, v2}, Lcom/taptap/pay/sdk/library/UIHelper;->showNoLicensed(Landroid/app/Activity;Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;)V

    .line 189
    .end local v0    # "licensed":Z
    :cond_73
    :goto_73
    return-void
.end method

.method showLoading()V
    .registers 4

    .line 72
    const-string v0, "CheckLicenseManager"

    const-string v1, "showCheckingUI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taptap/pay/sdk/library/UIHelper;->showChecking(Landroid/app/Activity;Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;)Lcom/taptap/pay/sdk/library/TapAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->progressDialog:Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 74
    iget-boolean v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->hasBroadcastRegistered:Z

    if-nez v1, :cond_31

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->hasBroadcastRegistered:Z

    .line 76
    const-string v1, "register receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    :cond_31
    return-void
.end method
