.class public Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;
.super Ljava/lang/Object;
.source "GoogleReferrerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "loongcheer_google"

.field private static instance:Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;


# instance fields
.field private mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->instance:Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;
    .registers 1

    .line 24
    sget-object v0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->instance:Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;

    if-nez v0, :cond_b

    .line 25
    new-instance v0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;

    invoke-direct {v0}, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;-><init>()V

    sput-object v0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->instance:Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;

    .line 27
    :cond_b
    sget-object v0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->instance:Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;

    return-object v0
.end method


# virtual methods
.method public end()V
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    if-eqz v0, :cond_a

    .line 109
    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 112
    :cond_a
    return-void
.end method

.method public getArgs(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const-string v0, "loongcheer_google"

    const-string v1, "install_referrer"

    const-string v2, ""

    :try_start_6
    iget-object v3, p0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v3}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object v3

    .line 76
    .local v3, "response":Lcom/android/installreferrer/api/ReferrerDetails;
    invoke-virtual {v3}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "referrerUrl":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v5

    .line 78
    .local v5, "referrerClickTime":J
    invoke-virtual {v3}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v7

    .line 79
    .local v7, "appInstallTime":J
    invoke-virtual {v3}, Lcom/android/installreferrer/api/ReferrerDetails;->getGooglePlayInstantParam()Z

    move-result v9

    .line 82
    .local v9, "instantExperienceLaunched":Z
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "referrerUrl"

    invoke-interface {v10, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v11, "appInstallTime"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v11, "referrerClickTime"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v11, "instantExperienceLaunched"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    move-result-object v2

    invoke-virtual {v2, p1, v10, v1}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->event(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "referrerUrl::"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "::::::appInstallTime::"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "::::::referrerClickTime::"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ":::::instantExperienceLaunched::"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->end()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a6} :catch_a7

    .line 103
    .end local v3    # "response":Lcom/android/installreferrer/api/ReferrerDetails;
    .end local v4    # "referrerUrl":Ljava/lang/String;
    .end local v5    # "referrerClickTime":J
    .end local v7    # "appInstallTime":J
    .end local v9    # "instantExperienceLaunched":Z
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_c8

    .line 93
    :catch_a7
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "error"

    const-string v5, "try catsh"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    move-result-object v4

    invoke-virtual {v4, p1, v3, v1}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->event(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->end()V

    .line 101
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_c8
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    if-eqz v0, :cond_7

    .line 35
    invoke-virtual {p0}, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->end()V

    .line 37
    :cond_7
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->mReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 38
    new-instance v1, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper$1;-><init>(Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    .line 71
    return-void
.end method
