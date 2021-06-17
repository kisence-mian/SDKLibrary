.class public Lcom/loongcheer/ironsourcsdk/IronSourcInit;
.super Ljava/lang/Object;
.source "IronSourcInit.java"


# static fields
.field private static ironSourcInit:Lcom/loongcheer/ironsourcsdk/IronSourcInit;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/loongcheer/ironsourcsdk/IronSourcInit;
    .registers 1

    .line 19
    sget-object v0, Lcom/loongcheer/ironsourcsdk/IronSourcInit;->ironSourcInit:Lcom/loongcheer/ironsourcsdk/IronSourcInit;

    if-nez v0, :cond_b

    .line 20
    new-instance v0, Lcom/loongcheer/ironsourcsdk/IronSourcInit;

    invoke-direct {v0}, Lcom/loongcheer/ironsourcsdk/IronSourcInit;-><init>()V

    sput-object v0, Lcom/loongcheer/ironsourcsdk/IronSourcInit;->ironSourcInit:Lcom/loongcheer/ironsourcsdk/IronSourcInit;

    .line 22
    :cond_b
    sget-object v0, Lcom/loongcheer/ironsourcsdk/IronSourcInit;->ironSourcInit:Lcom/loongcheer/ironsourcsdk/IronSourcInit;

    return-object v0
.end method


# virtual methods
.method public ironSourcInit(Ljava/lang/String;)V
    .registers 3
    .param p1, "app_key"    # Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->Init()V

    .line 46
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 33
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->onPause(Landroid/app/Activity;)V

    .line 35
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 28
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->onResume(Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method public testSdk()V
    .registers 2

    .line 53
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V

    .line 54
    return-void
.end method
