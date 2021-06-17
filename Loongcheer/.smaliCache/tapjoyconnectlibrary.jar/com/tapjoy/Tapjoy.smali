.class public final Lcom/tapjoy/Tapjoy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INTENT_EXTRA_PUSH_PAYLOAD:Ljava/lang/String; = "com.tapjoy.PUSH_PAYLOAD"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionComplete(Ljava/lang/String;)V
    .registers 2
    .param p0, "actionID"    # Ljava/lang/String;

    .line 575
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->e(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public static activateInstallReferrerClient(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 625
    :try_start_0
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->a(Landroid/content/Context;)V
    :try_end_7
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_0 .. :try_end_7} :catch_8

    .line 629
    return-void

    .line 626
    :catch_8
    move-exception v0

    .line 627
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tapjoy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void
.end method

.method public static addUserTag(Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 537
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->c(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public static awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V
    .registers 3
    .param p0, "amount"    # I
    .param p1, "listener"    # Lcom/tapjoy/TJAwardCurrencyListener;

    .line 165
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/es;->a(ILcom/tapjoy/TJAwardCurrencyListener;)V

    .line 166
    return-void
.end method

.method public static belowConsentAge(Z)V
    .registers 2
    .param p0, "isBelowConsentAge"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 757
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->d(Z)V

    .line 758
    return-void
.end method

.method public static clearUserTags()V
    .registers 1

    .line 527
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->g()V

    .line 528
    return-void
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkKey"    # Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/es;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 71
    .local p2, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/tapjoy/internal/es;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .registers 6
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "sdkKey"    # Ljava/lang/String;
    .param p3, "publisherListener"    # Lcom/tapjoy/TJConnectListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation

    .local p2, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    const-class v0, Lcom/tapjoy/Tapjoy;

    monitor-enter v0

    .line 97
    :try_start_3
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/tapjoy/internal/es;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return v1

    .line 97
    .end local p0    # "applicationContext":Landroid/content/Context;
    .end local p1    # "sdkKey":Ljava/lang/String;
    .end local p2    # "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    .end local p3    # "publisherListener":Lcom/tapjoy/TJConnectListener;
    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static endSession()V
    .registers 1

    .line 409
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->e()V

    .line 410
    return-void
.end method

.method public static getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/tapjoy/TJGetCurrencyBalanceListener;

    .line 139
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    .line 140
    return-void
.end method

.method public static getCurrencyMultiplier()F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->c()F

    move-result v0

    return v0
.end method

.method public static getCustomParameter()Ljava/lang/String;
    .registers 1

    .line 789
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLimitedPlacement(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .registers 3
    .param p0, "placementName"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/tapjoy/TJPlacementListener;

    .line 771
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/es;->b(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    return-object v0
.end method

.method public static getPlacement(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .registers 3
    .param p0, "placementName"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/tapjoy/TJPlacementListener;

    .line 114
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivacyPolicy()Lcom/tapjoy/TJPrivacyPolicy;
    .registers 1

    .line 797
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->m()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportURL()Ljava/lang/String;
    .registers 2

    .line 686
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/es;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "currencyId"    # Ljava/lang/String;

    .line 698
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserTags()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getUserToken()Ljava/lang/String;
    .registers 1

    .line 707
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 39
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isConnected()Z
    .registers 1

    .line 714
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->i()Z

    move-result v0

    return v0
.end method

.method public static isLimitedConnected()Z
    .registers 1

    .line 767
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->j()Z

    move-result v0

    return v0
.end method

.method public static isPushNotificationDisabled()Z
    .registers 1

    .line 647
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->h()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized limitedConnect(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJConnectListener;)Z
    .registers 5
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "sdkKey"    # Ljava/lang/String;
    .param p2, "publisherListener"    # Lcom/tapjoy/TJConnectListener;

    const-class v0, Lcom/tapjoy/Tapjoy;

    monitor-enter v0

    .line 763
    :try_start_3
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/tapjoy/internal/es;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJConnectListener;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return v1

    .line 763
    .end local p0    # "applicationContext":Landroid/content/Context;
    .end local p1    # "sdkKey":Ljava/lang/String;
    .end local p2    # "publisherListener":Lcom/tapjoy/TJConnectListener;
    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static loadSharedLibrary()V
    .registers 1

    .line 665
    :try_start_0
    const-string v0, "tapjoy"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    .line 668
    return-void

    .line 666
    :catch_6
    move-exception v0

    .line 669
    return-void
.end method

.method public static onActivityStart(Landroid/app/Activity;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 419
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->b(Landroid/app/Activity;)V

    .line 420
    return-void
.end method

.method public static onActivityStop(Landroid/app/Activity;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 429
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->c(Landroid/app/Activity;)V

    .line 430
    return-void
.end method

.method public static removeUserTag(Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 547
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->d(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 123
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->a(Landroid/app/Activity;)V

    .line 124
    return-void
.end method

.method public static setAppDataVersion(Ljava/lang/String;)V
    .registers 2
    .param p0, "dataVersion"    # Ljava/lang/String;

    .line 491
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->b(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public static setCurrencyMultiplier(F)V
    .registers 2
    .param p0, "multiplier"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->a(F)V

    .line 190
    return-void
.end method

.method public static setCustomParameter(Ljava/lang/String;)V
    .registers 2
    .param p0, "customParam"    # Ljava/lang/String;

    .line 781
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->j(Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public static setDebugEnabled(Z)V
    .registers 2
    .param p0, "enable"    # Z

    .line 50
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->a(Z)V

    .line 51
    return-void
.end method

.method public static setDeviceToken(Ljava/lang/String;)V
    .registers 2
    .param p0, "deviceToken"    # Ljava/lang/String;

    .line 602
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->i(Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public static setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/tapjoy/TJEarnedCurrencyListener;

    .line 176
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/TJEarnedCurrencyListener;)V

    .line 177
    return-void
.end method

.method public static setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .registers 2
    .param p0, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .line 677
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->a(Landroid/opengl/GLSurfaceView;)V

    .line 678
    return-void
.end method

.method public static setGcmSender(Ljava/lang/String;)V
    .registers 2
    .param p0, "senderId"    # Ljava/lang/String;

    .line 590
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->f(Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public static setInstallReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "referrer"    # Ljava/lang/String;

    .line 640
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/es;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public static setPushNotificationDisabled(Z)V
    .registers 2
    .param p0, "disabled"    # Z

    .line 657
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->b(Z)V

    .line 658
    return-void
.end method

.method public static setReceiveRemoteNotification(Landroid/content/Context;Ljava/util/Map;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 613
    .local p1, "remoteMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/es;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 614
    return-void
.end method

.method public static setUserCohortVariable(ILjava/lang/String;)V
    .registers 3
    .param p0, "variableIndex"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 503
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/es;->a(ILjava/lang/String;)V

    .line 504
    return-void
.end method

.method public static setUserConsent(Ljava/lang/String;)V
    .registers 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 739
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->h(Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method public static setUserFriendCount(I)V
    .registers 2
    .param p0, "friendCount"    # I

    .line 480
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->b(I)V

    .line 481
    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .registers 2
    .param p0, "userID"    # Ljava/lang/String;

    .line 445
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/Tapjoy;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    .line 446
    return-void
.end method

.method public static setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .registers 3
    .param p0, "userID"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/tapjoy/TJSetUserIDListener;

    .line 460
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    .line 461
    return-void
.end method

.method public static setUserLevel(I)V
    .registers 2
    .param p0, "userLevel"    # I

    .line 470
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->a(I)V

    .line 471
    return-void
.end method

.method public static setUserTags(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 520
    .local p0, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->a(Ljava/util/Set;)V

    .line 521
    return-void
.end method

.method public static setVideoListener(Lcom/tapjoy/TJVideoListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/tapjoy/TJVideoListener;

    .line 561
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/TJVideoListener;)V

    .line 562
    return-void
.end method

.method public static spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V
    .registers 3
    .param p0, "amount"    # I
    .param p1, "listener"    # Lcom/tapjoy/TJSpendCurrencyListener;

    .line 152
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/es;->a(ILcom/tapjoy/TJSpendCurrencyListener;)V

    .line 153
    return-void
.end method

.method public static startSession()V
    .registers 1

    .line 401
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->d()V

    .line 402
    return-void
.end method

.method public static subjectToGDPR(Z)V
    .registers 2
    .param p0, "gdprApplicable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 728
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->c(Z)V

    .line 729
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 276
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;J)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # J

    .line 288
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;J)V

    .line 289
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 298
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 299
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameter1"    # Ljava/lang/String;
    .param p3, "parameter2"    # Ljava/lang/String;

    .line 308
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tapjoy/internal/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameter1"    # Ljava/lang/String;
    .param p3, "parameter2"    # Ljava/lang/String;
    .param p4, "value"    # J

    .line 319
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 320
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 15
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameter1"    # Ljava/lang/String;
    .param p3, "parameter2"    # Ljava/lang/String;
    .param p4, "valueName"    # Ljava/lang/String;
    .param p5, "value"    # J

    .line 330
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 331
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .registers 21
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameter1"    # Ljava/lang/String;
    .param p3, "parameter2"    # Ljava/lang/String;
    .param p4, "value1Name"    # Ljava/lang/String;
    .param p5, "value1"    # J
    .param p7, "value2Name"    # Ljava/lang/String;
    .param p8, "value2"    # J

    .line 341
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    .line 342
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .registers 27
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameter1"    # Ljava/lang/String;
    .param p3, "parameter2"    # Ljava/lang/String;
    .param p4, "value1Name"    # Ljava/lang/String;
    .param p5, "value1"    # J
    .param p7, "value2Name"    # Ljava/lang/String;
    .param p8, "value2"    # J
    .param p10, "value3Name"    # Ljava/lang/String;
    .param p11, "value3"    # J

    .line 371
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    invoke-virtual/range {v0 .. v13}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    .line 372
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameter1"    # Ljava/lang/String;
    .param p3, "parameter2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 390
    .local p4, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 391
    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "skuDetails"    # Ljava/lang/String;
    .param p1, "campaignId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .registers 11
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "currencyCode"    # Ljava/lang/String;
    .param p2, "price"    # D
    .param p4, "campaignId"    # Ljava/lang/String;

    .line 221
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 222
    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "skuDetails"    # Ljava/lang/String;
    .param p1, "purchaseData"    # Ljava/lang/String;
    .param p2, "dataSignature"    # Ljava/lang/String;
    .param p3, "campaignId"    # Ljava/lang/String;

    .line 244
    invoke-static {}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method
