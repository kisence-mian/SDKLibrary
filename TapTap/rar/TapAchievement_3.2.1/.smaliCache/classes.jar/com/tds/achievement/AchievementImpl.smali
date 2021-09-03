.class Lcom/tds/achievement/AchievementImpl;
.super Ljava/lang/Object;
.source "AchievementImpl.java"


# static fields
.field private static final ACTION_TYPE_GROW:I = 0x1

.field private static final ACTION_TYPE_MAKE:I = 0x2

.field private static final ACTION_TYPE_REACH:I = 0x0

.field public static final SDK_NAME:Ljava/lang/String; = "TapAchievement"

.field public static final SDK_VERSION:I = 0x1ccd4a9

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "3.2.1"

.field public static final TAG:Ljava/lang/String;

.field private static instance:Lcom/tds/achievement/AchievementImpl;

.field private static log:Lcom/tds/common/log/Logger;


# instance fields
.field private accountProvider:Lcom/tds/common/entities/TapAccountProvider;

.field private allDataStore:Lcom/tds/achievement/AllDataStore;

.field private callback:Lcom/tds/achievement/AchievementCallback;

.field private clientId:Ljava/lang/String;

.field private initSuccess:Z

.field private showToast:Z

.field private userDataStore:Lcom/tds/achievement/UserDataStore;

.field private userID:Ljava/lang/String;

.field private weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/tds/achievement/AchievementImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tds/achievement/AchievementImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/achievement/AchievementImpl;->initSuccess:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/achievement/AchievementImpl;->showToast:Z

    .line 244
    return-void
.end method

.method static synthetic access$000()Lcom/tds/common/log/Logger;
    .registers 1

    .line 43
    sget-object v0, Lcom/tds/achievement/AchievementImpl;->log:Lcom/tds/common/log/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tds/achievement/AchievementImpl;)Ljava/lang/ref/WeakReference;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/AchievementImpl;

    .line 43
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tds/achievement/AchievementImpl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/AchievementImpl;

    .line 43
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/achievement/AchievementCallback;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/AchievementImpl;

    .line 43
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tds/achievement/AchievementImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/AchievementImpl;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/tds/achievement/AchievementImpl;->initSuccess:Z

    return p1
.end method

.method static synthetic access$500(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/achievement/UserDataStore;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/AchievementImpl;

    .line 43
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->userDataStore:Lcom/tds/achievement/UserDataStore;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/common/entities/TapAccountProvider;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/AchievementImpl;

    .line 43
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->accountProvider:Lcom/tds/common/entities/TapAccountProvider;

    return-object v0
.end method

.method private doAction(ILjava/lang/String;I)V
    .registers 5
    .param p1, "actionType"    # I
    .param p2, "displayId"    # Ljava/lang/String;
    .param p3, "numSteps"    # I

    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tds/achievement/AchievementImpl;->doAction(ILjava/lang/String;IZ)V

    .line 348
    return-void
.end method

.method private doAction(ILjava/lang/String;IZ)V
    .registers 10
    .param p1, "actionType"    # I
    .param p2, "displayId"    # Ljava/lang/String;
    .param p3, "numSteps"    # I
    .param p4, "isFullAchievement"    # Z

    .line 355
    invoke-virtual {p0, p2}, Lcom/tds/achievement/AchievementImpl;->getAchievementByDisplayId(Ljava/lang/String;)Lcom/tds/achievement/TapAchievementBean;

    move-result-object v0

    .line 356
    .local v0, "item":Lcom/tds/achievement/TapAchievementBean;
    if-eqz v0, :cond_60

    .line 357
    invoke-virtual {v0}, Lcom/tds/achievement/TapAchievementBean;->isFullReached()Z

    move-result v1

    .line 358
    .local v1, "hasReach":Z
    packed-switch p1, :pswitch_data_78

    goto :goto_1a

    .line 366
    :pswitch_e
    invoke-virtual {v0, p3}, Lcom/tds/achievement/TapAchievementBean;->makeSteps(I)V

    goto :goto_1a

    .line 363
    :pswitch_12
    invoke-virtual {v0, p3}, Lcom/tds/achievement/TapAchievementBean;->growSteps(I)V

    .line 364
    goto :goto_1a

    .line 360
    :pswitch_16
    invoke-virtual {v0}, Lcom/tds/achievement/TapAchievementBean;->reach()V

    .line 361
    nop

    .line 369
    :goto_1a
    iget-boolean v2, p0, Lcom/tds/achievement/AchievementImpl;->showToast:Z

    if-eqz v2, :cond_43

    if-nez v1, :cond_43

    invoke-virtual {v0}, Lcom/tds/achievement/TapAchievementBean;->isFullReached()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 370
    move-object v2, v0

    .line 372
    .local v2, "finalItem":Lcom/tds/achievement/TapAchievementBean;
    invoke-static {}, Lcom/tds/common/utils/ActivityUtils;->getStackTopActivity()Lcom/tds/common/reactor/Observable;

    move-result-object v3

    .line 373
    invoke-static {}, Lcom/tds/common/reactor/schedulers/Schedulers;->newThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/reactor/Observable;->subscribeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v3

    .line 374
    invoke-static {}, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/reactor/Observable;->observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v3

    new-instance v4, Lcom/tds/achievement/AchievementImpl$6;

    invoke-direct {v4, p0, v2}, Lcom/tds/achievement/AchievementImpl$6;-><init>(Lcom/tds/achievement/AchievementImpl;Lcom/tds/achievement/TapAchievementBean;)V

    .line 375
    invoke-virtual {v3, v4}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 392
    .end local v2    # "finalItem":Lcom/tds/achievement/TapAchievementBean;
    :cond_43
    if-eqz p4, :cond_50

    .line 393
    invoke-virtual {v0}, Lcom/tds/achievement/TapAchievementBean;->setNotChanged()V

    .line 394
    invoke-virtual {p0}, Lcom/tds/achievement/AchievementImpl;->getUserDataStore()Lcom/tds/achievement/UserDataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tds/achievement/UserDataStore;->saveLocalData()V

    goto :goto_57

    .line 396
    :cond_50
    invoke-virtual {p0}, Lcom/tds/achievement/AchievementImpl;->getUserDataStore()Lcom/tds/achievement/UserDataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tds/achievement/UserDataStore;->saveDataAndUpload()V

    .line 398
    :goto_57
    iget-object v2, p0, Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;

    if-eqz v2, :cond_5f

    .line 399
    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/tds/achievement/AchievementCallback;->onAchievementStatusUpdate(Lcom/tds/achievement/TapAchievementBean;Lcom/tds/achievement/AchievementException;)V

    .line 401
    .end local v1    # "hasReach":Z
    :cond_5f
    goto :goto_76

    .line 402
    :cond_60
    new-instance v1, Lcom/tds/achievement/TapAchievementBean;

    invoke-direct {v1, p2}, Lcom/tds/achievement/TapAchievementBean;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 403
    iget-object v1, p0, Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;

    if-eqz v1, :cond_76

    .line 404
    new-instance v2, Lcom/tds/achievement/AchievementException;

    const/16 v3, 0x232a

    const-string v4, "Achievement not found"

    invoke-direct {v2, v4, v3}, Lcom/tds/achievement/AchievementException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v0, v2}, Lcom/tds/achievement/AchievementCallback;->onAchievementStatusUpdate(Lcom/tds/achievement/TapAchievementBean;Lcom/tds/achievement/AchievementException;)V

    .line 408
    :cond_76
    :goto_76
    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_16
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public static getInstance()Lcom/tds/achievement/AchievementImpl;
    .registers 2

    .line 74
    sget-object v0, Lcom/tds/achievement/AchievementImpl;->instance:Lcom/tds/achievement/AchievementImpl;

    if-nez v0, :cond_17

    .line 75
    const-class v0, Lcom/tds/achievement/AchievementImpl;

    monitor-enter v0

    .line 76
    :try_start_7
    sget-object v1, Lcom/tds/achievement/AchievementImpl;->instance:Lcom/tds/achievement/AchievementImpl;

    if-nez v1, :cond_12

    .line 77
    new-instance v1, Lcom/tds/achievement/AchievementImpl;

    invoke-direct {v1}, Lcom/tds/achievement/AchievementImpl;-><init>()V

    sput-object v1, Lcom/tds/achievement/AchievementImpl;->instance:Lcom/tds/achievement/AchievementImpl;

    .line 79
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 81
    :cond_17
    :goto_17
    sget-object v0, Lcom/tds/achievement/AchievementImpl;->instance:Lcom/tds/achievement/AchievementImpl;

    return-object v0
.end method

.method private initSkynet(Lcom/tds/common/entities/TapAccountProvider;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "accountProvider"    # Lcom/tds/common/entities/TapAccountProvider;
    .param p2, "clientToken"    # Ljava/lang/String;
    .param p3, "isCN"    # Z

    .line 258
    invoke-static {}, Lcom/tds/common/net/TdsHttp;->newClientBuilder()Lcom/tds/common/net/TdsHttp$Client$Builder;

    move-result-object v0

    new-instance v1, Lcom/tds/common/net/intercerptor/AddXUAInterceptor;

    .line 259
    invoke-direct {p0}, Lcom/tds/achievement/AchievementImpl;->makeCommonHeaders()Lcom/tds/common/net/XUAParams;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/common/net/intercerptor/AddXUAInterceptor;-><init>(Lcom/tds/common/net/XUAParams;)V

    invoke-virtual {v0, v1}, Lcom/tds/common/net/TdsHttp$Client$Builder;->addInterceptor(Lcom/tds/common/net/TdsHttp$Interceptor;)Lcom/tds/common/net/TdsHttp$Client$Builder;

    move-result-object v0

    new-instance v1, Lcom/tds/common/net/intercerptor/AuthInterceptor;

    new-instance v2, Lcom/tds/achievement/AchievementImpl$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/tds/achievement/AchievementImpl$4;-><init>(Lcom/tds/achievement/AchievementImpl;Lcom/tds/common/entities/TapAccountProvider;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/tds/common/net/intercerptor/AuthInterceptor;-><init>(Lcom/tds/common/net/intercerptor/AuthInterceptor$TDSAccountProvider;)V

    .line 260
    invoke-virtual {v0, v1}, Lcom/tds/common/net/TdsHttp$Client$Builder;->addInterceptor(Lcom/tds/common/net/TdsHttp$Interceptor;)Lcom/tds/common/net/TdsHttp$Client$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$Client$Builder;->build()Lcom/tds/common/net/TdsHttp$Client;

    move-result-object v0

    .line 271
    .local v0, "client":Lcom/tds/common/net/TdsHttp$Client;
    new-instance v1, Lcom/tds/common/net/TdsApiClient$Builder;

    invoke-direct {v1}, Lcom/tds/common/net/TdsApiClient$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    invoke-static {}, Lcom/tds/common/net/util/HostReplaceUtil;->getInstance()Lcom/tds/common/net/util/HostReplaceUtil;

    move-result-object v3

    if-eqz p3, :cond_36

    const-string v4, "https://tds-tapsdk.cn.tapapis.com/achievement/api/v1/clients/"

    goto :goto_38

    :cond_36
    const-string v4, ""

    :goto_38
    invoke-virtual {v3, v4}, Lcom/tds/common/net/util/HostReplaceUtil;->getReplacedHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tds/achievement/AchievementImpl;->clientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tds/common/net/TdsApiClient$Builder;->baseUrl(Ljava/lang/String;)Lcom/tds/common/net/TdsApiClient$Builder;

    move-result-object v1

    .line 273
    invoke-virtual {v1, v0}, Lcom/tds/common/net/TdsApiClient$Builder;->tdsClient(Lcom/tds/common/net/TdsHttp$Client;)Lcom/tds/common/net/TdsApiClient$Builder;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Lcom/tds/common/net/TdsApiClient$Builder;->build()Lcom/tds/common/net/TdsApiClient;

    move-result-object v1

    .line 275
    .local v1, "tdsApiClient":Lcom/tds/common/net/TdsApiClient;
    invoke-static {}, Lcom/tds/common/net/Skynet;->getInstance()Lcom/tds/common/net/Skynet;

    move-result-object v2

    const-string v3, "TapAchievement"

    invoke-virtual {v2, v3, v1}, Lcom/tds/common/net/Skynet;->registerTdsClient(Ljava/lang/String;Lcom/tds/common/net/TdsApiClient;)V

    .line 276
    return-void
.end method

.method private makeCommonHeaders()Lcom/tds/common/net/XUAParams;
    .registers 4

    .line 279
    sget-object v0, Lcom/tds/common/utils/GUIDHelper;->INSTANCE:Lcom/tds/common/utils/GUIDHelper;

    invoke-virtual {p0}, Lcom/tds/achievement/AchievementImpl;->getWeakActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/utils/GUIDHelper;->init(Landroid/content/Context;)V

    .line 280
    const-string v0, "TapAchievement"

    const v1, 0x1ccd4a9

    const-string v2, "3.2.1"

    invoke-static {v0, v1, v2}, Lcom/tds/common/net/XUAParams;->getCommonXUAParams(Ljava/lang/String;ILjava/lang/String;)Lcom/tds/common/net/XUAParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method fullAchievementDone(Ljava/lang/String;)V
    .registers 4
    .param p1, "displayId"    # Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v0, v1}, Lcom/tds/achievement/AchievementImpl;->doAction(ILjava/lang/String;IZ)V

    .line 352
    return-void
.end method

.method getAchievementByDisplayId(Ljava/lang/String;)Lcom/tds/achievement/TapAchievementBean;
    .registers 5
    .param p1, "displayId"    # Ljava/lang/String;

    .line 411
    invoke-virtual {p0}, Lcom/tds/achievement/AchievementImpl;->getUserDataStore()Lcom/tds/achievement/UserDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tds/achievement/UserDataStore;->getAchievementByDisplayId(Ljava/lang/String;)Lcom/tds/achievement/TapAchievementBean;

    move-result-object v0

    .line 412
    .local v0, "item":Lcom/tds/achievement/TapAchievementBean;
    if-nez v0, :cond_1d

    .line 413
    iget-object v1, p0, Lcom/tds/achievement/AchievementImpl;->allDataStore:Lcom/tds/achievement/AllDataStore;

    invoke-virtual {v1, p1}, Lcom/tds/achievement/AllDataStore;->getAchievementByDisplayId(Ljava/lang/String;)Lcom/tds/achievement/TapAchievementBean;

    move-result-object v1

    .line 414
    .local v1, "temp":Lcom/tds/achievement/TapAchievementBean;
    if-eqz v1, :cond_1d

    .line 415
    invoke-virtual {v1}, Lcom/tds/achievement/TapAchievementBean;->deepCopy()Lcom/tds/achievement/TapAchievementBean;

    move-result-object v0

    .line 416
    invoke-virtual {p0}, Lcom/tds/achievement/AchievementImpl;->getUserDataStore()Lcom/tds/achievement/UserDataStore;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tds/achievement/UserDataStore;->addAchievement(Lcom/tds/achievement/TapAchievementBean;)V

    .line 419
    .end local v1    # "temp":Lcom/tds/achievement/TapAchievementBean;
    :cond_1d
    return-object v0
.end method

.method public getAllAchievementList(Lcom/tds/achievement/GetAchievementListCallBack;)V
    .registers 6
    .param p1, "callback"    # Lcom/tds/achievement/GetAchievementListCallBack;

    .line 113
    iget-boolean v0, p0, Lcom/tds/achievement/AchievementImpl;->initSuccess:Z

    if-nez v0, :cond_14

    .line 114
    if-eqz p1, :cond_13

    .line 115
    const/4 v0, 0x0

    new-instance v1, Lcom/tds/achievement/AchievementException;

    const/16 v2, 0x2329

    const-string v3, "sdk not init"

    invoke-direct {v1, v3, v2}, Lcom/tds/achievement/AchievementException;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0, v1}, Lcom/tds/achievement/GetAchievementListCallBack;->onGetAchievementList(Ljava/util/List;Lcom/tds/achievement/AchievementException;)V

    .line 118
    :cond_13
    return-void

    .line 121
    :cond_14
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->allDataStore:Lcom/tds/achievement/AllDataStore;

    new-instance v1, Lcom/tds/achievement/AchievementImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/tds/achievement/AchievementImpl$1;-><init>(Lcom/tds/achievement/AchievementImpl;Lcom/tds/achievement/GetAchievementListCallBack;)V

    invoke-virtual {v0, v1}, Lcom/tds/achievement/AllDataStore;->getMergedData(Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;)V

    .line 137
    return-void
.end method

.method getAllDataStore()Lcom/tds/achievement/AllDataStore;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->allDataStore:Lcom/tds/achievement/AllDataStore;

    if-nez v0, :cond_b

    .line 248
    new-instance v0, Lcom/tds/achievement/AllDataStore;

    invoke-direct {v0}, Lcom/tds/achievement/AllDataStore;-><init>()V

    iput-object v0, p0, Lcom/tds/achievement/AchievementImpl;->allDataStore:Lcom/tds/achievement/AllDataStore;

    .line 250
    :cond_b
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->allDataStore:Lcom/tds/achievement/AllDataStore;

    return-object v0
.end method

.method getCallback()Lcom/tds/achievement/AchievementCallback;
    .registers 2

    .line 442
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;

    return-object v0
.end method

.method getClientId()Ljava/lang/String;
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method getLocalAchievementList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->allDataStore:Lcom/tds/achievement/AllDataStore;

    iget-object v0, v0, Lcom/tds/achievement/AllDataStore;->localList:Ljava/util/List;

    return-object v0
.end method

.method getLocalUserAchievementList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/tds/achievement/AchievementImpl;->getUserDataStore()Lcom/tds/achievement/UserDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/tds/achievement/UserDataStore;->localList:Ljava/util/List;

    return-object v0
.end method

.method public getUserAchievementList(Lcom/tds/achievement/GetAchievementListCallBack;)V
    .registers 6
    .param p1, "callback"    # Lcom/tds/achievement/GetAchievementListCallBack;

    .line 140
    iget-boolean v0, p0, Lcom/tds/achievement/AchievementImpl;->initSuccess:Z

    if-nez v0, :cond_14

    .line 141
    if-eqz p1, :cond_13

    .line 142
    const/4 v0, 0x0

    new-instance v1, Lcom/tds/achievement/AchievementException;

    const/16 v2, 0x2329

    const-string v3, "sdk not init"

    invoke-direct {v1, v3, v2}, Lcom/tds/achievement/AchievementException;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0, v1}, Lcom/tds/achievement/GetAchievementListCallBack;->onGetAchievementList(Ljava/util/List;Lcom/tds/achievement/AchievementException;)V

    .line 145
    :cond_13
    return-void

    .line 148
    :cond_14
    invoke-virtual {p0}, Lcom/tds/achievement/AchievementImpl;->getUserDataStore()Lcom/tds/achievement/UserDataStore;

    move-result-object v0

    new-instance v1, Lcom/tds/achievement/AchievementImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/tds/achievement/AchievementImpl$2;-><init>(Lcom/tds/achievement/AchievementImpl;Lcom/tds/achievement/GetAchievementListCallBack;)V

    invoke-virtual {v0, v1}, Lcom/tds/achievement/UserDataStore;->getMergedData(Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;)V

    .line 164
    return-void
.end method

.method getUserDataStore()Lcom/tds/achievement/UserDataStore;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->userDataStore:Lcom/tds/achievement/UserDataStore;

    return-object v0
.end method

.method getUserID()Ljava/lang/String;
    .registers 2

    .line 431
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->userID:Ljava/lang/String;

    return-object v0
.end method

.method getWeakActivity()Landroid/app/Activity;
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public growSteps(Ljava/lang/String;I)V
    .registers 8
    .param p1, "displayId"    # Ljava/lang/String;
    .param p2, "numSteps"    # I

    .line 179
    iget-boolean v0, p0, Lcom/tds/achievement/AchievementImpl;->initSuccess:Z

    if-nez v0, :cond_16

    .line 180
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;

    if-eqz v0, :cond_15

    .line 181
    const/4 v1, 0x0

    new-instance v2, Lcom/tds/achievement/AchievementException;

    const/16 v3, 0x2329

    const-string v4, "sdk not init"

    invoke-direct {v2, v4, v3}, Lcom/tds/achievement/AchievementException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/tds/achievement/AchievementCallback;->onAchievementStatusUpdate(Lcom/tds/achievement/TapAchievementBean;Lcom/tds/achievement/AchievementException;)V

    .line 184
    :cond_15
    return-void

    .line 187
    :cond_16
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/tds/achievement/AchievementImpl;->doAction(ILjava/lang/String;I)V

    .line 188
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;Lcom/tds/common/entities/TapAccountProvider;)V
    .registers 9
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "config"    # Lcom/tds/common/entities/TapConfig;
    .param p3, "accountProvider"    # Lcom/tds/common/entities/TapAccountProvider;

    .line 85
    new-instance v0, Lcom/tds/common/log/entities/LogConfig$Builder;

    invoke-direct {v0}, Lcom/tds/common/log/entities/LogConfig$Builder;-><init>()V

    .line 86
    const-string v1, "achievement_log"

    invoke-virtual {v0, v1}, Lcom/tds/common/log/entities/LogConfig$Builder;->withTopic(Ljava/lang/String;)Lcom/tds/common/log/entities/LogConfig$Builder;

    move-result-object v0

    .line 87
    const v2, 0x1ccd4a9

    invoke-virtual {v0, v2}, Lcom/tds/common/log/entities/LogConfig$Builder;->withSdkVersionCode(I)Lcom/tds/common/log/entities/LogConfig$Builder;

    move-result-object v0

    .line 88
    const-string v2, "3.2.1"

    invoke-virtual {v0, v2}, Lcom/tds/common/log/entities/LogConfig$Builder;->withSdkVersionName(Ljava/lang/String;)Lcom/tds/common/log/entities/LogConfig$Builder;

    move-result-object v0

    .line 89
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tds/common/log/entities/LogConfig$Builder;->withEnableUpload(Z)Lcom/tds/common/log/entities/LogConfig$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->build(Landroid/content/Context;)Lcom/tds/common/log/entities/LogConfig;

    move-result-object v0

    .line 92
    .local v0, "logConfig":Lcom/tds/common/log/entities/LogConfig;
    invoke-static {v0}, Lcom/tds/common/log/Logger;->init(Lcom/tds/common/log/entities/LogConfig;)V

    .line 93
    invoke-static {v1}, Lcom/tds/common/log/Logger;->get(Ljava/lang/String;)Lcom/tds/common/log/Logger;

    move-result-object v1

    sput-object v1, Lcom/tds/achievement/AchievementImpl;->log:Lcom/tds/common/log/Logger;

    .line 94
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tds/achievement/AchievementImpl;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tds/achievement/AchievementImpl;->initSuccess:Z

    .line 96
    iget-object v3, p2, Lcom/tds/common/entities/TapConfig;->clientId:Ljava/lang/String;

    iput-object v3, p0, Lcom/tds/achievement/AchievementImpl;->clientId:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/tds/achievement/AchievementImpl;->accountProvider:Lcom/tds/common/entities/TapAccountProvider;

    .line 98
    iget-object v3, p2, Lcom/tds/common/entities/TapConfig;->clientToken:Ljava/lang/String;

    iget v4, p2, Lcom/tds/common/entities/TapConfig;->regionType:I

    if-ne v4, v2, :cond_41

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    invoke-direct {p0, p3, v3, v2}, Lcom/tds/achievement/AchievementImpl;->initSkynet(Lcom/tds/common/entities/TapAccountProvider;Ljava/lang/String;Z)V

    .line 99
    invoke-virtual {p0}, Lcom/tds/achievement/AchievementImpl;->getAllDataStore()Lcom/tds/achievement/AllDataStore;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/achievement/AchievementImpl;->allDataStore:Lcom/tds/achievement/AllDataStore;

    .line 100
    new-instance v1, Lcom/tds/achievement/UserDataStore;

    invoke-direct {v1}, Lcom/tds/achievement/UserDataStore;-><init>()V

    iput-object v1, p0, Lcom/tds/achievement/AchievementImpl;->userDataStore:Lcom/tds/achievement/UserDataStore;

    .line 101
    return-void
.end method

.method public makeSteps(Ljava/lang/String;I)V
    .registers 8
    .param p1, "displayId"    # Ljava/lang/String;
    .param p2, "numSteps"    # I

    .line 191
    iget-boolean v0, p0, Lcom/tds/achievement/AchievementImpl;->initSuccess:Z

    if-nez v0, :cond_16

    .line 192
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;

    if-eqz v0, :cond_15

    .line 193
    const/4 v1, 0x0

    new-instance v2, Lcom/tds/achievement/AchievementException;

    const/16 v3, 0x2329

    const-string v4, "sdk not init"

    invoke-direct {v2, v4, v3}, Lcom/tds/achievement/AchievementException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/tds/achievement/AchievementCallback;->onAchievementStatusUpdate(Lcom/tds/achievement/TapAchievementBean;Lcom/tds/achievement/AchievementException;)V

    .line 196
    :cond_15
    return-void

    .line 199
    :cond_16
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/tds/achievement/AchievementImpl;->doAction(ILjava/lang/String;I)V

    .line 200
    return-void
.end method

.method public reach(Ljava/lang/String;)V
    .registers 7
    .param p1, "displayId"    # Ljava/lang/String;

    .line 167
    iget-boolean v0, p0, Lcom/tds/achievement/AchievementImpl;->initSuccess:Z

    if-nez v0, :cond_16

    .line 168
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;

    if-eqz v0, :cond_15

    .line 169
    const/4 v1, 0x0

    new-instance v2, Lcom/tds/achievement/AchievementException;

    const/16 v3, 0x2329

    const-string v4, "sdk not init"

    invoke-direct {v2, v4, v3}, Lcom/tds/achievement/AchievementException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/tds/achievement/AchievementCallback;->onAchievementStatusUpdate(Lcom/tds/achievement/TapAchievementBean;Lcom/tds/achievement/AchievementException;)V

    .line 172
    :cond_15
    return-void

    .line 175
    :cond_16
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/tds/achievement/AchievementImpl;->doAction(ILjava/lang/String;I)V

    .line 176
    return-void
.end method

.method public registerCallback(Lcom/tds/achievement/AchievementCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/tds/achievement/AchievementCallback;

    .line 104
    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/tds/common/utils/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;

    .line 106
    return-void
.end method

.method public requestData()V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->allDataStore:Lcom/tds/achievement/AllDataStore;

    new-instance v1, Lcom/tds/achievement/AchievementImpl$5;

    invoke-direct {v1, p0}, Lcom/tds/achievement/AchievementImpl$5;-><init>(Lcom/tds/achievement/AchievementImpl;)V

    invoke-virtual {v0, v1}, Lcom/tds/achievement/AllDataStore;->getMergedData(Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;)V

    .line 344
    return-void
.end method

.method public setShowToast(Z)V
    .registers 2
    .param p1, "showToast"    # Z

    .line 109
    iput-boolean p1, p0, Lcom/tds/achievement/AchievementImpl;->showToast:Z

    .line 110
    return-void
.end method

.method setUserID(Ljava/lang/String;)V
    .registers 3
    .param p1, "userID"    # Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->userID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 436
    iput-object p1, p0, Lcom/tds/achievement/AchievementImpl;->userID:Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->userDataStore:Lcom/tds/achievement/UserDataStore;

    invoke-virtual {v0}, Lcom/tds/achievement/UserDataStore;->resetMemory()V

    .line 439
    :cond_f
    return-void
.end method

.method showAchievementPage()V
    .registers 6

    .line 211
    iget-boolean v0, p0, Lcom/tds/achievement/AchievementImpl;->initSuccess:Z

    if-nez v0, :cond_16

    .line 212
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;

    if-eqz v0, :cond_15

    .line 213
    const/4 v1, 0x0

    new-instance v2, Lcom/tds/achievement/AchievementException;

    const/16 v3, 0x2329

    const-string v4, "sdk not init"

    invoke-direct {v2, v4, v3}, Lcom/tds/achievement/AchievementException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/tds/achievement/AchievementCallback;->onAchievementStatusUpdate(Lcom/tds/achievement/TapAchievementBean;Lcom/tds/achievement/AchievementException;)V

    .line 216
    :cond_15
    return-void

    .line 218
    :cond_16
    invoke-virtual {p0}, Lcom/tds/achievement/AchievementImpl;->getWeakActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 219
    .local v0, "con":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 221
    .local v1, "isLandscape":Z
    :goto_2a
    invoke-static {}, Lcom/tds/common/utils/ActivityUtils;->getStackTopActivity()Lcom/tds/common/reactor/Observable;

    move-result-object v2

    .line 222
    invoke-static {}, Lcom/tds/common/reactor/schedulers/Schedulers;->newThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tds/common/reactor/Observable;->subscribeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v2

    .line 223
    invoke-static {}, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tds/common/reactor/Observable;->observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v2

    new-instance v3, Lcom/tds/achievement/AchievementImpl$3;

    invoke-direct {v3, p0, v1}, Lcom/tds/achievement/AchievementImpl$3;-><init>(Lcom/tds/achievement/AchievementImpl;Z)V

    .line 224
    invoke-virtual {v2, v3}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 240
    return-void
.end method
