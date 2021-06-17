.class public final Lcom/facebook/internal/FetchedAppSettings;
.super Ljava/lang/Object;
.source "FetchedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    }
.end annotation


# instance fields
.field private IAPAutomaticLoggingEnabled:Z

.field private automaticLoggingEnabled:Z

.field private codelessEventsEnabled:Z

.field private customTabsEnabled:Z

.field private dialogConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

.field private eventBindings:Lorg/json/JSONArray;

.field private nuxContent:Ljava/lang/String;

.field private nuxEnabled:Z

.field private sdkUpdateMessage:Ljava/lang/String;

.field private sessionTimeoutInSeconds:I

.field private smartLoginBookmarkIconURL:Ljava/lang/String;

.field private smartLoginMenuIconURL:Ljava/lang/String;

.field private smartLoginOptions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation
.end field

.field private supportsImplicitLogging:Z

.field private trackUninstallEnabled:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;Z)V
    .registers 33
    .param p1, "supportsImplicitLogging"    # Z
    .param p2, "nuxContent"    # Ljava/lang/String;
    .param p3, "nuxEnabled"    # Z
    .param p4, "customTabsEnabled"    # Z
    .param p5, "sessionTimeoutInSeconds"    # I
    .param p8, "automaticLoggingEnabled"    # Z
    .param p9, "errorClassification"    # Lcom/facebook/internal/FacebookRequestErrorClassification;
    .param p10, "smartLoginBookmarkIconURL"    # Ljava/lang/String;
    .param p11, "smartLoginMenuIconURL"    # Ljava/lang/String;
    .param p12, "IAPAutomaticLoggingEnabled"    # Z
    .param p13, "codelessEventsEnabled"    # Z
    .param p14, "eventBindings"    # Lorg/json/JSONArray;
    .param p15, "sdkUpdateMessage"    # Ljava/lang/String;
    .param p16, "trackUninstallEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;Z",
            "Lcom/facebook/internal/FacebookRequestErrorClassification;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 70
    .local p6, "smartLoginOptions":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/internal/SmartLoginOption;>;"
    .local p7, "dialogConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    move/from16 v1, p1

    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    .line 72
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    .line 73
    move/from16 v3, p3

    iput-boolean v3, v0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    .line 74
    move/from16 v4, p4

    iput-boolean v4, v0, Lcom/facebook/internal/FetchedAppSettings;->customTabsEnabled:Z

    .line 75
    move-object/from16 v5, p7

    iput-object v5, v0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    .line 76
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    .line 77
    move/from16 v7, p5

    iput v7, v0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    .line 78
    move/from16 v8, p8

    iput-boolean v8, v0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    .line 79
    move-object/from16 v9, p6

    iput-object v9, v0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    .line 80
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    .line 81
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    .line 82
    move/from16 v12, p12

    iput-boolean v12, v0, Lcom/facebook/internal/FetchedAppSettings;->IAPAutomaticLoggingEnabled:Z

    .line 83
    move/from16 v13, p13

    iput-boolean v13, v0, Lcom/facebook/internal/FetchedAppSettings;->codelessEventsEnabled:Z

    .line 84
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/facebook/internal/FetchedAppSettings;->eventBindings:Lorg/json/JSONArray;

    .line 85
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/facebook/internal/FetchedAppSettings;->sdkUpdateMessage:Ljava/lang/String;

    .line 86
    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->trackUninstallEnabled:Z

    .line 87
    return-void
.end method

.method public static getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .registers 6
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "featureName"    # Ljava/lang/String;

    .line 255
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2a

    .line 259
    :cond_e
    nop

    .line 260
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    .line 261
    .local v0, "settings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v0, :cond_29

    .line 262
    nop

    .line 263
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getDialogConfigurations()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 264
    .local v2, "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    if-eqz v2, :cond_29

    .line 265
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    return-object v1

    .line 268
    .end local v2    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    :cond_29
    return-object v1

    .line 256
    .end local v0    # "settings":Lcom/facebook/internal/FetchedAppSettings;
    :cond_2a
    :goto_2a
    return-object v1
.end method


# virtual methods
.method public getAutomaticLoggingEnabled()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    return v0
.end method

.method public getCodelessEventsEnabled()Z
    .registers 2

    .line 133
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->codelessEventsEnabled:Z

    return v0
.end method

.method public getCustomTabsEnabled()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->customTabsEnabled:Z

    return v0
.end method

.method public getDialogConfigurations()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    return-object v0
.end method

.method public getEventBindings()Lorg/json/JSONArray;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->eventBindings:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getIAPAutomaticLoggingEnabled()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->IAPAutomaticLoggingEnabled:Z

    return v0
.end method

.method public getNuxContent()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNuxEnabled()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    return v0
.end method

.method public getSdkUpdateMessage()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->sdkUpdateMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionTimeoutInSeconds()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    return v0
.end method

.method public getSmartLoginBookmarkIconURL()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartLoginMenuIconURL()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartLoginOptions()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getTrackUninstallEnabled()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->trackUninstallEnabled:Z

    return v0
.end method

.method public supportsImplicitLogging()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    return v0
.end method
