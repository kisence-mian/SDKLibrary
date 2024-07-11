.class public final Lcom/appsflyer/internal/af;
.super Lcom/appsflyer/AppsFlyerLib;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/af$b;,
        Lcom/appsflyer/internal/af$c;,
        Lcom/appsflyer/internal/af$a;
    }
.end annotation


# static fields
.field public static final AFInAppEventParameterName:Ljava/lang/String;

.field public static final AFInAppEventType:Ljava/lang/String;

.field public static AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

.field private static onAppOpenAttribution:Ljava/lang/String;

.field private static onAppOpenAttributionNative:Ljava/lang/String;

.field private static onAttributionFailure:Lcom/appsflyer/internal/af;

.field private static onConversionDataFail:Ljava/lang/String;

.field private static onConversionDataSuccess:Ljava/lang/String;

.field private static final onDeepLinkingNative:Ljava/lang/String;

.field private static onInstallConversionDataLoadedNative:Ljava/lang/String;

.field private static onInstallConversionFailureNative:Ljava/lang/String;

.field static valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

.field static final values:Ljava/lang/String;


# instance fields
.field public AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

.field AFVersionDeclaration:Ljava/lang/String;

.field AppsFlyer2dXConversionCallback:Ljava/lang/String;

.field private AppsFlyerConversionListener:Z

.field private AppsFlyerInAppPurchaseValidatorListener:J

.field private AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

.field private final enableLocationCollection:Lcom/appsflyer/internal/aj;

.field private getInstance:Ljava/lang/String;

.field getLevel:J

.field private getOutOfStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private getSdkVersion:Z

.field public init:[Ljava/lang/String;

.field public onAttributionFailureNative:[Lcom/appsflyer/internal/bw;

.field private onDeepLinking:J

.field private onPause:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onValidateInApp:J

.field private onValidateInAppFailure:J

.field private final setAdditionalData:Lorg/json/JSONObject;

.field private setAndroidIdData:Z

.field private setAppInviteOneLink:Lcom/appsflyer/internal/au;

.field private setCustomerIdAndLogSession:Ljava/lang/String;

.field private setCustomerUserId:Z

.field private setDebugLog:Z

.field private setImeiData:Landroid/app/Application;

.field private setOaidData:Z

.field private setPhoneNumber:Z

.field private setUserEmails:Landroid/content/SharedPreferences;

.field private stop:Z

.field private updateServerUninstallToken:J

.field private waitForCustomerUserId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 122
    const-string v0, "98"

    sput-object v0, Lcom/appsflyer/internal/af;->values:Ljava/lang/String;

    .line 125
    const-string v0, "6.3.0"

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/af;->AFInAppEventParameterName:Ljava/lang/String;

    .line 126
    const-string v1, "https://%sstats.%s/stats"

    sput-object v1, Lcom/appsflyer/internal/af;->onAppOpenAttributionNative:Ljava/lang/String;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/androidevent?buildnumber=6.3.0&app_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/af;->AFInAppEventType:Ljava/lang/String;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%sadrevenue.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/android?buildnumber=6.3.0&app_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/af;->onInstallConversionDataLoadedNative:Ljava/lang/String;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/androidevent?app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/af;->onDeepLinkingNative:Ljava/lang/String;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%sconversions.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/af;->onInstallConversionFailureNative:Ljava/lang/String;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%slaunches.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/af;->onConversionDataSuccess:Ljava/lang/String;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%sinapps.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/af;->onAppOpenAttribution:Ljava/lang/String;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%sattr.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/af;->onConversionDataFail:Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    sput-object v0, Lcom/appsflyer/internal/af;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    .line 170
    sput-object v0, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 172
    new-instance v0, Lcom/appsflyer/internal/af;

    invoke-direct {v0}, Lcom/appsflyer/internal/af;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/af;->onAttributionFailure:Lcom/appsflyer/internal/af;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 211
    invoke-direct {p0}, Lcom/appsflyer/AppsFlyerLib;-><init>()V

    .line 175
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/appsflyer/internal/af;->onDeepLinking:J

    .line 176
    iput-wide v0, p0, Lcom/appsflyer/internal/af;->onValidateInApp:J

    .line 177
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/af;->AppsFlyerInAppPurchaseValidatorListener:J

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/internal/af;->AppsFlyerConversionListener:Z

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appsflyer/internal/af;->AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

    .line 184
    iput-boolean v0, p0, Lcom/appsflyer/internal/af;->getSdkVersion:Z

    .line 189
    new-instance v1, Lcom/appsflyer/internal/aj;

    invoke-direct {v1}, Lcom/appsflyer/internal/aj;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/af;->enableLocationCollection:Lcom/appsflyer/internal/aj;

    .line 190
    iput-boolean v0, p0, Lcom/appsflyer/internal/af;->setOaidData:Z

    .line 191
    iput-boolean v0, p0, Lcom/appsflyer/internal/af;->setDebugLog:Z

    .line 196
    iput-boolean v0, p0, Lcom/appsflyer/internal/af;->setCustomerUserId:Z

    .line 199
    iput-boolean v0, p0, Lcom/appsflyer/internal/af;->setPhoneNumber:Z

    .line 205
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/af;->setAdditionalData:Lorg/json/JSONObject;

    .line 212
    invoke-static {}, Lcom/appsflyer/AFVersionDeclaration;->init()V

    .line 213
    return-void
.end method

.method public static AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I
    .registers 4

    .line 2717
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2719
    if-eqz p2, :cond_14

    .line 2720
    add-int/lit8 v0, v0, 0x1

    .line 2721
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2722
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2723
    nop

    .line 50815
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2726
    :cond_14
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsflyer/internal/am;->AFLogger$LogLevel()Z

    move-result p0

    if-eqz p0, :cond_29

    .line 2727
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/am;->values(Ljava/lang/String;)V

    .line 2730
    :cond_29
    return v0
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/af;)Landroid/app/Application;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/appsflyer/internal/af;->setImeiData:Landroid/app/Application;

    return-object p0
.end method

.method public static AFInAppEventParameterName()Lcom/appsflyer/internal/af;
    .registers 1

    .line 216
    sget-object v0, Lcom/appsflyer/internal/af;->onAttributionFailure:Lcom/appsflyer/internal/af;

    return-object v0
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 2438
    nop

    .line 2441
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2442
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_22

    .line 2445
    move-object v0, p0

    goto :goto_2a

    .line 2443
    :catchall_22
    move-exception p0

    .line 2444
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2446
    :goto_2a
    return-object v0
.end method

.method public static AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 486
    invoke-static {p0}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 487
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 488
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 489
    nop

    .line 17426
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 490
    return-void
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;)V
    .registers 11

    .line 116
    nop

    .line 50877
    nop

    .line 50976
    iget-object v0, p1, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 50877
    nop

    .line 50878
    nop

    .line 50977
    iget-object v1, p1, Lcom/appsflyer/internal/h;->AFVersionDeclaration:Ljava/lang/String;

    .line 50878
    nop

    .line 50880
    if-nez v0, :cond_11

    .line 50881
    const-string p0, "sendWithEvent - got null context. skipping event/launch."

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 50882
    return-void

    .line 50885
    :cond_11
    invoke-static {v0}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 50886
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties(Landroid/content/SharedPreferences;)V

    .line 50887
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 50888
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendWithEvent from activity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 50891
    :cond_3c
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_42

    const/4 v1, 0x1

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    .line 50893
    :goto_43
    instance-of v5, p1, Lcom/appsflyer/internal/bd;

    .line 50894
    instance-of v6, p1, Lcom/appsflyer/internal/bg;

    .line 50896
    nop

    .line 50978
    iput-boolean v1, p1, Lcom/appsflyer/internal/h;->onInstallConversionDataLoadedNative:Z

    .line 50979
    nop

    .line 50896
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/af;->valueOf(Lcom/appsflyer/internal/h;)Ljava/util/Map;

    move-result-object v7

    .line 50897
    const-string v8, "appsflyerKey"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 50899
    if-eqz v8, :cond_22f

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_61

    goto/16 :goto_22f

    .line 50906
    :cond_61
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v8

    if-nez v8, :cond_6c

    .line 50907
    const-string v8, "AppsFlyerLib.sendWithEvent"

    invoke-static {v8}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 50910
    :cond_6c
    nop

    .line 50981
    const-string v8, "appsFlyerCount"

    invoke-static {v2, v8, v4}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v2

    .line 50910
    nop

    .line 50914
    const/4 v8, 0x2

    if-nez v6, :cond_cf

    if-eqz v5, :cond_7a

    goto :goto_cf

    .line 50916
    :cond_7a
    if-eqz v1, :cond_b4

    .line 50917
    if-ge v2, v8, :cond_99

    .line 50918
    sget-object v5, Lcom/appsflyer/internal/af;->onInstallConversionFailureNative:Ljava/lang/String;

    .line 50984
    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    .line 50985
    sget-object v8, Lcom/appsflyer/internal/af;->onAttributionFailure:Lcom/appsflyer/internal/af;

    .line 50984
    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 50918
    goto :goto_ea

    .line 50920
    :cond_99
    sget-object v5, Lcom/appsflyer/internal/af;->onConversionDataSuccess:Ljava/lang/String;

    .line 50986
    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    .line 50987
    sget-object v8, Lcom/appsflyer/internal/af;->onAttributionFailure:Lcom/appsflyer/internal/af;

    .line 50986
    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 50920
    goto :goto_ea

    .line 50923
    :cond_b4
    sget-object v5, Lcom/appsflyer/internal/af;->onAppOpenAttribution:Ljava/lang/String;

    .line 50988
    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    .line 50989
    sget-object v8, Lcom/appsflyer/internal/af;->onAttributionFailure:Lcom/appsflyer/internal/af;

    .line 50988
    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 50923
    goto :goto_ea

    .line 50915
    :cond_cf
    :goto_cf
    sget-object v5, Lcom/appsflyer/internal/af;->onConversionDataFail:Ljava/lang/String;

    .line 50982
    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    .line 50983
    sget-object v8, Lcom/appsflyer/internal/af;->onAttributionFailure:Lcom/appsflyer/internal/af;

    .line 50982
    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 50915
    nop

    .line 50926
    :goto_ea
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50927
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&buildnumber=6.3.0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50929
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 50930
    if-eqz v0, :cond_12f

    .line 50931
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&channel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50934
    :cond_12f
    nop

    .line 50990
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 50991
    const-string v6, "collectAndroidIdForceByUser"

    invoke-virtual {v0, v6, v4}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_14b

    .line 50992
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 50993
    const-string v6, "collectIMEIForceByUser"

    invoke-virtual {v0, v6, v4}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_149

    goto :goto_14b

    :cond_149
    const/4 v0, 0x0

    goto :goto_14c

    :cond_14b
    :goto_14b
    const/4 v0, 0x1

    .line 50995
    :goto_14c
    if-nez v0, :cond_187

    .line 50996
    const-string v0, "advertiserId"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_187

    .line 50999
    :try_start_156
    iget-object v0, p0, Lcom/appsflyer/internal/af;->AFVersionDeclaration:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 51000
    const-string v0, "android_id"

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51001
    if-eqz v0, :cond_16b

    .line 51002
    const-string v0, "validateGaidAndIMEI :: removing: android_id"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 51005
    :cond_16b
    iget-object v0, p0, Lcom/appsflyer/internal/af;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_180

    .line 51006
    const-string v0, "imei"

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51007
    if-eqz v0, :cond_180

    .line 51008
    const-string v0, "validateGaidAndIMEI :: removing: imei"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_180} :catch_181

    .line 51013
    :cond_180
    goto :goto_187

    .line 51011
    :catch_181
    move-exception v0

    .line 51012
    const-string v6, "failed to remove IMEI or AndroidID key from params; "

    invoke-static {v6, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50936
    :cond_187
    :goto_187
    new-instance v0, Lcom/appsflyer/internal/af$c;

    .line 50937
    invoke-virtual {p1, v5}, Lcom/appsflyer/internal/h;->values(Ljava/lang/String;)Lcom/appsflyer/internal/h;

    move-result-object p1

    .line 50938
    invoke-virtual {p1, v7}, Lcom/appsflyer/internal/h;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/h;

    move-result-object p1

    .line 50939
    nop

    .line 51016
    iput v2, p1, Lcom/appsflyer/internal/h;->onDeepLinkingNative:I

    .line 51017
    nop

    .line 50939
    invoke-direct {v0, p0, p1, v4}, Lcom/appsflyer/internal/af$c;-><init>(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;B)V

    .line 50942
    nop

    .line 50944
    if-eqz v1, :cond_1ea

    .line 50946
    iget-object p1, p0, Lcom/appsflyer/internal/af;->onAttributionFailureNative:[Lcom/appsflyer/internal/bw;

    if-eqz p1, :cond_1cc

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1a1
    if-ge v4, v1, :cond_1cb

    aget-object v5, p1, v4

    .line 50947
    nop

    .line 51018
    iget-object v6, v5, Lcom/appsflyer/internal/bw;->AFInAppEventType:Lcom/appsflyer/internal/bw$d;

    .line 50947
    sget-object v7, Lcom/appsflyer/internal/bw$d;->valueOf:Lcom/appsflyer/internal/bw$d;

    if-ne v6, v7, :cond_1c8

    .line 50949
    nop

    .line 50950
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Failed to get "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51019
    iget-object v5, v5, Lcom/appsflyer/internal/bw;->valueOf:Ljava/lang/String;

    .line 50950
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " referrer, wait ..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 50946
    :cond_1c8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a1

    :cond_1cb
    move v4, v2

    .line 50954
    :cond_1cc
    iget-boolean p1, p0, Lcom/appsflyer/internal/af;->setCustomerUserId:Z

    if-eqz p1, :cond_1dd

    invoke-direct {p0}, Lcom/appsflyer/internal/af;->values()Z

    move-result p1

    if-nez p1, :cond_1dd

    .line 50955
    nop

    .line 50956
    const-string p1, "fetching Facebook deferred AppLink data, wait ..."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 50958
    :cond_1dd
    iget-boolean p1, p0, Lcom/appsflyer/internal/af;->setPhoneNumber:Z

    if-eqz p1, :cond_1e8

    invoke-direct {p0}, Lcom/appsflyer/internal/af;->AppsFlyer2dXConversionCallback()Z

    move-result p0

    if-nez p0, :cond_1e8

    .line 50959
    goto :goto_1eb

    .line 50966
    :cond_1e8
    move v3, v4

    goto :goto_1eb

    .line 50944
    :cond_1ea
    const/4 v3, 0x0

    .line 50966
    :goto_1eb
    sget-boolean p0, Lcom/appsflyer/internal/f;->valueOf:Z

    if-eqz p0, :cond_211

    .line 50967
    const-string p0, "ESP deeplink: execute launch on SerialExecutor"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 51020
    sget-object p0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    if-nez p0, :cond_1ff

    .line 51021
    new-instance p0, Lcom/appsflyer/internal/n;

    invoke-direct {p0}, Lcom/appsflyer/internal/n;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 51023
    :cond_1ff
    sget-object p0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 50968
    nop

    .line 51024
    iget-object p1, p0, Lcom/appsflyer/internal/n;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_20e

    .line 51025
    iget-object p1, p0, Lcom/appsflyer/internal/n;->values:Ljava/util/concurrent/ThreadFactory;

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/n;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    .line 51027
    :cond_20e
    iget-object p0, p0, Lcom/appsflyer/internal/n;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    .line 50968
    goto :goto_222

    .line 51028
    :cond_211
    sget-object p0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    if-nez p0, :cond_21c

    .line 51029
    new-instance p0, Lcom/appsflyer/internal/n;

    invoke-direct {p0}, Lcom/appsflyer/internal/n;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 51031
    :cond_21c
    sget-object p0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 50970
    invoke-virtual {p0}, Lcom/appsflyer/internal/n;->values()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p0

    .line 50973
    :goto_222
    if-eqz v3, :cond_227

    const-wide/16 v1, 0x1f4

    goto :goto_229

    :cond_227
    const-wide/16 v1, 0x0

    :goto_229
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 116
    return-void

    .line 50900
    :cond_22f
    :goto_22f
    const-string p0, "Not sending data yet, waiting for dev key"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 50901
    nop

    .line 50980
    iget-object p0, p1, Lcom/appsflyer/internal/h;->values:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 50901
    nop

    .line 50902
    if-eqz p0, :cond_241

    .line 50903
    sget p1, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object v0, Lcom/appsflyer/internal/at;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 50904
    :cond_241
    return-void
.end method

.method public static AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    .line 2902
    if-eqz p0, :cond_12

    .line 2903
    :try_start_2
    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2904
    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2905
    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 2907
    :cond_12
    const-string p0, "scheduler is null, shut downed or terminated"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_17} :catch_1f
    .catchall {:try_start_2 .. :try_end_17} :catchall_18

    .line 2913
    return-void

    .line 2911
    :catchall_18
    move-exception p0

    .line 2912
    const-string p1, "scheduleJob failed with Exception"

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2914
    return-void

    .line 2909
    :catch_1f
    move-exception p0

    .line 2910
    const-string p1, "scheduleJob failed with RejectedExecutionException Exception"

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2913
    return-void
.end method

.method public static AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .line 50812
    sget-object v0, Lcom/appsflyer/internal/af;->onAttributionFailure:Lcom/appsflyer/internal/af;

    .line 2695
    iget-object v1, v0, Lcom/appsflyer/internal/af;->setUserEmails:Landroid/content/SharedPreferences;

    if-nez v1, :cond_14

    .line 50813
    nop

    .line 2696
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    .line 2697
    const-string v2, "appsflyer-data"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v0, Lcom/appsflyer/internal/af;->setUserEmails:Landroid/content/SharedPreferences;

    .line 50814
    :cond_14
    sget-object p0, Lcom/appsflyer/internal/af;->onAttributionFailure:Lcom/appsflyer/internal/af;

    .line 2699
    iget-object p0, p0, Lcom/appsflyer/internal/af;->setUserEmails:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static AFInAppEventType(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 8

    .line 2924
    nop

    .line 2925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2926
    nop

    .line 2928
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 2929
    if-nez v2, :cond_12

    .line 2930
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 2933
    :cond_12
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_4a

    .line 2934
    :try_start_17
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_48

    .line 2937
    const/4 v1, 0x0

    .line 2938
    :goto_1d
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 2939
    if-eqz v1, :cond_2c

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_2e

    :cond_2c
    const-string v1, ""

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_43

    .line 2940
    const/4 v1, 0x1

    goto :goto_1d

    .line 2947
    :cond_37
    :try_start_37
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 2950
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3e

    .line 2954
    :cond_3d
    :goto_3d
    goto :goto_71

    .line 2953
    :catchall_3e
    move-exception p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/Throwable;)V

    .line 2955
    goto :goto_71

    .line 2942
    :catchall_43
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_4c

    :catchall_48
    move-exception v2

    goto :goto_4c

    :catchall_4a
    move-exception v2

    move-object v3, v1

    .line 2943
    :goto_4c
    :try_start_4c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not read connection response from: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_96

    .line 2946
    if-eqz v1, :cond_6b

    .line 2947
    :try_start_68
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 2949
    :cond_6b
    if-eqz v3, :cond_3d

    .line 2950
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_3e

    goto :goto_3d

    .line 2956
    :goto_71
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2958
    :try_start_75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_75 .. :try_end_7a} :catch_7b

    .line 2959
    return-object p0

    .line 2960
    :catch_7b
    move-exception v0

    .line 2961
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2963
    :try_start_81
    const-string v1, "string_response"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2964
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_8a} :catch_8b

    return-object p0

    .line 2965
    :catch_8b
    move-exception p0

    .line 2966
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2945
    :catchall_96
    move-exception p0

    .line 2946
    if-eqz v1, :cond_9f

    .line 2947
    :try_start_99
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    goto :goto_9f

    .line 2953
    :catchall_9d
    move-exception v0

    goto :goto_a5

    .line 2949
    :cond_9f
    :goto_9f
    if-eqz v3, :cond_a9

    .line 2950
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_a4
    .catchall {:try_start_99 .. :try_end_a4} :catchall_9d

    goto :goto_a9

    .line 2953
    :goto_a5
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/Throwable;)V

    goto :goto_aa

    .line 2954
    :cond_a9
    :goto_a9
    nop

    .line 2955
    :goto_aa
    goto :goto_ac

    :goto_ab
    throw p0

    :goto_ac
    goto :goto_ab
.end method

.method public static AFInAppEventType(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .registers 4

    .line 1320
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1321
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/af;)Ljava/util/Map;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/appsflyer/internal/af;->getOutOfStore:Ljava/util/Map;

    return-object p0
.end method

.method public static AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1999
    const-string v0, "meta"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    goto :goto_18

    .line 2000
    :cond_f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    .line 2001
    :goto_18
    return-object p0
.end method

.method public static AFInAppEventType(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 493
    invoke-static {p0}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 494
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 495
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 496
    nop

    .line 18426
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 497
    return-void
.end method

.method private AFInAppEventType(Lcom/appsflyer/internal/h;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2794
    move-object/from16 v8, p0

    move-object/from16 v2, p1

    .line 50819
    new-instance v1, Ljava/net/URL;

    iget-object v0, v2, Lcom/appsflyer/internal/h;->onInstallConversionFailureNative:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2794
    nop

    .line 2795
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/h;->values()[B

    move-result-object v3

    .line 2796
    nop

    .line 50820
    iget-object v4, v2, Lcom/appsflyer/internal/h;->AFLogger$LogLevel:Ljava/lang/String;

    .line 2796
    nop

    .line 2797
    nop

    .line 50821
    iget-object v5, v2, Lcom/appsflyer/internal/h;->init:Ljava/lang/String;

    .line 2797
    nop

    .line 2798
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/h;->AFInAppEventType()Z

    move-result v6

    .line 2799
    nop

    .line 50822
    iget-object v7, v2, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 2799
    nop

    .line 2800
    nop

    .line 50823
    iget-object v9, v2, Lcom/appsflyer/internal/h;->values:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 2800
    nop

    .line 2801
    nop

    .line 2802
    nop

    .line 2803
    const/4 v11, 0x1

    if-eqz v6, :cond_2f

    .line 50824
    iget v0, v2, Lcom/appsflyer/internal/h;->onDeepLinkingNative:I

    .line 2803
    if-ne v0, v11, :cond_2f

    const/4 v12, 0x1

    goto :goto_30

    :cond_2f
    const/4 v12, 0x0

    .line 2804
    :goto_30
    if-eqz v12, :cond_47

    .line 2806
    :try_start_32
    iget-object v0, v8, Lcom/appsflyer/internal/af;->setAdditionalData:Lorg/json/JSONObject;

    const-string v13, "from_fg"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-wide v10, v8, Lcom/appsflyer/internal/af;->onValidateInAppFailure:J

    sub-long/2addr v14, v10

    invoke-virtual {v0, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_40} :catch_41

    .line 2808
    goto :goto_42

    .line 2807
    :catch_41
    move-exception v0

    .line 2809
    :goto_42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    goto :goto_49

    .line 2804
    :cond_47
    const-wide/16 v10, 0x0

    .line 2812
    :goto_49
    :try_start_49
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/net/HttpURLConnection;
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_1e0

    .line 2813
    :try_start_50
    const-string v0, "POST"

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2814
    array-length v0, v3

    .line 2815
    const-string v15, "Content-Length"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    const-string v0, "Content-Type"

    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/h;->AFKeystoreWrapper()Z

    move-result v15

    if-eqz v15, :cond_6a

    const-string v15, "application/octet-stream"

    goto :goto_6c

    :cond_6a
    const-string v15, "application/json"

    :goto_6c
    invoke-virtual {v14, v0, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    const/16 v0, 0x2710

    invoke-virtual {v14, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 2818
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 2820
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v13, "http_cache"

    invoke-virtual {v0, v13, v15}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_88

    .line 2821
    const/4 v13, 0x0

    invoke-virtual {v14, v13}, Ljava/net/URLConnection;->setUseCaches(Z)V
    :try_end_88
    .catchall {:try_start_50 .. :try_end_88} :catchall_1dd

    .line 2823
    :cond_88
    nop

    .line 2825
    :try_start_89
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-virtual {v14}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_1d5

    .line 2826
    :try_start_92
    invoke-virtual {v13, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_1d3

    .line 2828
    :try_start_95
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 2831
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_1dd

    .line 2832
    if-eqz v12, :cond_ad

    .line 2834
    :try_start_9e
    iget-object v0, v8, Lcom/appsflyer/internal/af;->setAdditionalData:Lorg/json/JSONObject;

    const-string v12, "net"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v10, v16, v10

    invoke-virtual {v0, v12, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_9e .. :try_end_ab} :catch_ac
    .catchall {:try_start_9e .. :try_end_ab} :catchall_1dd

    .line 2836
    goto :goto_ad

    .line 2835
    :catch_ac
    move-exception v0

    .line 2838
    :cond_ad
    :goto_ad
    nop

    .line 50825
    :try_start_ae
    iget-object v0, v8, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    if-nez v0, :cond_b9

    new-instance v0, Lcom/appsflyer/internal/aw;

    invoke-direct {v0, v7}, Lcom/appsflyer/internal/aw;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    .line 50826
    :cond_b9
    iget-object v0, v8, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    .line 2838
    const-string v10, "first_launch"

    iget-object v11, v8, Lcom/appsflyer/internal/af;->setAdditionalData:Lorg/json/JSONObject;

    .line 2839
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    .line 50827
    iget-object v0, v0, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2840
    invoke-static {v14}, Lcom/appsflyer/internal/af;->AFInAppEventType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 2841
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50829
    const-string v11, "server_response"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v12, v15

    const/4 v13, 0x1

    aput-object v0, v12, v13

    invoke-virtual {v10, v11, v1, v12}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2842
    const-string v1, "response code: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 2843
    invoke-static {v7}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 2844
    const/16 v1, 0xc8

    if-ne v3, v1, :cond_19c

    .line 2848
    if-eqz v7, :cond_10d

    if-eqz v6, :cond_10d

    .line 2849
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/appsflyer/internal/af;->onValidateInApp:J

    .line 2850
    :cond_10d
    if-eqz v9, :cond_112

    invoke-interface {v9}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onSuccess()V

    .line 2851
    :cond_112
    if-eqz v5, :cond_11b

    .line 2852
    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;

    invoke-static {v5, v7}, Lcom/appsflyer/internal/ag;->values(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_169

    .line 2854
    :cond_11b
    const-string v1, "sentSuccessfully"

    const-string v5, "true"

    .line 50831
    invoke-static {v7}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 50832
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 50833
    invoke-interface {v6, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50834
    nop

    .line 50836
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2855
    nop

    .line 50838
    iget-boolean v1, v8, Lcom/appsflyer/internal/af;->AppsFlyerConversionListener:Z

    if-nez v1, :cond_168

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v11, v8, Lcom/appsflyer/internal/af;->getLevel:J

    sub-long/2addr v5, v11

    const-wide/16 v11, 0x3a98

    cmp-long v1, v5, v11

    if-gez v1, :cond_141

    goto :goto_168

    .line 50841
    :cond_141
    iget-object v1, v8, Lcom/appsflyer/internal/af;->AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_169

    .line 50844
    nop

    .line 50851
    sget-object v1, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    if-nez v1, :cond_151

    .line 50852
    new-instance v1, Lcom/appsflyer/internal/n;

    invoke-direct {v1}, Lcom/appsflyer/internal/n;-><init>()V

    sput-object v1, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 50854
    :cond_151
    sget-object v1, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 50844
    invoke-virtual {v1}, Lcom/appsflyer/internal/n;->values()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    iput-object v1, v8, Lcom/appsflyer/internal/af;->AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

    .line 50846
    new-instance v1, Lcom/appsflyer/internal/af$b;

    invoke-direct {v1, v8, v7}, Lcom/appsflyer/internal/af$b;-><init>(Lcom/appsflyer/internal/af;Landroid/content/Context;)V

    .line 50849
    iget-object v5, v8, Lcom/appsflyer/internal/af;->AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v11, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v5, v1, v11, v12, v6}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_169

    .line 50839
    :cond_168
    :goto_168
    nop

    .line 2857
    :cond_169
    :goto_169
    new-instance v1, Lcom/appsflyer/internal/az;

    invoke-direct {v1, v7}, Lcom/appsflyer/internal/az;-><init>(Landroid/content/Context;)V

    .line 50855
    invoke-virtual {v1}, Lcom/appsflyer/internal/az;->AFInAppEventParameterName()Lcom/appsflyer/internal/m;

    move-result-object v5

    .line 50856
    if-eqz v5, :cond_18e

    invoke-virtual {v5}, Lcom/appsflyer/internal/m;->AFKeystoreWrapper()Z

    move-result v6

    if-eqz v6, :cond_18e

    .line 50857
    nop

    .line 50863
    iget-object v5, v5, Lcom/appsflyer/internal/m;->AFKeystoreWrapper:Ljava/lang/String;

    .line 50857
    nop

    .line 50859
    const-string v6, "Resending Uninstall token to AF servers: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 50860
    invoke-virtual {v1, v5}, Lcom/appsflyer/internal/az;->valueOf(Ljava/lang/String;)V

    .line 2858
    :cond_18e
    invoke-static {v0}, Lcom/appsflyer/internal/ap;->values(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2860
    const-string v1, "send_background"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v8, Lcom/appsflyer/internal/af;->setOaidData:Z

    .line 2861
    goto :goto_1bc

    .line 2862
    :cond_19c
    if-eqz v9, :cond_1bc

    .line 2863
    sget v0, Lcom/appsflyer/attribution/RequestError;->RESPONSE_CODE_FAILURE:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appsflyer/internal/at;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 2866
    :cond_1bc
    :goto_1bc
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v7

    move-object v5, v10

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/appsflyer/internal/ay;->AFKeystoreWrapper(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    :try_end_1cc
    .catchall {:try_start_ae .. :try_end_1cc} :catchall_1dd

    .line 2868
    if-eqz v14, :cond_1d2

    .line 2869
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 2872
    :cond_1d2
    return-void

    .line 2828
    :catchall_1d3
    move-exception v0

    goto :goto_1d7

    :catchall_1d5
    move-exception v0

    const/4 v13, 0x0

    :goto_1d7
    if-eqz v13, :cond_1dc

    :try_start_1d9
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 2829
    :cond_1dc
    throw v0
    :try_end_1dd
    .catchall {:try_start_1d9 .. :try_end_1dd} :catchall_1dd

    .line 2868
    :catchall_1dd
    move-exception v0

    move-object v13, v14

    goto :goto_1e2

    :catchall_1e0
    move-exception v0

    const/4 v13, 0x0

    :goto_1e2
    if-eqz v13, :cond_1e7

    .line 2869
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2871
    :cond_1e7
    throw v0
.end method

.method public static AFInAppEventType()Z
    .registers 3

    .line 537
    const-string v0, "waitForCustomerId"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsflyer/internal/af;->values(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 19525
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "AppUserId"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    if-nez v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    return v1
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/af;J)J
    .registers 3

    .line 116
    iput-wide p1, p0, Lcom/appsflyer/internal/af;->onValidateInAppFailure:J

    return-wide p1
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 2574
    if-eqz p0, :cond_1f

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 2575
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_16

    return-object v0

    .line 2577
    :catchall_16
    move-exception p0

    .line 2578
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    .line 2579
    :cond_1f
    nop

    .line 2580
    :goto_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private static AFKeystoreWrapper(Landroid/app/Activity;)Ljava/lang/String;
    .registers 7

    .line 2125
    const-string v0, "af"

    .line 2126
    const/4 v1, 0x0

    if-eqz p0, :cond_37

    .line 2127
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2128
    if-eqz v2, :cond_37

    .line 2130
    :try_start_b
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2131
    if-eqz v3, :cond_2e

    .line 2132
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2133
    if-eqz v1, :cond_2e

    .line 2134
    const-string v4, "Push Notification received af payload = "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 2135
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2136
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2f

    .line 2141
    :cond_2e
    goto :goto_37

    .line 2139
    :catchall_2f
    move-exception p0

    .line 2140
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2144
    :cond_37
    :goto_37
    return-object v1
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/af;)Ljava/util/Map;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/appsflyer/internal/af;->waitForCustomerUserId:Ljava/util/Map;

    return-object p0
.end method

.method public static AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50772
    sget-object v0, Lcom/appsflyer/internal/u$e;->values:Lcom/appsflyer/internal/u;

    .line 2066
    invoke-static {p0}, Lcom/appsflyer/internal/u;->values(Landroid/content/Context;)Lcom/appsflyer/internal/u$a;

    move-result-object p0

    .line 2067
    nop

    .line 50773
    iget-object v0, p0, Lcom/appsflyer/internal/u$a;->AFInAppEventType:Ljava/lang/String;

    .line 2067
    const-string v1, "network"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    iget-object v0, p0, Lcom/appsflyer/internal/u$a;->AFInAppEventParameterName:Ljava/lang/String;

    .line 50774
    if-eqz v0, :cond_1a

    .line 2069
    nop

    .line 50775
    iget-object v0, p0, Lcom/appsflyer/internal/u$a;->AFInAppEventParameterName:Ljava/lang/String;

    .line 2069
    const-string v1, "operator"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    :cond_1a
    iget-object v0, p0, Lcom/appsflyer/internal/u$a;->valueOf:Ljava/lang/String;

    .line 50776
    if-eqz v0, :cond_26

    .line 2072
    nop

    .line 50777
    iget-object p0, p0, Lcom/appsflyer/internal/u$a;->valueOf:Ljava/lang/String;

    .line 2072
    const-string v0, "carrier"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2074
    :cond_26
    return-void
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    nop

    .line 51032
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51060
    iget-object v1, p1, Lcom/appsflyer/internal/h;->onInstallConversionFailureNative:Ljava/lang/String;

    .line 51032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 51034
    nop

    .line 51061
    iget-object v0, p1, Lcom/appsflyer/internal/h;->init:Ljava/lang/String;

    .line 51034
    if-eqz v0, :cond_31

    .line 51035
    invoke-virtual {p1}, Lcom/appsflyer/internal/h;->values()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 51036
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cached data: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    goto :goto_60

    .line 51038
    :cond_31
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/appsflyer/internal/h;->valueOf()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51039
    const-string v1, "\\p{C}"

    const-string v2, "*Non-printing character*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51040
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 51041
    nop

    .line 51042
    const-string v0, "Payload contains non-printing characters"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    move-object v0, v1

    .line 51044
    :cond_53
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/an;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 51046
    :goto_60
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v1

    .line 51062
    iget-object v2, p1, Lcom/appsflyer/internal/h;->onInstallConversionFailureNative:Ljava/lang/String;

    .line 51046
    nop

    .line 51063
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "server_request"

    invoke-virtual {v1, v0, v2, v3}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 51048
    :try_start_72
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Lcom/appsflyer/internal/h;)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 51058
    return-void

    .line 51049
    :catch_76
    move-exception v0

    .line 51050
    const-string v1, "Exception in sendRequestToServer. "

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51051
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "useHttpFallback"

    invoke-virtual {v1, v2, v4}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 51052
    if-eqz v1, :cond_9b

    .line 51053
    nop

    .line 51065
    iget-object v0, p1, Lcom/appsflyer/internal/h;->onInstallConversionFailureNative:Ljava/lang/String;

    .line 51053
    const-string v1, "https:"

    const-string v2, "http:"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/h;->values(Ljava/lang/String;)Lcom/appsflyer/internal/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Lcom/appsflyer/internal/h;)V

    return-void

    .line 51055
    :cond_9b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "failed to send request to server. "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 51056
    throw v0
.end method

.method private AFKeystoreWrapper()Z
    .registers 12

    .line 1372
    iget-wide v0, p0, Lcom/appsflyer/internal/af;->onDeepLinking:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_93

    .line 1373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1374
    iget-wide v3, p0, Lcom/appsflyer/internal/af;->onDeepLinking:J

    sub-long/2addr v0, v3

    .line 1375
    nop

    .line 50332
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyy/MM/dd HH:mm:ss.SSS Z"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1375
    nop

    .line 1376
    iget-wide v4, p0, Lcom/appsflyer/internal/af;->onDeepLinking:J

    .line 50333
    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50334
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1376
    nop

    .line 1377
    iget-wide v7, p0, Lcom/appsflyer/internal/af;->onValidateInApp:J

    .line 50335
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50336
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1377
    nop

    .line 1379
    iget-wide v5, p0, Lcom/appsflyer/internal/af;->AppsFlyerInAppPurchaseValidatorListener:J

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    cmp-long v10, v0, v5

    if-gez v10, :cond_74

    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v5

    if-nez v5, :cond_74

    .line 1380
    nop

    .line 1381
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v3, v6, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    iget-wide v0, p0, Lcom/appsflyer/internal/af;->AppsFlyerInAppPurchaseValidatorListener:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v8

    const-string v0, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 1383
    return v9

    .line 1385
    :cond_74
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v5

    if-nez v5, :cond_92

    .line 1386
    nop

    .line 1387
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v3, v6, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    const-string v0, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 1390
    :cond_92
    goto :goto_9e

    .line 1391
    :cond_93
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 1392
    const-string v0, "Sending first launch for this session!"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 1395
    :cond_9e
    :goto_9e
    return v2
.end method

.method public static AFKeystoreWrapper(Landroid/content/Context;)Z
    .registers 2

    .line 2412
    invoke-static {p0}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2414
    const-string v0, "appsFlyerCount"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static AFKeystoreWrapper(Landroid/content/SharedPreferences;)Z
    .registers 3

    .line 2005
    const-string v0, "sentSuccessfully"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;Landroid/content/SharedPreferences;)Z
    .registers 3

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/af;->valueOf(Lcom/appsflyer/internal/h;Landroid/content/SharedPreferences;)Z

    move-result p0

    return p0
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/af;Z)Z
    .registers 2

    .line 116
    iput-boolean p1, p0, Lcom/appsflyer/internal/af;->AppsFlyerConversionListener:Z

    return p1
.end method

.method static synthetic AFLogger$LogLevel(Lcom/appsflyer/internal/af;)Z
    .registers 1

    .line 116
    iget-boolean p0, p0, Lcom/appsflyer/internal/af;->AppsFlyerConversionListener:Z

    return p0
.end method

.method static synthetic AFVersionDeclaration(Lcom/appsflyer/internal/af;)J
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/appsflyer/internal/af;->updateServerUninstallToken:J

    return-wide v0
.end method

.method private static AFVersionDeclaration(Landroid/content/Context;)Z
    .registers 4

    .line 2287
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    .line 2288
    if-nez v1, :cond_c

    .line 2289
    return v0

    .line 2294
    :cond_c
    goto :goto_13

    .line 2292
    :catchall_d
    move-exception v1

    .line 2293
    const-string v2, "WARNING:  Google play services is unavailable. "

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2297
    :goto_13
    const/4 v1, 0x0

    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.google.android.gms"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_1d} :catch_1e

    .line 2298
    return v0

    .line 2299
    :catch_1e
    move-exception p0

    .line 2300
    const-string v0, "WARNING:  Google Play Services is unavailable. "

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2303
    return v1
.end method

.method private static AppsFlyer2dXConversionCallback(Landroid/content/Context;)F
    .registers 4

    .line 2973
    nop

    .line 2975
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    .line 2976
    const-string v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2977
    const-string v2, "scale"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2e

    .line 2980
    if-eq v0, v1, :cond_2b

    if-ne p0, v1, :cond_23

    goto :goto_2b

    .line 2984
    :cond_23
    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float v0, v0, p0

    .line 2987
    goto :goto_38

    .line 2981
    :cond_2b
    :goto_2b
    const/high16 p0, 0x42480000    # 50.0f

    return p0

    .line 2985
    :catchall_2e
    move-exception p0

    .line 2986
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2989
    :goto_38
    return v0
.end method

.method static synthetic AppsFlyer2dXConversionCallback(Lcom/appsflyer/internal/af;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/appsflyer/internal/af;->AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private AppsFlyer2dXConversionCallback()Z
    .registers 2

    .line 1574
    iget-object v0, p0, Lcom/appsflyer/internal/af;->getOutOfStore:Ljava/util/Map;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static getLevel(Landroid/content/Context;)Z
    .registers 8

    .line 2994
    const/4 v0, 0x0

    if-eqz p0, :cond_77

    .line 2995
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const-string v3, "Failed collecting ivc data"

    if-lt v1, v2, :cond_3b

    .line 2997
    :try_start_b
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2998
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v2, :cond_35

    aget-object v5, v1, v4

    .line 2999
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 3000
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_32

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_36

    if-nez v5, :cond_32

    .line 3001
    const/4 p0, 0x1

    return p0

    .line 2998
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 3004
    :cond_35
    return v0

    .line 3005
    :catch_36
    move-exception p0

    .line 3006
    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3007
    goto :goto_77

    .line 3008
    :cond_3b
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p0, v1, :cond_77

    .line 3009
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3011
    :try_start_46
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 3012
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 3013
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3015
    :cond_6b
    goto :goto_52

    .line 3016
    :cond_6c
    const-string v1, "tun0"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_72} :catch_73

    .line 3017
    return p0

    .line 3018
    :catch_73
    move-exception p0

    .line 3019
    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3023
    :cond_77
    :goto_77
    return v0
.end method

.method static synthetic getLevel(Lcom/appsflyer/internal/af;)[Lcom/appsflyer/internal/bw;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/appsflyer/internal/af;->onAttributionFailureNative:[Lcom/appsflyer/internal/bw;

    return-object p0
.end method

.method static synthetic init(Lcom/appsflyer/internal/af;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/internal/af;->AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private static init(Landroid/content/Context;)Z
    .registers 5

    .line 2403
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 2404
    const-string v1, "collectAndroidIdForceByUser"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    .line 2405
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 2406
    const-string v3, "collectIMEIForceByUser"

    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 2408
    :goto_1e
    if-nez v0, :cond_28

    invoke-static {p0}, Lcom/appsflyer/internal/af;->AFVersionDeclaration(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_28

    :cond_27
    return v2

    :cond_28
    :goto_28
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 525
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/af;)Lorg/json/JSONObject;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/appsflyer/internal/af;->setAdditionalData:Lorg/json/JSONObject;

    return-object p0
.end method

.method private static valueOf(Lorg/json/JSONObject;)V
    .registers 15

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 332
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 338
    :try_start_16
    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 339
    nop

    :goto_22
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_36

    .line 340
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_33} :catch_37

    .line 339
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 344
    :cond_36
    goto :goto_9

    .line 343
    :catch_37
    move-exception v2

    .line 345
    goto :goto_9

    .line 348
    :cond_39
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 350
    nop

    .line 352
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v4, v2

    .line 353
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ac

    if-nez v4, :cond_ac

    .line 354
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 357
    :try_start_51
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 360
    const/4 v7, 0x0

    :goto_5d
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_a9

    .line 361
    nop

    .line 362
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-eqz v12, :cond_a6

    .line 363
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    cmp-long v13, v8, v11

    if-eqz v13, :cond_a6

    .line 364
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v10

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10
    :try_end_9c
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_9c} :catch_aa

    cmp-long v4, v8, v10

    if-nez v4, :cond_a1

    goto :goto_a6

    .line 369
    :cond_a1
    nop

    .line 360
    add-int/lit8 v7, v7, 0x1

    move-object v4, v5

    goto :goto_5d

    .line 366
    :cond_a6
    :goto_a6
    nop

    .line 367
    move-object v4, v2

    goto :goto_43

    .line 373
    :cond_a9
    goto :goto_43

    .line 372
    :catch_aa
    move-exception v5

    .line 374
    goto :goto_43

    .line 376
    :cond_ac
    if-eqz v4, :cond_b1

    .line 377
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 379
    :cond_b1
    return-void
.end method

.method private valueOf(Landroid/content/Context;)Z
    .registers 14

    .line 816
    const-string v0, "com.appsflyer.lvl.AppsFlyerLVL"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 817
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 818
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/appsflyer/internal/af;->getOutOfStore:Ljava/util/Map;

    .line 819
    new-instance v4, Lcom/appsflyer/internal/af$5;

    invoke-direct {v4, p0, v2, v3}, Lcom/appsflyer/internal/af$5;-><init>(Lcom/appsflyer/internal/af;J)V
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_16} :catch_8c

    .line 40017
    const/4 v5, 0x1

    :try_start_17
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40018
    const-string v6, "com.appsflyer.lvl.AppsFlyerLVL$resultListener"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 40020
    const-string v7, "checkLicense"

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v1

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v5

    const/4 v10, 0x2

    aput-object v6, v9, v10

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 40022
    new-instance v7, Lcom/appsflyer/internal/y$5;

    invoke-direct {v7, v4}, Lcom/appsflyer/internal/y$5;-><init>(Lcom/appsflyer/internal/y$e;)V

    .line 40069
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    new-array v11, v5, [Ljava/lang/Class;

    aput-object v6, v11, v1

    invoke-static {v9, v11, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    .line 40070
    const/4 v7, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v1

    aput-object p1, v8, v5

    aput-object v6, v8, v10

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_56} :catch_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_56} :catch_71
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_56} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_56} :catch_57

    goto :goto_8a

    .line 40084
    :catch_57
    move-exception p1

    .line 40086
    :try_start_58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1}, Lcom/appsflyer/internal/y$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8b

    .line 40080
    :catch_64
    move-exception p1

    .line 40082
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1}, Lcom/appsflyer/internal/y$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8a

    .line 40076
    :catch_71
    move-exception p1

    .line 40078
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1}, Lcom/appsflyer/internal/y$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8a

    .line 40072
    :catch_7e
    move-exception p1

    .line 40074
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1}, Lcom/appsflyer/internal/y$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_58 .. :try_end_8a} :catch_8c

    .line 40088
    :goto_8a
    nop

    .line 842
    :goto_8b
    return v5

    .line 844
    :catch_8c
    move-exception p1

    .line 845
    return v1
.end method

.method private valueOf(Lcom/appsflyer/internal/h;Landroid/content/SharedPreferences;)Z
    .registers 7

    .line 1519
    nop

    .line 50337
    const-string v0, "appsFlyerCount"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    .line 1519
    nop

    .line 1522
    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    instance-of p1, p1, Lcom/appsflyer/internal/bg;

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 1525
    :goto_13
    const-string v3, "newGPReferrerSent"

    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 1526
    if-nez p2, :cond_1f

    if-ne v0, v2, :cond_1f

    const/4 p2, 0x1

    goto :goto_20

    :cond_1f
    const/4 p2, 0x0

    .line 1528
    :goto_20
    if-nez p2, :cond_26

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    return v1

    :cond_26
    :goto_26
    return v2
.end method

.method private static valueOf(Ljava/io/File;)Z
    .registers 1

    .line 2569
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic values(Lcom/appsflyer/internal/af;)J
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/appsflyer/internal/af;->onValidateInAppFailure:J

    return-wide v0
.end method

.method static synthetic values(Lcom/appsflyer/internal/af;J)J
    .registers 3

    .line 116
    iput-wide p1, p0, Lcom/appsflyer/internal/af;->updateServerUninstallToken:J

    return-wide p1
.end method

.method private static values(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2544
    nop

    .line 2547
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 2548
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_42
    .catchall {:try_start_2 .. :try_end_c} :catchall_29

    .line 2549
    :try_start_c
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 2550
    const-string v3, "Found PreInstall property!"

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 2551
    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_18} :catch_27
    .catchall {:try_start_c .. :try_end_18} :catchall_25

    .line 2559
    :try_start_18
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    .line 2563
    goto :goto_24

    .line 2561
    :catchall_1c
    move-exception p1

    .line 2562
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2551
    :goto_24
    return-object p0

    .line 2554
    :catchall_25
    move-exception p0

    goto :goto_2b

    .line 2552
    :catch_27
    move-exception p1

    goto :goto_44

    .line 2554
    :catchall_29
    move-exception p0

    move-object v2, v0

    .line 2555
    :goto_2b
    :try_start_2b
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_61

    .line 2558
    if-eqz v2, :cond_41

    .line 2559
    :try_start_34
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_41

    .line 2561
    :catchall_38
    move-exception p0

    .line 2562
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2564
    goto :goto_60

    .line 2563
    :cond_41
    :goto_41
    goto :goto_60

    .line 2552
    :catch_42
    move-exception p1

    move-object v2, v0

    .line 2553
    :goto_44
    :try_start_44
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "PreInstall file wasn\'t found: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_61

    .line 2558
    if-eqz v2, :cond_41

    .line 2559
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_38

    goto :goto_41

    .line 2565
    :goto_60
    return-object v0

    .line 2557
    :catchall_61
    move-exception p0

    .line 2558
    if-eqz v2, :cond_71

    .line 2559
    :try_start_64
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_71

    .line 2561
    :catchall_68
    move-exception p1

    .line 2562
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_72

    .line 2563
    :cond_71
    :goto_71
    nop

    .line 2564
    :goto_72
    goto :goto_74

    :goto_73
    throw p0

    :goto_74
    goto :goto_73
.end method

.method private static values(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 2183
    if-nez p0, :cond_4

    .line 2184
    const/4 p0, 0x0

    return-object p0

    .line 2188
    :cond_4
    nop

    .line 2190
    const-string v0, "fb\\d*?://authorize.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 2191
    const-string v0, "access_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 2192
    nop

    .line 50787
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 50788
    const/4 v2, -0x1

    if-ne v1, v2, :cond_22

    .line 50789
    const-string v1, ""

    goto :goto_26

    .line 50791
    :cond_22
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2192
    :goto_26
    nop

    .line 2193
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2e

    .line 2194
    return-object p0

    .line 2196
    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2197
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2198
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_4c

    .line 2200
    :cond_49
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2203
    :goto_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2204
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2206
    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_84

    .line 2207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2208
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 2209
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_55

    .line 2211
    :cond_6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_75

    .line 2212
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_80

    .line 2213
    :cond_75
    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_80

    .line 2214
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2216
    :cond_80
    :goto_80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2218
    goto :goto_55

    .line 2220
    :cond_84
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2225
    :cond_8d
    return-object p0
.end method

.method private static values(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2461
    const/16 v0, 0x80

    :try_start_2
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 2462
    if-eqz p1, :cond_15

    .line 2463
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2464
    if-eqz p1, :cond_15

    .line 2465
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_16

    return-object p0

    .line 2470
    :cond_15
    goto :goto_2f

    .line 2468
    :catchall_16
    move-exception p1

    .line 2469
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not find "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " value in the manifest"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2471
    :goto_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method private values(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 2667
    invoke-static {p2}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2668
    const-string v1, "appsFlyerFirstInstall"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2669
    if-nez v0, :cond_36

    .line 2670
    invoke-static {p2}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2671
    const-string v0, "AppsFlyer: first launch detected"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 2672
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_26

    .line 2674
    :cond_23
    const-string p1, ""

    move-object v0, p1

    .line 2676
    :goto_26
    nop

    .line 50805
    invoke-static {p2}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 50806
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 50807
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50808
    nop

    .line 50810
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2679
    :cond_36
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppsFlyer: first launch date: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 2681
    return-object v0
.end method

.method private static values(Landroid/content/Context;)V
    .registers 5

    .line 1014
    nop

    .line 1016
    invoke-static {}, Lcom/appsflyer/internal/ac;->AFKeystoreWrapper()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1017
    const/16 v0, 0x17

    .line 1018
    const-string v1, "OPPO device found"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    goto :goto_11

    .line 1016
    :cond_f
    const/16 v0, 0x12

    .line 1021
    :goto_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_c8

    const-string v0, "keyPropDisableAFKeystore"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/af;->values(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c8

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OS SDK is="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; use KeyStore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 1023
    new-instance v0, Lcom/appsflyer/AFKeystoreWrapper;

    invoke-direct {v0, p0}, Lcom/appsflyer/AFKeystoreWrapper;-><init>(Landroid/content/Context;)V

    .line 1024
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName()Z

    move-result v2

    if-nez v2, :cond_59

    .line 1025
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object p0

    .line 43069
    iput-object p0, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper:Ljava/lang/String;

    .line 43070
    const/4 p0, 0x0

    iput p0, v0, Lcom/appsflyer/AFKeystoreWrapper;->values:I

    .line 43071
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AFKeystoreWrapper;->valueOf(Ljava/lang/String;)V

    .line 1025
    goto :goto_a6

    .line 1027
    :cond_59
    nop

    .line 43078
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p0

    .line 43079
    iget-object v2, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v2

    .line 43080
    :try_start_61
    iget v3, v0, Lcom/appsflyer/AFKeystoreWrapper;->values:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/appsflyer/AFKeystoreWrapper;->values:I

    .line 43081
    nop

    .line 43161
    const-string v1, "Deleting key with alias: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_61 .. :try_end_74} :catchall_c5

    .line 43163
    :try_start_74
    iget-object v1, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v1
    :try_end_77
    .catch Ljava/security/KeyStoreException; {:try_start_74 .. :try_end_77} :catch_81
    .catchall {:try_start_74 .. :try_end_77} :catchall_c5

    .line 43164
    :try_start_77
    iget-object v3, v0, Lcom/appsflyer/AFKeystoreWrapper;->valueOf:Ljava/security/KeyStore;

    invoke-virtual {v3, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 43165
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_7e

    goto :goto_9e

    :catchall_7e
    move-exception p0

    :try_start_7f
    monitor-exit v1

    throw p0
    :try_end_81
    .catch Ljava/security/KeyStoreException; {:try_start_7f .. :try_end_81} :catch_81
    .catchall {:try_start_7f .. :try_end_81} :catchall_c5

    .line 43166
    :catch_81
    move-exception p0

    .line 43167
    :try_start_82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " occurred"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43082
    :goto_9e
    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_82 .. :try_end_9f} :catchall_c5

    .line 43083
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AFKeystoreWrapper;->valueOf(Ljava/lang/String;)V

    .line 1029
    :goto_a6
    const-string p0, "KSAppsFlyerId"

    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->valueOf()Ljava/lang/String;

    move-result-object v1

    .line 43517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string p0, "KSAppsFlyerRICounter"

    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 44517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    return-void

    .line 43082
    :catchall_c5
    move-exception p0

    monitor-exit v2

    throw p0

    .line 1032
    :cond_c8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "OS SDK is="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "; no KeyStore usage"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 1034
    return-void
.end method

.method private values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1250
    new-instance v0, Lcom/appsflyer/internal/bl;

    invoke-direct {v0}, Lcom/appsflyer/internal/bl;-><init>()V

    .line 50300
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, v0, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 50301
    :cond_f
    nop

    .line 1250
    nop

    .line 50302
    iput-object p2, v0, Lcom/appsflyer/internal/h;->AFVersionDeclaration:Ljava/lang/String;

    .line 50303
    nop

    .line 1250
    nop

    .line 50304
    iput-object p3, v0, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Ljava/util/Map;

    .line 50305
    nop

    .line 1250
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1f

    check-cast p1, Landroid/app/Activity;

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Lcom/appsflyer/internal/h;Landroid/app/Activity;)V

    .line 1252
    return-void
.end method

.method private static values(Landroid/content/Context;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2010
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2011
    if-eqz p0, :cond_2c

    .line 2012
    nop

    .line 2013
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 2014
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    .line 2015
    packed-switch p0, :pswitch_data_2e

    const-string p0, ""

    goto :goto_27

    .line 2023
    :pswitch_19
    nop

    .line 2024
    const-string p0, "lr"

    goto :goto_27

    .line 2020
    :pswitch_1d
    nop

    .line 2021
    const-string p0, "pr"

    goto :goto_27

    .line 2026
    :pswitch_21
    const-string p0, "l"

    goto :goto_27

    .line 2017
    :pswitch_24
    nop

    .line 2018
    const-string p0, "p"

    .line 2029
    :goto_27
    const-string v0, "sc_o"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    :cond_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
    .end packed-switch
.end method

.method private values(Lcom/appsflyer/internal/h;)V
    .registers 7

    .line 1340
    nop

    .line 50326
    iget-object v0, p1, Lcom/appsflyer/internal/h;->AFVersionDeclaration:Ljava/lang/String;

    .line 1340
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1342
    :goto_a
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventType()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1343
    const-string p1, "CustomerUserId not set, reporting is disabled"

    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    .line 1344
    return-void

    .line 1348
    :cond_16
    if-eqz v0, :cond_43

    .line 1350
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 1351
    const-string v3, "launchProtectEnabled"

    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1352
    if-eqz v0, :cond_38

    .line 1353
    invoke-direct {p0}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1354
    nop

    .line 50327
    iget-object p1, p1, Lcom/appsflyer/internal/h;->values:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 1354
    nop

    .line 1355
    if-eqz p1, :cond_37

    .line 1356
    sget v0, Lcom/appsflyer/attribution/RequestError;->EVENT_TIMEOUT:I

    sget-object v1, Lcom/appsflyer/internal/at;->valueOf:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 1358
    :cond_37
    return-void

    .line 1361
    :cond_38
    const-string v0, "Allowing multiple launches within a 5 second time window."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 1363
    :cond_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appsflyer/internal/af;->onDeepLinking:J

    .line 50328
    :cond_43
    sget-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    if-nez v0, :cond_4e

    .line 50329
    new-instance v0, Lcom/appsflyer/internal/n;

    invoke-direct {v0}, Lcom/appsflyer/internal/n;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 50331
    :cond_4e
    sget-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 1366
    invoke-virtual {v0}, Lcom/appsflyer/internal/n;->values()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 1367
    new-instance v2, Lcom/appsflyer/internal/af$a;

    invoke-direct {v2, p0, p1, v1}, Lcom/appsflyer/internal/af$a;-><init>(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;B)V

    .line 1368
    const-wide/16 v3, 0x0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4, p1}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 1369
    return-void
.end method

.method private values()Z
    .registers 2

    .line 1570
    iget-object v0, p0, Lcom/appsflyer/internal/af;->waitForCustomerUserId:Ljava/util/Map;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static values(Ljava/lang/String;Z)Z
    .registers 3

    .line 529
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final AFInAppEventParameterName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 2628
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2629
    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 2630
    nop

    .line 50794
    if-nez p1, :cond_12

    .line 50795
    move-object v0, v1

    goto :goto_21

    .line 50797
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CHANNEL"

    invoke-static {v2, v0, p1}, Lcom/appsflyer/internal/af;->values(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 2632
    :cond_21
    :goto_21
    if-eqz v0, :cond_2c

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 2633
    return-object v1

    .line 2635
    :cond_2c
    return-object v0
.end method

.method public final AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2656
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2657
    const-string v1, "CACHED_CHANNEL"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2658
    const/4 p1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2661
    :cond_12
    nop

    .line 50798
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 50799
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 50800
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50801
    nop

    .line 50803
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2662
    return-object p2
.end method

.method public final AFInAppEventType(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 282
    nop

    .line 283
    const-string v0, "appsflyer_preinstall"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 284
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4502
    :try_start_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4504
    const-string v2, "pid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4505
    const-string v1, "preInstallName"

    .line 4517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4505
    goto :goto_30

    .line 4507
    :cond_24
    const-string v0, "Cannot set preinstall attribution data without a media source"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_29} :catch_2a

    .line 4511
    goto :goto_30

    .line 4509
    :catch_2a
    move-exception v0

    .line 4510
    const-string v1, "Error parsing JSON for preinstall"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    :cond_30
    :goto_30
    const-string v0, "****** onReceive called *******"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    .line 290
    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 291
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Play store referrer: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 293
    if-eqz p2, :cond_bf

    .line 294
    nop

    .line 5486
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5487
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 5488
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5489
    nop

    .line 6426
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 7155
    const-string v1, "AF_REFERRER"

    invoke-virtual {v0, v1, p2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7156
    iput-object p2, v0, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventType:Ljava/lang/String;

    .line 299
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->AFKeystoreWrapper()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 300
    const-string v0, "onReceive: isLaunchCalled"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 301
    nop

    .line 7399
    new-instance v0, Lcom/appsflyer/internal/bd;

    invoke-direct {v0}, Lcom/appsflyer/internal/bd;-><init>()V

    .line 8053
    if-eqz p1, :cond_87

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, v0, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 8054
    :cond_87
    nop

    .line 7399
    nop

    .line 7400
    nop

    .line 8108
    iput-object p2, v0, Lcom/appsflyer/internal/h;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    .line 8109
    nop

    .line 7400
    nop

    .line 7401
    if-eqz p2, :cond_bf

    .line 7402
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x5

    if-le p2, v1, :cond_bf

    .line 7403
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/af;->valueOf(Lcom/appsflyer/internal/h;Landroid/content/SharedPreferences;)Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 9045
    sget-object p1, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    if-nez p1, :cond_ac

    .line 9046
    new-instance p1, Lcom/appsflyer/internal/n;

    invoke-direct {p1}, Lcom/appsflyer/internal/n;-><init>()V

    sput-object p1, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 9048
    :cond_ac
    sget-object p1, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 7404
    invoke-virtual {p1}, Lcom/appsflyer/internal/n;->values()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    .line 7405
    new-instance p2, Lcom/appsflyer/internal/af$a;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/appsflyer/internal/af$a;-><init>(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;B)V

    .line 7406
    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 304
    :cond_bf
    return-void
.end method

.method final AFKeystoreWrapper(Lcom/appsflyer/internal/h;Landroid/app/Activity;)V
    .registers 7

    .line 1256
    nop

    .line 50306
    iget-object v0, p1, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 1256
    nop

    .line 1257
    nop

    .line 1259
    const-string v1, ""

    if-eqz p2, :cond_14

    .line 1260
    invoke-static {p2}, Lcom/appsflyer/internal/ao;->values(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2

    .line 1261
    if-eqz p2, :cond_14

    .line 1262
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_15

    .line 1265
    :cond_14
    move-object p2, v1

    :goto_15
    nop

    .line 50307
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "AppsFlyerKey"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1266
    if-nez v2, :cond_35

    .line 1267
    const-string p2, "[LogEvent/Launch] AppsFlyer\'s SDK cannot send any event without providing DevKey."

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 1269
    nop

    .line 50308
    iget-object p1, p1, Lcom/appsflyer/internal/h;->values:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 1269
    nop

    .line 1270
    if-eqz p1, :cond_34

    .line 1271
    sget p2, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object v0, Lcom/appsflyer/internal/at;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 1272
    :cond_34
    return-void

    .line 1274
    :cond_35
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1275
    if-nez v0, :cond_40

    goto :goto_41

    :cond_40
    move-object v1, v0

    .line 50309
    :goto_41
    iput-object v1, p1, Lcom/appsflyer/internal/h;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    .line 50310
    nop

    .line 1275
    nop

    .line 1276
    nop

    .line 50311
    iput-object p2, p1, Lcom/appsflyer/internal/h;->AFInAppEventParameterName:Ljava/lang/String;

    .line 50312
    nop

    .line 1275
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/af;->values(Lcom/appsflyer/internal/h;)V

    .line 1277
    return-void
.end method

.method public final varargs addPushNotificationDeepLinkPath([Ljava/lang/String;)V
    .registers 4

    .line 270
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 271
    invoke-static {}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Lcom/appsflyer/internal/f;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/f;->AppsFlyer2dXConversionCallback:Ljava/util/List;

    .line 272
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_13
    return-void
.end method

.method public final anonymizeUser(Z)V
    .registers 6

    .line 1281
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 50313
    const-string v2, "public_api_call"

    const-string v3, "anonymizeUser"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1282
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "deviceTrackingDisabled"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 1283
    return-void
.end method

.method public final appendParametersToDeepLinkingURL(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 253
    invoke-static {}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Lcom/appsflyer/internal/f;

    move-result-object v0

    .line 254
    iput-object p1, v0, Lcom/appsflyer/internal/f;->getLevel:Ljava/lang/String;

    .line 255
    iput-object p2, v0, Lcom/appsflyer/internal/f;->AFVersionDeclaration:Ljava/util/Map;

    .line 256
    return-void
.end method

.method public final enableFacebookDeferredApplinks(Z)V
    .registers 2

    .line 889
    iput-boolean p1, p0, Lcom/appsflyer/internal/af;->setCustomerUserId:Z

    .line 890
    return-void
.end method

.method public final enableLocationCollection(Z)Lcom/appsflyer/AppsFlyerLib;
    .registers 2

    .line 481
    iput-boolean p1, p0, Lcom/appsflyer/internal/af;->getSdkVersion:Z

    .line 482
    return-object p0
.end method

.method public final getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 2759
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 50817
    const-string v2, "public_api_call"

    const-string v3, "getAppsFlyerUID"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2760
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 2687
    :try_start_0
    new-instance v0, Lcom/appsflyer/internal/ae;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/ae;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/appsflyer/internal/ae;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return-object p1

    .line 2688
    :catchall_a
    move-exception p1

    .line 2689
    const-string v0, "Could not collect facebook attribution id. "

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2690
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getHostName()Ljava/lang/String;
    .registers 3

    .line 3047
    nop

    .line 50875
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "custom_host"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3047
    nop

    .line 3049
    if-eqz v0, :cond_f

    .line 3050
    return-object v0

    .line 3052
    :cond_f
    const-string v0, "appsflyer.com"

    return-object v0
.end method

.method public final getHostPrefix()Ljava/lang/String;
    .registers 3

    .line 3057
    nop

    .line 50876
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "custom_host_prefix"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3057
    nop

    .line 3059
    if-eqz v0, :cond_f

    .line 3060
    return-object v0

    .line 3062
    :cond_f
    const-string v0, ""

    return-object v0
.end method

.method public final getOutOfStore(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 579
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "api_store_value"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_d

    .line 581
    return-object v0

    .line 584
    :cond_d
    nop

    .line 24452
    const/4 v0, 0x0

    if-nez p1, :cond_13

    .line 24453
    move-object p1, v0

    goto :goto_21

    .line 24455
    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AF_STORE"

    invoke-static {v2, v1, p1}, Lcom/appsflyer/internal/af;->values(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 584
    :goto_21
    nop

    .line 585
    if-eqz p1, :cond_25

    .line 586
    return-object p1

    .line 589
    :cond_25
    const-string p1, "No out-of-store value set"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 590
    return-object v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .registers 5

    .line 440
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 14181
    const-string v2, "public_api_call"

    const-string v3, "getSdkVersion"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "version: 6.3.0 (build "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/appsflyer/internal/af;->values:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
    .registers 12

    .line 757
    iget-boolean v0, p0, Lcom/appsflyer/internal/af;->setAndroidIdData:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 758
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsflyer/internal/af;->setAndroidIdData:Z

    .line 759
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_79

    .line 760
    nop

    .line 36810
    iget-object v3, p0, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    if-nez v3, :cond_18

    new-instance v3, Lcom/appsflyer/internal/aw;

    invoke-direct {v3, p3}, Lcom/appsflyer/internal/aw;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    .line 36811
    :cond_18
    iget-object v3, p0, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    .line 760
    nop

    .line 37075
    invoke-virtual {v3}, Lcom/appsflyer/internal/aw;->AFKeystoreWrapper()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 38067
    iget-object v3, v3, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "init_ts"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 761
    :cond_34
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    iput-object v3, p0, Lcom/appsflyer/internal/af;->setImeiData:Landroid/app/Application;

    .line 762
    new-instance v3, Lcom/appsflyer/internal/bq;

    new-instance v4, Lcom/appsflyer/internal/af$2;

    invoke-direct {v4, p0}, Lcom/appsflyer/internal/af$2;-><init>(Lcom/appsflyer/internal/af;)V

    invoke-direct {v3, v4}, Lcom/appsflyer/internal/bq;-><init>(Ljava/lang/Runnable;)V

    .line 782
    new-instance v4, Lcom/appsflyer/internal/af$3;

    invoke-direct {v4, p0, v3}, Lcom/appsflyer/internal/af$3;-><init>(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/bq;)V

    .line 793
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/appsflyer/internal/bw;

    aput-object v3, v5, v2

    new-instance v3, Lcom/appsflyer/internal/br;

    invoke-direct {v3, v4}, Lcom/appsflyer/internal/br;-><init>(Ljava/lang/Runnable;)V

    aput-object v3, v5, v0

    new-instance v3, Lcom/appsflyer/internal/bu;

    invoke-direct {v3, v4}, Lcom/appsflyer/internal/bu;-><init>(Ljava/lang/Runnable;)V

    aput-object v3, v5, v1

    iput-object v5, p0, Lcom/appsflyer/internal/af;->onAttributionFailureNative:[Lcom/appsflyer/internal/bw;

    .line 796
    array-length v3, v5

    const/4 v4, 0x0

    :goto_62
    if-ge v4, v3, :cond_6e

    aget-object v6, v5, v4

    iget-object v7, p0, Lcom/appsflyer/internal/af;->setImeiData:Landroid/app/Application;

    invoke-virtual {v6, v7}, Lcom/appsflyer/internal/bw;->AFInAppEventType(Landroid/content/Context;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 797
    :cond_6e
    invoke-direct {p0, p3}, Lcom/appsflyer/internal/af;->valueOf(Landroid/content/Context;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/appsflyer/internal/af;->setPhoneNumber:Z

    .line 798
    iget-object p3, p0, Lcom/appsflyer/internal/af;->setImeiData:Landroid/app/Application;

    .line 39015
    sput-object p3, Lcom/appsflyer/internal/ax;->AFInAppEventParameterName:Landroid/app/Application;

    .line 799
    goto :goto_7e

    .line 800
    :cond_79
    const-string p3, "context is null, Google Install Referrer will be not initialized"

    invoke-static {p3}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 801
    :goto_7e
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object p3

    new-array v3, v1, [Ljava/lang/String;

    aput-object p1, v3, v2

    if-nez p2, :cond_8b

    const-string v4, "null"

    goto :goto_8d

    :cond_8b
    const-string v4, "conversionDataListener"

    :goto_8d
    aput-object v4, v3, v0

    .line 39181
    const-string v4, "public_api_call"

    const-string v5, "init"

    invoke-virtual {p3, v4, v5, v3}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 802
    new-array p3, v1, [Ljava/lang/Object;

    const-string v1, "6.3.0"

    aput-object v1, p3, v2

    sget-object v1, Lcom/appsflyer/internal/af;->values:Ljava/lang/String;

    aput-object v1, p3, v0

    const-string v0, "Initializing AppsFlyer SDK: (v%s.%s)"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    .line 803
    nop

    .line 39517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p3

    const-string v0, "AppsFlyerKey"

    invoke-virtual {p3, v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-static {p1}, Lcom/appsflyer/internal/an;->valueOf(Ljava/lang/String;)V

    .line 805
    sput-object p2, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 806
    return-object p0
.end method

.method public final isPreInstalledApp(Landroid/content/Context;)Z
    .registers 4

    .line 2641
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 2646
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_15

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_14

    .line 2647
    return v1

    .line 2651
    :cond_14
    goto :goto_1b

    .line 2649
    :catch_15
    move-exception p1

    .line 2650
    const-string v1, "Could not check if app is pre installed"

    invoke-static {v1, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2652
    :goto_1b
    return v0
.end method

.method public final isStopped()Z
    .registers 2

    .line 2918
    iget-boolean v0, p0, Lcom/appsflyer/internal/af;->setDebugLog:Z

    return v0
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    .line 1247
    return-void
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/attribution/AppsFlyerRequestListener;",
            ")V"
        }
    .end annotation

    .line 1160
    new-instance v0, Lcom/appsflyer/internal/bl;

    invoke-direct {v0}, Lcom/appsflyer/internal/bl;-><init>()V

    .line 50204
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, v0, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 50205
    :cond_f
    nop

    .line 1160
    nop

    .line 1161
    nop

    .line 50206
    iput-object p2, v0, Lcom/appsflyer/internal/h;->AFVersionDeclaration:Ljava/lang/String;

    .line 50207
    nop

    .line 1161
    const/4 v1, 0x0

    if-nez p3, :cond_1a

    move-object v2, v1

    goto :goto_1f

    :cond_1a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1162
    :goto_1f
    nop

    .line 50208
    iput-object v2, v0, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Ljava/util/Map;

    .line 50209
    nop

    .line 1162
    nop

    .line 1163
    nop

    .line 50210
    iput-object p4, v0, Lcom/appsflyer/internal/h;->values:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 50211
    nop

    .line 1163
    nop

    .line 1164
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, p4, v2

    const/4 v2, 0x1

    .line 50212
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Ljava/util/Map;

    if-nez v4, :cond_40

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto :goto_42

    :cond_40
    iget-object v4, v0, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Ljava/util/Map;

    :goto_42
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1164
    aput-object v3, p4, v2

    .line 50213
    const-string v2, "public_api_call"

    const-string v3, "logEvent"

    invoke-virtual {p3, v2, v3, p4}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1165
    if-eqz p2, :cond_5b

    .line 1166
    invoke-static {p1}, Lcom/appsflyer/internal/z;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/z;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsflyer/internal/z;->valueOf()V

    .line 1168
    :cond_5b
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_62

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    :cond_62
    invoke-virtual {p0, v0, v1}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Lcom/appsflyer/internal/h;Landroid/app/Activity;)V

    .line 1169
    return-void
.end method

.method public final logLocation(Landroid/content/Context;DD)V
    .registers 10

    .line 1082
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 50181
    const-string v2, "public_api_call"

    const-string v3, "logLocation"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1083
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1084
    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p4

    const-string p5, "af_long"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    const-string p3, "af_lat"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    const-string p2, "af_location_coordinates"

    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/af;->values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1088
    return-void
.end method

.method public final logSession(Landroid/content/Context;)V
    .registers 7

    .line 1150
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 50200
    const-string v3, "public_api_call"

    const-string v4, "logSession"

    invoke-virtual {v0, v3, v4, v2}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1152
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    .line 50202
    iput-boolean v1, v0, Lcom/appsflyer/internal/am;->AFInAppEventParameterName:Z

    .line 1153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/appsflyer/internal/af;->values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1154
    return-void
.end method

.method public final onPause(Landroid/content/Context;)V
    .registers 3

    .line 446
    sget-object v0, Lcom/appsflyer/internal/ah;->AFInAppEventType:Lcom/appsflyer/internal/ah$e;

    if-eqz v0, :cond_9

    .line 447
    sget-object v0, Lcom/appsflyer/internal/ah;->AFInAppEventType:Lcom/appsflyer/internal/ah$e;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/ah$e;->valueOf(Landroid/content/Context;)V

    .line 449
    :cond_9
    return-void
.end method

.method public final performOnAppAttribution(Landroid/content/Context;Ljava/net/URI;)V
    .registers 5

    .line 221
    const-string v0, "\""

    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_3d

    .line 223
    :cond_f
    if-nez p1, :cond_28

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Context is \""

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/internal/as;->AFInAppEventType(Ljava/lang/String;)V

    return-void

    .line 226
    :cond_28
    invoke-static {}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Lcom/appsflyer/internal/f;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 229
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 226
    invoke-virtual {v0, p1, v1, p2}, Lcom/appsflyer/internal/f;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    .line 231
    return-void

    .line 222
    :cond_3d
    :goto_3d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Link is \""

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/internal/as;->AFInAppEventType(Ljava/lang/String;)V

    return-void
.end method

.method public final registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V
    .registers 6

    .line 1287
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 50315
    const-string v1, "public_api_call"

    const-string v2, "registerConversionListener"

    invoke-virtual {p1, v1, v2, v0}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1288
    nop

    .line 50317
    if-eqz p2, :cond_13

    .line 50320
    sput-object p2, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 1289
    :cond_13
    return-void
.end method

.method public final registerValidatorListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;)V
    .registers 6

    .line 1307
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 50324
    const-string v1, "public_api_call"

    const-string v2, "registerValidatorListener"

    invoke-virtual {p1, v1, v2, v0}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1309
    const-string p1, "registerValidatorListener called"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 1311
    if-nez p2, :cond_1b

    .line 1312
    const-string p1, "registerValidatorListener null listener"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 1313
    return-void

    .line 1315
    :cond_1b
    sput-object p2, Lcom/appsflyer/internal/af;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    .line 1317
    return-void
.end method

.method public final sendAdRevenue(Landroid/content/Context;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1173
    new-instance v0, Lcom/appsflyer/internal/bf;

    invoke-direct {v0}, Lcom/appsflyer/internal/bf;-><init>()V

    .line 1174
    nop

    .line 50215
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, v0, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 50216
    :cond_10
    nop

    .line 1174
    nop

    .line 1175
    nop

    .line 50217
    iput-object p2, v0, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Ljava/util/Map;

    .line 50218
    nop

    .line 1173
    nop

    .line 50219
    nop

    .line 50282
    iget-object p1, v0, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 50219
    nop

    .line 50220
    sget-object p2, Lcom/appsflyer/internal/af;->onInstallConversionDataLoadedNative:Ljava/lang/String;

    .line 50283
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 50284
    sget-object v2, Lcom/appsflyer/internal/af;->onAttributionFailure:Lcom/appsflyer/internal/af;

    .line 50283
    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 50220
    nop

    .line 50221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 50223
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 50224
    nop

    .line 50285
    const-string v2, "appsFlyerCount"

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v2

    .line 50224
    nop

    .line 50225
    nop

    .line 50286
    const-string v5, "appsFlyerAdRevenueCount"

    invoke-static {v1, v5, v4}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v4

    .line 50225
    nop

    .line 50227
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 50228
    nop

    .line 50287
    iget-object v6, v0, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Ljava/util/Map;

    .line 50228
    const-string v7, "ad_network"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50229
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "adrevenue_counter"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50231
    nop

    .line 50288
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string v6, "AppsFlyerKey"

    invoke-virtual {v4, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50231
    nop

    .line 50232
    const-string v6, "af_key"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "launch_counter"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50236
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 50237
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "af_timestamp"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50239
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "uid"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50241
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    const-string v7, "advertiserId"

    invoke-virtual {v6, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50242
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    const-string v9, "advertiserIdEnabled"

    invoke-virtual {v8, v9}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 50244
    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50246
    if-eqz v6, :cond_ce

    .line 50247
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50250
    :cond_ce
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "device"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50251
    invoke-static {p1, v5}, Lcom/appsflyer/internal/af;->values(Landroid/content/Context;Ljava/util/Map;)V

    .line 50254
    :try_start_d8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 50255
    const-string v7, "app_version_code"

    iget v8, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50257
    const-string v7, "yyyy-MM-dd_HHmmssZ"

    .line 50289
    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 50257
    nop

    .line 50259
    iget-wide v6, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 50260
    const-string v9, "install_date"

    .line 50290
    const-string v10, "UTC"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50291
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 50260
    invoke-interface {v5, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50262
    const-string v6, "appsFlyerFirstInstall"

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50263
    if-nez v1, :cond_11f

    .line 50264
    invoke-direct {p0, v8, p1}, Lcom/appsflyer/internal/af;->values(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 50267
    :cond_11f
    const-string p1, "first_launch_date"

    invoke-interface {v5, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_124
    .catchall {:try_start_d8 .. :try_end_124} :catchall_125

    .line 50270
    goto :goto_12b

    .line 50268
    :catchall_125
    move-exception p1

    .line 50269
    const-string v1, "AdRevenue - Exception while collecting app version data "

    invoke-static {v1, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50272
    :goto_12b
    new-instance p1, Lcom/appsflyer/internal/af$c;

    .line 50273
    invoke-virtual {v0, p2}, Lcom/appsflyer/internal/h;->values(Ljava/lang/String;)Lcom/appsflyer/internal/h;

    move-result-object p2

    .line 50274
    invoke-virtual {p2, v5}, Lcom/appsflyer/internal/h;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/h;

    move-result-object p2

    .line 50275
    nop

    .line 50292
    iput v2, p2, Lcom/appsflyer/internal/h;->onDeepLinkingNative:I

    .line 50293
    nop

    .line 50275
    nop

    .line 50276
    nop

    .line 50294
    iput-object v4, p2, Lcom/appsflyer/internal/h;->AFLogger$LogLevel:Ljava/lang/String;

    .line 50295
    nop

    .line 50276
    invoke-direct {p1, p0, p2, v3}, Lcom/appsflyer/internal/af$c;-><init>(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;B)V

    .line 50296
    sget-object p2, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    if-nez p2, :cond_14c

    .line 50297
    new-instance p2, Lcom/appsflyer/internal/n;

    invoke-direct {p2}, Lcom/appsflyer/internal/n;-><init>()V

    sput-object p2, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 50299
    :cond_14c
    sget-object p2, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 50278
    invoke-virtual {p2}, Lcom/appsflyer/internal/n;->values()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p2

    .line 50280
    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, p1, v0, v1, v2}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 1176
    return-void
.end method

.method public final sendPushNotificationData(Landroid/app/Activity;)V
    .registers 18

    .line 627
    move-object/from16 v1, p0

    const-string v0, "c"

    const-string v2, "pid"

    const/4 v3, 0x2

    const-string v4, "public_api_call"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "sendPushNotificationData"

    if-eqz p1, :cond_3e

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_3e

    .line 628
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "activity_intent_"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v6

    .line 27181
    invoke-virtual {v8, v4, v7, v9}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 628
    goto :goto_61

    .line 629
    :cond_3e
    if-eqz p1, :cond_54

    .line 630
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v5, "activity_intent_null"

    aput-object v5, v9, v6

    .line 28181
    invoke-virtual {v8, v4, v7, v9}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 630
    goto :goto_61

    .line 632
    :cond_54
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/String;

    const-string v9, "activity_null"

    aput-object v9, v6, v5

    .line 29181
    invoke-virtual {v8, v4, v7, v6}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 635
    :goto_61
    invoke-static/range {p1 .. p1}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/appsflyer/internal/af;->getInstance:Ljava/lang/String;

    .line 636
    if-eqz v4, :cond_177

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 638
    nop

    .line 639
    iget-object v6, v1, Lcom/appsflyer/internal/af;->onPause:Ljava/util/Map;

    const-string v7, ")"

    if-nez v6, :cond_83

    .line 640
    const-string v0, "pushes: initializing pushes history.."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 641
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v1, Lcom/appsflyer/internal/af;->onPause:Ljava/util/Map;

    move-wide v10, v4

    goto/16 :goto_137

    .line 644
    :cond_83
    :try_start_83
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    const-string v8, "pushPayloadMaxAging"

    const-wide/32 v9, 0x1b7740

    invoke-virtual {v6, v8, v9, v10}, Lcom/appsflyer/AppsFlyerProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 645
    iget-object v6, v1, Lcom/appsflyer/internal/af;->onPause:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_9a
    .catchall {:try_start_83 .. :try_end_9a} :catchall_11b

    move-wide v10, v4

    :goto_9b
    :try_start_9b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_118

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 647
    new-instance v13, Lorg/json/JSONObject;

    iget-object v14, v1, Lcom/appsflyer/internal/af;->getInstance:Ljava/lang/String;

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 648
    new-instance v14, Lorg/json/JSONObject;

    iget-object v15, v1, Lcom/appsflyer/internal/af;->onPause:Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 650
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PushNotificationMeasurement: A previous payload with same PID and campaign was already acknowledged! (old: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 654
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/appsflyer/internal/af;->getInstance:Ljava/lang/String;

    .line 655
    return-void

    .line 659
    :cond_fb
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    sub-long v13, v4, v13

    cmp-long v3, v13, v8

    if-lez v3, :cond_10a

    .line 660
    iget-object v3, v1, Lcom/appsflyer/internal/af;->onPause:Ljava/util/Map;

    invoke-interface {v3, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    :cond_10a
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    cmp-long v3, v13, v10

    if-gtz v3, :cond_116

    .line 665
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v10
    :try_end_116
    .catchall {:try_start_9b .. :try_end_116} :catchall_119

    .line 667
    :cond_116
    const/4 v3, 0x2

    goto :goto_9b

    .line 670
    :cond_118
    goto :goto_137

    .line 668
    :catchall_119
    move-exception v0

    goto :goto_11d

    :catchall_11b
    move-exception v0

    move-wide v10, v4

    .line 669
    :goto_11d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while handling push notification measurement: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 674
    :goto_137
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "pushPayloadHistorySize"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 675
    iget-object v2, v1, Lcom/appsflyer/internal/af;->onPause:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v0, :cond_169

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pushes: removing oldest overflowing push (oldest push:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 677
    iget-object v0, v1, Lcom/appsflyer/internal/af;->onPause:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :cond_169
    iget-object v0, v1, Lcom/appsflyer/internal/af;->onPause:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v1, Lcom/appsflyer/internal/af;->getInstance:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-virtual/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    .line 682
    :cond_177
    return-void
.end method

.method public final setAdditionalData(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 618
    if-eqz p1, :cond_27

    .line 619
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 26181
    const-string v2, "public_api_call"

    const-string v3, "setAdditionalData"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 620
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 621
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerProperties;->setCustomData(Ljava/lang/String;)V

    .line 623
    :cond_27
    return-void
.end method

.method public final setAndroidIdData(Ljava/lang/String;)V
    .registers 6

    .line 475
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 17181
    const-string v2, "public_api_call"

    const-string v3, "setAndroidIdData"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 476
    iput-object p1, p0, Lcom/appsflyer/internal/af;->AFVersionDeclaration:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .registers 6

    .line 1058
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 46181
    const-string v2, "public_api_call"

    const-string v3, "setAppId"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1059
    nop

    .line 46517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    return-void
.end method

.method public final setAppInviteOneLink(Ljava/lang/String;)V
    .registers 6

    .line 606
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 25181
    const-string v2, "public_api_call"

    const-string v3, "setAppInviteOneLink"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 607
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setAppInviteOneLink = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 608
    const-string v0, "oneLinkSlug"

    if-eqz p1, :cond_30

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 609
    :cond_30
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkDomain"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 610
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkVersion"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 611
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkScheme"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 613
    :cond_4b
    nop

    .line 25517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public final setCollectAndroidID(Z)V
    .registers 6

    .line 723
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 32181
    const-string v2, "public_api_call"

    const-string v3, "setCollectAndroidID"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 724
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 32517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "collectAndroidId"

    invoke-virtual {v1, v2, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    .line 33517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "collectAndroidIdForceByUser"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method public final setCollectIMEI(Z)V
    .registers 6

    .line 730
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 34181
    const-string v2, "public_api_call"

    const-string v3, "setCollectIMEI"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 731
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 34517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "collectIMEI"

    invoke-virtual {v1, v2, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    .line 35517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "collectIMEIForceByUser"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public final setCollectOaid(Z)V
    .registers 6

    .line 737
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 36181
    const-string v2, "public_api_call"

    const-string v3, "setCollectOaid"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 738
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    .line 36517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "collectOAID"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public final setCurrencyCode(Ljava/lang/String;)V
    .registers 6

    .line 1076
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 49181
    const-string v2, "public_api_call"

    const-string v3, "setCurrencyCode"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1077
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "currencyCode"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method public final setCustomerIdAndLogSession(Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    .line 548
    if-eqz p2, :cond_8a

    .line 549
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventType()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7a

    .line 551
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 554
    nop

    .line 21521
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "waitForCustomerId"

    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CustomerUserId set: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " - Initializing AppsFlyer Tacking"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    .line 557
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 559
    nop

    .line 560
    nop

    .line 21525
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "AppsFlyerKey"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    if-nez p1, :cond_47

    const-string p1, ""

    :cond_47
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_51

    move-object v1, p2

    check-cast v1, Landroid/app/Activity;

    .line 567
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 559
    :cond_51
    nop

    .line 22331
    new-instance v1, Lcom/appsflyer/internal/bi;

    invoke-direct {v1}, Lcom/appsflyer/internal/bi;-><init>()V

    .line 23053
    if-eqz p2, :cond_61

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    iput-object p2, v1, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 23054
    :cond_61
    nop

    .line 23099
    const/4 p2, 0x0

    iput-object p2, v1, Lcom/appsflyer/internal/h;->AFVersionDeclaration:Ljava/lang/String;

    .line 23100
    nop

    .line 22332
    nop

    .line 22333
    nop

    .line 23127
    iput-object v0, v1, Lcom/appsflyer/internal/h;->AFLogger$LogLevel:Ljava/lang/String;

    .line 23128
    nop

    .line 24062
    iput-object p2, v1, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Ljava/util/Map;

    .line 24063
    nop

    .line 22334
    nop

    .line 22335
    nop

    .line 24108
    iput-object p1, v1, Lcom/appsflyer/internal/h;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    .line 24109
    nop

    .line 24117
    iput-object p2, v1, Lcom/appsflyer/internal/h;->AFInAppEventParameterName:Ljava/lang/String;

    .line 24118
    nop

    .line 22331
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/af;->values(Lcom/appsflyer/internal/h;)V

    .line 570
    return-void

    .line 571
    :cond_7a
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 572
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "waitForCustomerUserId is false; setting CustomerUserID: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    .line 575
    :cond_8a
    return-void
.end method

.method public final setCustomerUserId(Ljava/lang/String;)V
    .registers 6

    .line 1042
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 45181
    const-string v2, "public_api_call"

    const-string v3, "setCustomerUserId"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1043
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setCustomerUserId = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 1044
    nop

    .line 45517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "AppUserId"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    return-void
.end method

.method public final setDebugLog(Z)V
    .registers 2

    .line 458
    if-eqz p1, :cond_5

    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    :goto_7
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V

    .line 459
    return-void
.end method

.method public final setExtension(Ljava/lang/String;)V
    .registers 6

    .line 1064
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 47181
    const-string v2, "public_api_call"

    const-string v3, "setExtension"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1065
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "sdkExtension"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    return-void
.end method

.method public final setHost(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3035
    if-eqz p1, :cond_c

    .line 3036
    nop

    .line 50871
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "custom_host_prefix"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3038
    :cond_c
    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 3039
    nop

    .line 50873
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string v0, "custom_host"

    invoke-virtual {p1, v0, p2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    return-void

    .line 3041
    :cond_1f
    const-string p1, "hostName cannot be null or empty"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 3043
    return-void
.end method

.method public final setImeiData(Ljava/lang/String;)V
    .registers 6

    .line 463
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 15181
    const-string v2, "public_api_call"

    const-string v3, "setImeiData"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 464
    iput-object p1, p0, Lcom/appsflyer/internal/af;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public final setIsUpdate(Z)V
    .registers 6

    .line 1070
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 48181
    const-string v2, "public_api_call"

    const-string v3, "setIsUpdate"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "IS_UPDATE"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 1072
    return-void
.end method

.method public final setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V
    .registers 6

    .line 3028
    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v0

    sget-object v1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 3029
    :goto_11
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 50867
    const-string v0, "public_api_call"

    const-string v3, "log"

    invoke-virtual {v1, v0, v3, v2}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3030
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 50869
    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result p1

    const-string v1, "logLevel"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    .line 3031
    return-void
.end method

.method public final setMinTimeBetweenSessions(I)V
    .registers 5

    .line 3067
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/af;->AppsFlyerInAppPurchaseValidatorListener:J

    .line 3068
    return-void
.end method

.method public final setOaidData(Ljava/lang/String;)V
    .registers 6

    .line 469
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 16181
    const-string v2, "public_api_call"

    const-string v3, "setOaidData"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 470
    sput-object p1, Lcom/appsflyer/internal/ab;->AFInAppEventType:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public final varargs setOneLinkCustomDomain([Ljava/lang/String;)V
    .registers 5

    .line 749
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setOneLinkCustomDomain %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 750
    sput-object p1, Lcom/appsflyer/internal/f;->AFLogger$LogLevel:[Ljava/lang/String;

    .line 751
    return-void
.end method

.method public final setOutOfStore(Ljava/lang/String;)V
    .registers 4

    .line 595
    if-eqz p1, :cond_1e

    .line 596
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 597
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "api_store_value"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Store API set with value: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    .line 599
    return-void

    .line 600
    :cond_1e
    const-string p1, "Cannot set setOutOfStore with null"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public final setPartnerData(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/appsflyer/internal/af;->setAppInviteOneLink:Lcom/appsflyer/internal/au;

    if-nez v0, :cond_b

    new-instance v0, Lcom/appsflyer/internal/au;

    invoke-direct {v0}, Lcom/appsflyer/internal/au;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/af;->setAppInviteOneLink:Lcom/appsflyer/internal/au;

    .line 278
    :cond_b
    iget-object v0, p0, Lcom/appsflyer/internal/af;->setAppInviteOneLink:Lcom/appsflyer/internal/au;

    .line 4019
    if-eqz p1, :cond_90

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto/16 :goto_90

    .line 4023
    :cond_17
    if-eqz p2, :cond_77

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_77

    .line 4029
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting partner data for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 4030
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 4031
    const/16 v2, 0x3e8

    if-le v1, v2, :cond_6c

    .line 4032
    const-string p2, "Partner data 1000 characters limit exceeded"

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 4033
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 4034
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "limit exceeded: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4035
    iget-object v0, v0, Lcom/appsflyer/internal/au;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4036
    return-void

    .line 4037
    :cond_6c
    iget-object v1, v0, Lcom/appsflyer/internal/au;->valueOf:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4038
    iget-object p2, v0, Lcom/appsflyer/internal/au;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-void

    .line 4024
    :cond_77
    :goto_77
    iget-object p2, v0, Lcom/appsflyer/internal/au;->valueOf:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_82

    const-string p1, "Partner data is missing or `null`"

    goto :goto_8c

    :cond_82
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cleared partner data for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_8c
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 4027
    return-void

    .line 4020
    :cond_90
    :goto_90
    const-string p1, "Partner ID is missing or `null`"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 4021
    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .registers 2

    .line 1049
    invoke-static {p1}, Lcom/appsflyer/internal/ai;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/af;->setCustomerIdAndLogSession:Ljava/lang/String;

    .line 1050
    return-void
.end method

.method public final setPreinstallAttribution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2476
    const-string v0, "setPreinstallAttribution API called"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 2477
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2479
    const-string v1, "pid"

    if-eqz p1, :cond_11

    .line 2480
    :try_start_e
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2482
    :cond_11
    if-eqz p2, :cond_1b

    .line 2483
    const-string p1, "c"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1b

    .line 2489
    :catch_19
    move-exception p1

    goto :goto_23

    .line 2485
    :cond_1b
    :goto_1b
    if-eqz p3, :cond_2b

    .line 2486
    const-string p1, "af_siteid"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_22} :catch_19

    goto :goto_2b

    .line 2490
    :goto_23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c

    .line 2491
    :cond_2b
    :goto_2b
    nop

    .line 2493
    :goto_2c
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 2494
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50792
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    const-string p3, "preInstallName"

    invoke-virtual {p2, p3, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    return-void

    .line 2496
    :cond_40
    const-string p1, "Cannot set preinstall attribution data without a media source"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 2498
    return-void
.end method

.method public final varargs setResolveDeepLinkURLs([Ljava/lang/String;)V
    .registers 5

    .line 743
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setResolveDeepLinkURLs %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 744
    sput-object p1, Lcom/appsflyer/internal/f;->AFKeystoreWrapper:[Ljava/lang/String;

    .line 745
    return-void
.end method

.method public final varargs setSharingFilter([Ljava/lang/String;)V
    .registers 9

    .line 235
    if-nez p1, :cond_3

    return-void

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/af;->init:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "all"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 237
    :cond_14
    const-string v0, "[\\d\\w_]{1,45}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    array-length v2, p1

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v2, :cond_45

    aget-object v5, p1, v4

    .line 240
    if-eqz v5, :cond_35

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 241
    :cond_35
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid partner name :"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 239
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 242
    :cond_45
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_56

    new-array p1, v3, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/appsflyer/internal/af;->init:[Ljava/lang/String;

    return-void

    .line 243
    :cond_56
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/appsflyer/internal/af;->init:[Ljava/lang/String;

    .line 244
    return-void
.end method

.method public final setSharingFilterForAllPartners()V
    .registers 4

    .line 248
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "all"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/appsflyer/internal/af;->init:[Ljava/lang/String;

    .line 249
    return-void
.end method

.method public final varargs setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V
    .registers 10

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 693
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 695
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v1

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 31181
    const-string v2, "public_api_call"

    const-string v3, "setUserEmails"

    invoke-virtual {v1, v2, v3, v0}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 697
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->getValue()I

    move-result v1

    const-string v2, "userEmailsCryptType"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    .line 698
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 699
    nop

    .line 700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 702
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_47
    if-ge v4, v2, :cond_6a

    aget-object v3, p2, v4

    .line 703
    sget-object v5, Lcom/appsflyer/internal/af$7;->AFInAppEventParameterName:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_7e

    .line 706
    nop

    .line 707
    invoke-static {v3}, Lcom/appsflyer/internal/ai;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 708
    const-string v3, "sha256_el_arr"

    goto :goto_67

    .line 710
    :pswitch_61
    nop

    .line 711
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v3, "plain_el_arr"

    .line 702
    :goto_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 716
    :cond_6a
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 718
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appsflyer/AppsFlyerProperties;->setUserEmails(Ljava/lang/String;)V

    .line 719
    return-void

    :pswitch_data_7e
    .packed-switch 0x2
        :pswitch_61
    .end packed-switch
.end method

.method public final varargs setUserEmails([Ljava/lang/String;)V
    .registers 5

    .line 686
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    .line 30181
    const-string v1, "public_api_call"

    const-string v2, "setUserEmails"

    invoke-virtual {v0, v1, v2, p1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 687
    sget-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public final start(Landroid/content/Context;)V
    .registers 3

    .line 894
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 895
    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 899
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    .line 900
    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .registers 20

    .line 905
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    sget-object v0, Lcom/appsflyer/internal/ah;->AFInAppEventType:Lcom/appsflyer/internal/ah$e;

    if-eqz v0, :cond_b

    return-void

    .line 906
    :cond_b
    iget-boolean v0, v1, Lcom/appsflyer/internal/af;->setAndroidIdData:Z

    if-nez v0, :cond_20

    .line 907
    const-string v0, "ERROR: AppsFlyer SDK is not initialized! The API call \'start()\' must be called after the \'init(String, AppsFlyerConversionListener)\' API method, which should be called on the Application\'s onCreate."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 911
    if-nez v2, :cond_20

    .line 912
    if-eqz v3, :cond_1f

    .line 913
    sget v0, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object v2, Lcom/appsflyer/internal/at;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 915
    :cond_1f
    return-void

    .line 918
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, v1, Lcom/appsflyer/internal/af;->setImeiData:Landroid/app/Application;

    .line 919
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 40181
    const-string v7, "public_api_call"

    const-string v8, "start"

    invoke-virtual {v0, v7, v8, v5}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 920
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Object;

    const-string v7, "6.3.0"

    aput-object v7, v0, v6

    sget-object v7, Lcom/appsflyer/internal/af;->values:Ljava/lang/String;

    aput-object v7, v0, v4

    const-string v8, "Starting AppsFlyer: (v%s.%s)"

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "Build Number: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 922
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    iget-object v7, v1, Lcom/appsflyer/internal/af;->setImeiData:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/appsflyer/AppsFlyerProperties;->loadProperties(Landroid/content/Context;)V

    .line 923
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v7, "AppsFlyerKey"

    if-nez v0, :cond_80

    .line 924
    nop

    .line 40517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-static/range {p2 .. p2}, Lcom/appsflyer/internal/an;->valueOf(Ljava/lang/String;)V

    goto :goto_9e

    .line 927
    :cond_80
    nop

    .line 40525
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 927
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 928
    const-string v0, "ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the \'init\' API method (should be called on Application\'s onCreate),or in the start() API (should be called on Activity\'s onCreate)."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 931
    if-eqz v3, :cond_9d

    .line 932
    sget v0, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object v2, Lcom/appsflyer/internal/at;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 934
    :cond_9d
    return-void

    .line 937
    :cond_9e
    :goto_9e
    iget-object v0, v1, Lcom/appsflyer/internal/af;->setImeiData:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 40998
    :try_start_a4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 40999
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_d7

    .line 41000
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "appsflyer_backup_rules"

    const-string v9, "xml"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 41001
    if-eqz v0, :cond_d2

    .line 41002
    const-string v0, "appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data"

    invoke-static {v0, v4}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    goto :goto_ef

    .line 41004
    :cond_d2
    const-string v0, "\'allowBackup\' is set to true; appsflyer_backup_rules.xml not detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application\'s <full-backup-content> rules"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_d7} :catch_d8

    .line 41009
    :cond_d7
    goto :goto_ef

    .line 41007
    :catch_d8
    move-exception v0

    .line 41008
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "checkBackupRules Exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 939
    :goto_ef
    iget-boolean v0, v1, Lcom/appsflyer/internal/af;->setCustomerUserId:Z

    if-eqz v0, :cond_1a2

    .line 940
    iget-object v0, v1, Lcom/appsflyer/internal/af;->setImeiData:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 41850
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lcom/appsflyer/internal/af;->waitForCustomerUserId:Ljava/util/Map;

    .line 41851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 41852
    new-instance v9, Lcom/appsflyer/internal/af$4;

    invoke-direct {v9, v1, v7, v8}, Lcom/appsflyer/internal/af$4;-><init>(Lcom/appsflyer/internal/af;J)V

    .line 42033
    :try_start_109
    const-string v7, "com.facebook.FacebookSdk"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 42034
    const-string v8, "sdkInitialize"

    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v6

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 42035
    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v6

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42037
    const-string v7, "com.facebook.applinks.AppLinkData"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 42038
    const-string v8, "com.facebook.applinks.AppLinkData$CompletionHandler"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 42039
    const-string v11, "fetchDeferredAppLinkData"

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    aput-object v14, v13, v6

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v4

    aput-object v8, v13, v5

    invoke-virtual {v7, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 42041
    new-instance v13, Lcom/appsflyer/internal/m$4;

    invoke-direct {v13, v7, v9}, Lcom/appsflyer/internal/m$4;-><init>(Ljava/lang/Class;Lcom/appsflyer/internal/m$d;)V

    .line 42089
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    new-array v14, v4, [Ljava/lang/Class;

    aput-object v8, v14, v6

    invoke-static {v7, v14, v13}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v7

    .line 42093
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v13, "facebook_app_id"

    const-string v14, "string"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 42094
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_173

    .line 42095
    const-string v0, "Facebook app id not defined in resources"

    invoke-interface {v9, v0}, Lcom/appsflyer/internal/m$d;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_1a2

    .line 42097
    :cond_173
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v6

    aput-object v8, v12, v4

    aput-object v7, v12, v5

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_109 .. :try_end_17e} :catch_19a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_109 .. :try_end_17e} :catch_191
    .catch Ljava/lang/ClassNotFoundException; {:try_start_109 .. :try_end_17e} :catch_188
    .catch Ljava/lang/IllegalAccessException; {:try_start_109 .. :try_end_17e} :catch_17f

    goto :goto_1a2

    .line 42106
    :catch_17f
    move-exception v0

    .line 42107
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/appsflyer/internal/m$d;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_1a2

    .line 42104
    :catch_188
    move-exception v0

    .line 42105
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/appsflyer/internal/m$d;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_1a2

    .line 42102
    :catch_191
    move-exception v0

    .line 42103
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/appsflyer/internal/m$d;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_1a2

    .line 42100
    :catch_19a
    move-exception v0

    .line 42101
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/appsflyer/internal/m$d;->AFInAppEventType(Ljava/lang/String;)V

    .line 943
    :cond_1a2
    :goto_1a2
    new-instance v0, Lcom/appsflyer/internal/af$1;

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/af$1;-><init>(Lcom/appsflyer/internal/af;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lcom/appsflyer/internal/ah;->AFInAppEventType(Landroid/content/Context;Lcom/appsflyer/internal/ah$e;)V

    .line 994
    return-void
.end method

.method public final stop(ZLandroid/content/Context;)V
    .registers 8

    .line 431
    iput-boolean p1, p0, Lcom/appsflyer/internal/af;->setDebugLog:Z

    .line 432
    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;

    .line 11158
    :try_start_5
    invoke-static {p2}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 11159
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 11160
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    goto :goto_46

    .line 11162
    :cond_13
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 11163
    array-length v0, p1

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_3f

    aget-object v2, p1, v1

    .line 11164
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found cached request"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 11165
    invoke-static {v2}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Ljava/io/File;)Lcom/appsflyer/internal/i;

    move-result-object v2

    .line 12081
    iget-object v2, v2, Lcom/appsflyer/internal/i;->valueOf:Ljava/lang/String;

    .line 11165
    invoke-static {v2, p2}, Lcom/appsflyer/internal/ag;->values(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_40

    .line 11163
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 11170
    :cond_3f
    goto :goto_46

    .line 11168
    :catch_40
    move-exception p1

    .line 11169
    const-string v0, "Could not cache request"

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    :goto_46
    iget-boolean p1, p0, Lcom/appsflyer/internal/af;->setDebugLog:Z

    if-eqz p1, :cond_5d

    .line 434
    nop

    .line 12493
    invoke-static {p2}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 12494
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 12495
    const-string p2, "is_stop_tracking_used"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 12496
    nop

    .line 13426
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 436
    :cond_5d
    return-void
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;)V
    .registers 3

    .line 260
    invoke-static {}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Lcom/appsflyer/internal/f;

    move-result-object v0

    iput-object p1, v0, Lcom/appsflyer/internal/f;->AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkListener;

    .line 261
    return-void
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V
    .registers 4

    .line 264
    sput-wide p2, Lcom/appsflyer/internal/ar;->onAppOpenAttributionNative:J

    .line 265
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;)V

    .line 266
    return-void
.end method

.method public final unregisterConversionListener()V
    .registers 5

    .line 1301
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 50322
    const-string v2, "public_api_call"

    const-string v3, "unregisterConversionListener"

    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1302
    const/4 v0, 0x0

    sput-object v0, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 1303
    return-void
.end method

.method public final updateServerUninstallToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 453
    new-instance v0, Lcom/appsflyer/internal/az;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/az;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/appsflyer/internal/az;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public final validateAndLogInAppPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2876
    move-object v0, p1

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aput-object v6, v2, v3

    const/4 v3, 0x4

    aput-object v7, v2, v3

    if-nez p7, :cond_21

    const-string v3, ""

    goto :goto_25

    :cond_21
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_25
    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 50864
    const-string v3, "public_api_call"

    const-string v4, "validateAndTrackInAppPurchase"

    invoke-virtual {v1, v3, v4, v2}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2878
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    if-nez v1, :cond_59

    .line 2879
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Validate in app called with parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 2881
    :cond_59
    if-eqz p2, :cond_94

    if-eqz v6, :cond_94

    if-eqz p3, :cond_94

    if-eqz v7, :cond_94

    if-nez v5, :cond_64

    goto :goto_94

    .line 2886
    :cond_64
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/appsflyer/internal/aa;

    .line 2887
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2888
    nop

    .line 50866
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "AppsFlyerKey"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2888
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_80

    check-cast v0, Landroid/app/Activity;

    .line 2895
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    :cond_80
    move-object v0, v10

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/appsflyer/internal/aa;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_9e

    .line 2882
    :cond_94
    :goto_94
    sget-object v0, Lcom/appsflyer/internal/af;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v0, :cond_9e

    .line 2883
    const-string v1, "Please provide purchase parameters"

    invoke-interface {v0, v1}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    return-void

    .line 2897
    :cond_9e
    :goto_9e
    return-void
.end method

.method final valueOf()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3172
    invoke-direct {p0}, Lcom/appsflyer/internal/af;->AppsFlyer2dXConversionCallback()Z

    move-result v1

    const-string v2, "lvl"

    if-eqz v1, :cond_13

    .line 3173
    iget-object v1, p0, Lcom/appsflyer/internal/af;->getOutOfStore:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 3174
    :cond_13
    iget-boolean v1, p0, Lcom/appsflyer/internal/af;->setPhoneNumber:Z

    if-eqz v1, :cond_2a

    .line 3175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/af;->getOutOfStore:Ljava/util/Map;

    .line 3176
    const-string v3, "error"

    const-string v4, "operation timed out."

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3177
    iget-object v1, p0, Lcom/appsflyer/internal/af;->getOutOfStore:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3179
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method final valueOf(Lcom/appsflyer/internal/h;)Ljava/util/Map;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/h;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1578
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "yyyy-MM-dd_HHmmssZ"

    const-string v4, "use cached IMEI: "

    const-string v5, "uid"

    const-string v6, "appid"

    const-string v7, "INSTALL_STORE"

    const-string v8, "gcd"

    const-string v9, "prev_event_name"

    const-string v10, "preInstallName"

    .line 50338
    iget-object v11, v2, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 1578
    nop

    .line 1579
    nop

    .line 50339
    iget-object v12, v2, Lcom/appsflyer/internal/h;->AFLogger$LogLevel:Ljava/lang/String;

    .line 1579
    nop

    .line 1580
    nop

    .line 50340
    iget-object v13, v2, Lcom/appsflyer/internal/h;->AFVersionDeclaration:Ljava/lang/String;

    .line 1580
    nop

    .line 1581
    nop

    .line 50341
    new-instance v14, Lorg/json/JSONObject;

    iget-object v15, v2, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Ljava/util/Map;

    if-nez v15, :cond_2c

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    goto :goto_2e

    :cond_2c
    iget-object v15, v2, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Ljava/util/Map;

    :goto_2e
    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1581
    nop

    .line 1582
    nop

    .line 50342
    iget-object v15, v2, Lcom/appsflyer/internal/h;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    .line 1582
    nop

    .line 1583
    move-object/from16 v16, v3

    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1584
    move-object/from16 v17, v5

    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/h;->AFInAppEventType()Z

    move-result v5

    .line 1585
    nop

    .line 50343
    move-object/from16 v18, v4

    iget-object v4, v2, Lcom/appsflyer/internal/h;->AFInAppEventParameterName:Ljava/lang/String;

    .line 1585
    nop

    .line 1586
    iget-object v2, v2, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    .line 1587
    invoke-static {v11, v2}, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/d$a$d;

    .line 1589
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 1590
    move-object/from16 v19, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v12

    const-string v12, "af_timestamp"

    invoke-interface {v2, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    invoke-static {v11, v6, v7}, Lcom/appsflyer/internal/d;->AFInAppEventType(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 1593
    if-eqz v4, :cond_76

    .line 1594
    const-string v6, "cksm_v1"

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    :cond_76
    :try_start_76
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v4

    if-nez v4, :cond_95

    .line 1599
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "******* sendTrackingWithEvent: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_88

    const-string v6, "Launch"

    goto :goto_89

    :cond_88
    move-object v6, v13

    :goto_89
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    goto :goto_9a

    .line 1601
    :cond_95
    const-string v4, "Reporting has been stopped"

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 1603
    :goto_9a
    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;
    :try_end_9d
    .catchall {:try_start_76 .. :try_end_9d} :catchall_d08

    .line 50344
    :try_start_9d
    invoke-static {v11}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_ae

    .line 50345
    invoke-static {v11}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ae} :catch_af
    .catchall {:try_start_9d .. :try_end_ae} :catchall_d08

    .line 50349
    :cond_ae
    goto :goto_b6

    .line 50347
    :catch_af
    move-exception v0

    move-object v4, v0

    .line 50348
    :try_start_b1
    const-string v6, "Could not create cache directory"

    invoke-static {v6, v4}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b6
    .catchall {:try_start_b1 .. :try_end_b6} :catchall_d08

    .line 1607
    :goto_b6
    :try_start_b6
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1608
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1609
    const-string v6, "android.permission.INTERNET"

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d7

    .line 1610
    const-string v6, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml"

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 1612
    :cond_d7
    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e4

    .line 1613
    const-string v6, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 1615
    :cond_e4
    const-string v6, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f1

    .line 1616
    const-string v4, "Permission android.permission.ACCESS_WIFI_STATE is missing in the AndroidManifest.xml"

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_f1} :catch_f2
    .catchall {:try_start_b6 .. :try_end_f1} :catchall_d08

    .line 1620
    :cond_f1
    goto :goto_f9

    .line 1618
    :catch_f2
    move-exception v0

    move-object v4, v0

    .line 1619
    :try_start_f4
    const-string v6, "Exception while validation permissions. "

    invoke-static {v6, v4}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1622
    :goto_f9
    const-string v4, "af_events_api"

    const-string v6, "1"

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    const-string v4, "brand"

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    const-string v4, "device"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    const-string v4, "product"

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    const-string v4, "sdk"

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    const-string v4, "model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    const-string v4, "deviceType"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    invoke-static {v11, v2}, Lcom/appsflyer/internal/af;->values(Landroid/content/Context;Ljava/util/Map;)V

    .line 1630
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    .line 1631
    nop

    .line 50351
    iget-object v6, v1, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    if-nez v6, :cond_141

    new-instance v6, Lcom/appsflyer/internal/aw;

    invoke-direct {v6, v11}, Lcom/appsflyer/internal/aw;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    .line 50352
    :cond_141
    iget-object v6, v1, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    .line 1631
    nop

    .line 1632
    move-object/from16 p1, v12

    move-object v7, v13

    if-eqz v5, :cond_2c4

    .line 1633
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_199

    .line 1634
    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerProperties;->isOtherSdkStringDisabled()Z

    move-result v9

    if-nez v9, :cond_162

    .line 1635
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AppsFlyer2dXConversionCallback(Landroid/content/Context;)F

    move-result v9

    .line 1636
    const-string v13, "batteryLevel"

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    :cond_162
    invoke-static {v11}, Lcom/appsflyer/internal/af;->values(Landroid/content/Context;)V

    .line 1640
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v9, v13, :cond_174

    const-class v9, Landroid/app/UiModeManager;

    .line 1641
    invoke-virtual {v11, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/UiModeManager;

    goto :goto_17c

    :cond_174
    const-string v9, "uimode"

    .line 1642
    invoke-virtual {v11, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/UiModeManager;

    .line 1643
    :goto_17c
    if-eqz v9, :cond_18c

    invoke-virtual {v9}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v9

    const/4 v13, 0x4

    if-ne v9, v13, :cond_18c

    .line 1645
    const-string v9, "tv"

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    :cond_18c
    invoke-static {v11}, Lcom/appsflyer/internal/bc;->AFKeystoreWrapper(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_199

    .line 1649
    const-string v9, "inst_app"

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    :cond_199
    const-string v9, "timepassedsincelastlaunch"

    .line 50353
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 50355
    const-string v12, "AppsFlyerTimePassedSincePrevLaunch"

    move/from16 v23, v5

    move-object/from16 v24, v6

    const-wide/16 v5, 0x0

    invoke-interface {v13, v12, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 50357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 50360
    move-object/from16 v27, v10

    const-string v10, "AppsFlyerTimePassedSincePrevLaunch"

    invoke-virtual {v1, v11, v10, v5, v6}, Lcom/appsflyer/internal/af;->valueOf(Landroid/content/Context;Ljava/lang/String;J)V

    .line 50364
    const-wide/16 v25, 0x0

    cmp-long v10, v12, v25

    if-lez v10, :cond_1c1

    .line 50365
    sub-long/2addr v5, v12

    .line 50370
    const-wide/16 v12, 0x3e8

    div-long/2addr v5, v12

    goto :goto_1c3

    .line 50367
    :cond_1c1
    const-wide/16 v5, -0x1

    .line 1652
    :goto_1c3
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    nop

    .line 50371
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v6, "oneLinkSlug"

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50372
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    const-string v9, "onelinkVersion"

    invoke-virtual {v6, v9}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50373
    if-eqz v5, :cond_1e6

    .line 50374
    const-string v9, "onelink_id"

    invoke-interface {v2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50376
    :cond_1e6
    if-eqz v6, :cond_1ed

    .line 50377
    const-string v5, "onelink_ver"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    :cond_1ed
    nop

    .line 50381
    iget-object v5, v1, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    .line 50395
    iget-object v5, v5, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1f7
    .catchall {:try_start_f4 .. :try_end_1f7} :catchall_d08

    .line 50381
    nop

    .line 50382
    if-eqz v5, :cond_222

    .line 50384
    :try_start_1fa
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50385
    invoke-static {v6}, Lcom/appsflyer/internal/k;->AFInAppEventParameterName(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    .line 50386
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_220

    .line 50387
    invoke-static {v2}, Lcom/appsflyer/internal/af;->AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 50388
    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50389
    iget-object v5, v1, Lcom/appsflyer/internal/af;->AFLogger$LogLevel:Lcom/appsflyer/internal/aw;

    .line 50396
    iget-object v5, v5, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_220
    .catch Lorg/json/JSONException; {:try_start_1fa .. :try_end_220} :catch_221
    .catchall {:try_start_1fa .. :try_end_220} :catchall_d08

    .line 50392
    :cond_220
    goto :goto_222

    .line 50391
    :catch_221
    move-exception v0

    .line 1655
    :cond_222
    :goto_222
    :try_start_222
    iget-object v5, v1, Lcom/appsflyer/internal/af;->setCustomerIdAndLogSession:Ljava/lang/String;

    if-eqz v5, :cond_22b

    .line 1656
    const-string v6, "phone"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    :cond_22b
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_22f
    .catchall {:try_start_222 .. :try_end_22f} :catchall_d08

    const-string v6, "referrer"

    if-nez v5, :cond_236

    :try_start_233
    invoke-interface {v2, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    :cond_236
    const-string v5, "extraReferrers"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1661
    if-eqz v5, :cond_244

    const-string v8, "extraReferrers"

    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    :cond_244
    invoke-virtual {v4, v11}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1664
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_257

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_257

    .line 1665
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    :cond_257
    const-string v5, "prev_session_dur"

    .line 50398
    move-object/from16 v6, v24

    iget-object v8, v6, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    const-wide/16 v9, 0x0

    invoke-interface {v8, v5, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 1666
    nop

    .line 1667
    cmp-long v5, v12, v9

    if-eqz v5, :cond_271

    .line 1668
    const-string v5, "prev_session_dur"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    :cond_271
    const-string v5, "exception_number"

    .line 50399
    sget-object v8, Lcom/appsflyer/internal/ax;->AFInAppEventParameterName:Landroid/app/Application;

    if-nez v8, :cond_27a

    const-wide/16 v12, -0x1

    goto :goto_288

    .line 50400
    :cond_27a
    sget-object v8, Lcom/appsflyer/internal/ax;->AFInAppEventParameterName:Landroid/app/Application;

    invoke-static {v8}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "exception_number"

    const-wide/16 v12, 0x0

    invoke-interface {v8, v9, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 1669
    :goto_288
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    iget-object v5, v1, Lcom/appsflyer/internal/af;->setAppInviteOneLink:Lcom/appsflyer/internal/au;

    if-eqz v5, :cond_2bc

    .line 50401
    iget-object v8, v5, Lcom/appsflyer/internal/au;->valueOf:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2a2

    const-string v8, "partner_data"

    iget-object v9, v5, Lcom/appsflyer/internal/au;->valueOf:Ljava/util/Map;

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50402
    :cond_2a2
    iget-object v8, v5, Lcom/appsflyer/internal/au;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2bc

    .line 50403
    invoke-static {v2}, Lcom/appsflyer/internal/af;->AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    const-string v9, "partner_data"

    iget-object v10, v5, Lcom/appsflyer/internal/au;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50404
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v5, Lcom/appsflyer/internal/au;->AFInAppEventParameterName:Ljava/util/Map;

    .line 1671
    :cond_2bc
    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v24, v6

    goto/16 :goto_33e

    .line 1672
    :cond_2c4
    move/from16 v23, v5

    move-object/from16 v27, v10

    .line 50407
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 50408
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8
    :try_end_2d0
    .catchall {:try_start_233 .. :try_end_2d0} :catchall_d08

    .line 50411
    const/4 v10, 0x0

    :try_start_2d1
    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_2d5
    .catch Ljava/lang/Exception; {:try_start_2d1 .. :try_end_2d5} :catch_331
    .catchall {:try_start_2d1 .. :try_end_2d5} :catchall_d08

    .line 50413
    const-string v10, "prev_event_timestamp"

    const-string v13, "prev_event_value"

    if-eqz v12, :cond_317

    .line 50414
    :try_start_2db
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V
    :try_end_2e0
    .catch Ljava/lang/Exception; {:try_start_2db .. :try_end_2e0} :catch_331
    .catchall {:try_start_2db .. :try_end_2e0} :catchall_d08

    .line 50415
    move-object/from16 v24, v6

    :try_start_2e2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2e7
    .catch Ljava/lang/Exception; {:try_start_2e2 .. :try_end_2e7} :catch_311
    .catchall {:try_start_2e2 .. :try_end_2e7} :catchall_d08

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    const-wide/16 v3, -0x1

    :try_start_2ed
    invoke-interface {v5, v10, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50416
    const/4 v3, 0x0

    invoke-interface {v5, v13, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50417
    invoke-virtual {v15, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50418
    const-string v3, "prev_event"

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31d

    .line 50425
    :catch_311
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    goto :goto_338

    .line 50413
    :cond_317
    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v24, v6

    .line 50421
    :goto_31d
    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50422
    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v8, v10, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 50424
    nop

    .line 50430
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_32e
    .catch Ljava/lang/Exception; {:try_start_2ed .. :try_end_32e} :catch_32f
    .catchall {:try_start_2ed .. :try_end_32e} :catchall_d08

    .line 50427
    goto :goto_33e

    .line 50425
    :catch_32f
    move-exception v0

    goto :goto_338

    :catch_331
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v24, v6

    :goto_338
    move-object v3, v0

    .line 50426
    :try_start_339
    const-string v4, "Error while processing previous event."

    invoke-static {v4, v3}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1675
    :goto_33e
    const-string v3, "KSAppsFlyerId"

    .line 50432
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1675
    nop

    .line 1676
    const-string v4, "KSAppsFlyerRICounter"

    .line 50433
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1676
    nop

    .line 1677
    if-eqz v3, :cond_36c

    if-eqz v4, :cond_36c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lez v5, :cond_36c

    .line 1678
    const-string v5, "reinstallCounter"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    const-string v4, "originalAppsflyerId"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    :cond_36c
    const-string v3, "additionalCustomData"

    .line 50434
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1682
    nop

    .line 1683
    if-eqz v3, :cond_37e

    .line 1684
    const-string v4, "customData"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37e
    .catchall {:try_start_339 .. :try_end_37e} :catchall_d08

    .line 1688
    :cond_37e
    :try_start_37e
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1689
    if-eqz v3, :cond_391

    .line 1690
    const-string v4, "installer_package"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_391
    .catch Ljava/lang/Exception; {:try_start_37e .. :try_end_391} :catch_392
    .catchall {:try_start_37e .. :try_end_391} :catchall_d08

    .line 1694
    :cond_391
    goto :goto_399

    .line 1692
    :catch_392
    move-exception v0

    move-object v3, v0

    .line 1693
    :try_start_394
    const-string v4, "Exception while getting the app\'s installer package. "

    invoke-static {v4, v3}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1696
    :goto_399
    const-string v3, "sdkExtension"

    move-object/from16 v4, v26

    invoke-virtual {v4, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1697
    if-eqz v3, :cond_3ae

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3ae

    .line 1698
    const-string v5, "sdkExtension"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    :cond_3ae
    invoke-virtual {v1, v11}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1702
    invoke-virtual {v1, v11, v3}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1709
    if-eqz v5, :cond_3be

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c2

    :cond_3be
    if-nez v5, :cond_3c7

    if-eqz v3, :cond_3c7

    .line 1711
    :cond_3c2
    const-string v5, "af_latestchannel"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    :cond_3c7
    nop

    .line 50435
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 50436
    move-object/from16 v5, v21

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3da

    .line 50437
    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_410

    .line 50439
    :cond_3da
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Landroid/content/Context;)Z

    move-result v3

    .line 50440
    if-eqz v3, :cond_3fe

    .line 50443
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    const-string v6, "api_store_value"

    invoke-virtual {v3, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50444
    if-eqz v3, :cond_3ed

    .line 50445
    goto :goto_3ff

    .line 50447
    :cond_3ed
    const-string v3, "AF_STORE"

    .line 50448
    if-eqz v11, :cond_3fe

    .line 50451
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v6, v8}, Lcom/appsflyer/internal/af;->values(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50440
    goto :goto_3ff

    :cond_3fe
    const/4 v3, 0x0

    .line 50441
    :goto_3ff
    nop

    .line 50452
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 50453
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 50454
    invoke-interface {v6, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50455
    nop

    .line 50457
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50442
    nop

    .line 1714
    :goto_410
    nop

    .line 1715
    if-eqz v3, :cond_41c

    .line 1716
    const-string v5, "af_installstore"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    :cond_41c
    nop

    .line 50459
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 50460
    nop

    .line 50483
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    move-object/from16 v6, v27

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50460
    nop

    .line 50461
    if-nez v5, :cond_4c1

    .line 50463
    invoke-interface {v3, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_43d

    .line 50464
    const/4 v5, 0x0

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_4b7

    .line 50466
    :cond_43d
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Landroid/content/Context;)Z

    move-result v3

    .line 50467
    if-eqz v3, :cond_4a5

    .line 50468
    nop

    .line 50484
    const-string v3, "ro.appsflyer.preinstall.path"

    invoke-static {v3}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50485
    invoke-static {v3}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 50487
    invoke-static {v3}, Lcom/appsflyer/internal/af;->valueOf(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_466

    .line 50489
    const-string v3, "AF_PRE_INSTALL_PATH"

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v5, v8}, Lcom/appsflyer/internal/af;->values(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50490
    invoke-static {v3}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 50493
    :cond_466
    invoke-static {v3}, Lcom/appsflyer/internal/af;->valueOf(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_472

    .line 50494
    const-string v3, "/data/local/tmp/pre_install.appsflyer"

    invoke-static {v3}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 50496
    :cond_472
    invoke-static {v3}, Lcom/appsflyer/internal/af;->valueOf(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_47e

    .line 50497
    const-string v3, "/etc/pre_install.appsflyer"

    invoke-static {v3}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 50500
    :cond_47e
    invoke-static {v3}, Lcom/appsflyer/internal/af;->valueOf(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_486

    .line 50501
    const/4 v3, 0x0

    goto :goto_48e

    .line 50504
    :cond_486
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/appsflyer/internal/af;->values(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50468
    :goto_48e
    nop

    .line 50469
    if-eqz v3, :cond_492

    .line 50470
    goto :goto_4a4

    .line 50472
    :cond_492
    const-string v3, "AF_PRE_INSTALL_NAME"

    .line 50506
    if-nez v11, :cond_498

    .line 50507
    const/4 v3, 0x0

    goto :goto_4a4

    .line 50509
    :cond_498
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v5, v8}, Lcom/appsflyer/internal/af;->values(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50472
    :goto_4a4
    move-object v5, v3

    .line 50475
    :cond_4a5
    if-eqz v5, :cond_4b7

    .line 50476
    nop

    .line 50510
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 50511
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 50512
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50513
    nop

    .line 50515
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50479
    :cond_4b7
    :goto_4b7
    if-eqz v5, :cond_4c1

    .line 50480
    nop

    .line 50517
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 50482
    :cond_4c1
    nop

    .line 1719
    nop

    .line 1720
    if-eqz v5, :cond_4ce

    .line 1721
    const-string v3, "af_preinstall_name"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    :cond_4ce
    nop

    .line 50519
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    const-string v5, "api_store_value"

    invoke-virtual {v3, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50520
    if-eqz v3, :cond_4dc

    .line 50521
    goto :goto_4ee

    .line 50523
    :cond_4dc
    const-string v3, "AF_STORE"

    .line 50524
    if-nez v11, :cond_4e2

    .line 50525
    const/4 v3, 0x0

    goto :goto_4ee

    .line 50527
    :cond_4e2
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/af;->values(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1724
    :goto_4ee
    nop

    .line 1725
    if-eqz v3, :cond_4fa

    .line 1726
    const-string v5, "af_currentstore"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4fa
    .catchall {:try_start_394 .. :try_end_4fa} :catchall_d08

    .line 1729
    :cond_4fa
    const-string v3, "appsflyerKey"

    if-eqz v22, :cond_50a

    :try_start_4fe
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_50a

    .line 1730
    move-object/from16 v5, v22

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_520

    .line 1732
    :cond_50a
    const-string v5, "AppsFlyerKey"

    .line 50528
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1732
    nop

    .line 1733
    if-eqz v5, :cond_cfc

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_cfc

    .line 1734
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50529
    :goto_520
    const-string v5, "AppUserId"

    .line 50530
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1742
    nop

    .line 1743
    if-eqz v5, :cond_532

    .line 1744
    const-string v6, "appUserId"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    :cond_532
    const-string v5, "userEmails"

    invoke-virtual {v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1749
    if-eqz v5, :cond_540

    .line 1750
    const-string v6, "user_emails"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_556

    .line 1752
    :cond_540
    const-string v5, "userEmail"

    .line 50531
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1752
    nop

    .line 1753
    if-eqz v5, :cond_556

    .line 1754
    const-string v6, "sha1_el"

    invoke-static {v5}, Lcom/appsflyer/internal/ai;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    :cond_556
    :goto_556
    if-eqz v7, :cond_564

    .line 1759
    const-string v5, "eventName"

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    if-eqz v14, :cond_564

    .line 1761
    const-string v5, "eventValue"

    invoke-interface {v2, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50532
    :cond_564
    nop

    .line 50533
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    move-object/from16 v6, v20

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1765
    if-eqz v5, :cond_57d

    .line 1766
    nop

    .line 50534
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1766
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    :cond_57d
    const-string v5, "currencyCode"

    .line 50535
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1768
    nop

    .line 1769
    if-eqz v5, :cond_5ae

    .line 1770
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_5a9

    .line 1771
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "WARNING: currency code should be 3 characters!!! \'"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\' is not a legal value."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 1773
    :cond_5a9
    const-string v6, "currency"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    :cond_5ae
    const-string v5, "IS_UPDATE"

    .line 50536
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1776
    nop

    .line 1777
    if-eqz v5, :cond_5c0

    .line 1778
    const-string v6, "isUpdate"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    :cond_5c0
    invoke-virtual {v1, v11}, Lcom/appsflyer/AppsFlyerLib;->isPreInstalledApp(Landroid/content/Context;)Z

    move-result v5

    .line 1781
    const-string v6, "af_preinstalled"

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    const-string v5, "collectFacebookAttrId"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5
    :try_end_5d4
    .catchall {:try_start_4fe .. :try_end_5d4} :catchall_d08

    .line 1785
    const/4 v8, 0x0

    if-eqz v5, :cond_5fe

    .line 1788
    :try_start_5d7
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v9, "com.facebook.katana"

    invoke-virtual {v5, v9, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1789
    invoke-virtual {v1, v11}, Lcom/appsflyer/AppsFlyerLib;->getAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5
    :try_end_5e4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d7 .. :try_end_5e4} :catch_5ef
    .catchall {:try_start_5d7 .. :try_end_5e4} :catchall_5e5

    .line 1796
    goto :goto_5f7

    .line 1793
    :catchall_5e5
    move-exception v0

    move-object v5, v0

    .line 1794
    nop

    .line 1795
    :try_start_5e8
    const-string v9, "Exception while collecting facebook\'s attribution ID. "

    invoke-static {v9, v5}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    goto :goto_5f7

    .line 1790
    :catch_5ef
    move-exception v0

    .line 1791
    nop

    .line 1792
    const-string v5, "Exception while collecting facebook\'s attribution ID. "

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 1796
    const/4 v5, 0x0

    .line 1797
    :goto_5f7
    if-eqz v5, :cond_5fe

    .line 1798
    const-string v9, "fb"

    invoke-interface {v2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    :cond_5fe
    nop

    .line 50537
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    .line 50538
    const-string v9, "deviceTrackingDisabled"

    invoke-virtual {v5, v9, v8}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9
    :try_end_609
    .catchall {:try_start_5e8 .. :try_end_609} :catchall_d08

    .line 50540
    const-string v10, "true"

    if-eqz v9, :cond_614

    .line 50541
    :try_start_60d
    const-string v5, "deviceTrackingDisabled"

    invoke-interface {v2, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_769

    .line 50543
    :cond_614
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 50544
    const-string v12, "collectIMEI"

    invoke-virtual {v5, v12, v6}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 50545
    const-string v13, "imeiCached"

    const/4 v14, 0x0

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 50546
    nop

    .line 50547
    if-eqz v12, :cond_69d

    iget-object v12, v1, Lcom/appsflyer/internal/af;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_69d

    .line 50548
    invoke-static {v11}, Lcom/appsflyer/internal/af;->init(Landroid/content/Context;)Z

    move-result v12
    :try_end_634
    .catchall {:try_start_60d .. :try_end_634} :catchall_d08

    if-eqz v12, :cond_6a3

    .line 50550
    :try_start_636
    const-string v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 50551
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "getDeviceId"

    new-array v6, v8, [Ljava/lang/Class;

    invoke-virtual {v14, v15, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v14, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 50552
    if-eqz v6, :cond_656

    .line 50553
    move-object v13, v6

    goto :goto_6a4

    .line 50554
    :cond_656
    if-eqz v13, :cond_66a

    .line 50555
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_65c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_636 .. :try_end_65c} :catch_685
    .catch Ljava/lang/Exception; {:try_start_636 .. :try_end_65c} :catch_66c
    .catchall {:try_start_636 .. :try_end_65c} :catchall_d08

    move-object/from16 v12, v18

    :try_start_65e
    invoke-virtual {v12, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V
    :try_end_665
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_65e .. :try_end_665} :catch_668
    .catch Ljava/lang/Exception; {:try_start_65e .. :try_end_665} :catch_666
    .catchall {:try_start_65e .. :try_end_665} :catchall_d08

    .line 50556
    goto :goto_69c

    .line 50564
    :catch_666
    move-exception v0

    goto :goto_66f

    .line 50558
    :catch_668
    move-exception v0

    goto :goto_688

    .line 50554
    :cond_66a
    const/4 v13, 0x0

    goto :goto_69c

    .line 50564
    :catch_66c
    move-exception v0

    move-object/from16 v12, v18

    :goto_66f
    move-object v6, v0

    .line 50565
    if-eqz v13, :cond_67e

    .line 50566
    :try_start_672
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 50567
    goto :goto_67f

    .line 50565
    :cond_67e
    const/4 v13, 0x0

    .line 50569
    :goto_67f
    const-string v12, "WARNING: other reason: "

    invoke-static {v12, v6}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_69c

    .line 50558
    :catch_685
    move-exception v0

    move-object/from16 v12, v18

    .line 50559
    :goto_688
    if-eqz v13, :cond_696

    .line 50560
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 50561
    goto :goto_697

    .line 50559
    :cond_696
    const/4 v13, 0x0

    .line 50563
    :goto_697
    const-string v6, "WARNING: READ_PHONE_STATE is missing."

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 50570
    :goto_69c
    goto :goto_6a4

    .line 50573
    :cond_69d
    iget-object v6, v1, Lcom/appsflyer/internal/af;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    if-eqz v6, :cond_6a3

    .line 50574
    move-object v13, v6

    goto :goto_6a4

    .line 50578
    :cond_6a3
    const/4 v13, 0x0

    :goto_6a4
    if-eqz v13, :cond_6bd

    .line 50579
    const-string v6, "imeiCached"

    .line 50630
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 50631
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 50632
    invoke-interface {v12, v6, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50633
    nop

    .line 50635
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50580
    const-string v6, "imei"

    invoke-interface {v2, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c2

    .line 50582
    :cond_6bd
    const-string v6, "IMEI was not collected."

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 50586
    :goto_6c2
    const-string v6, "collectAndroidId"

    const/4 v12, 0x1

    invoke-virtual {v5, v6, v12}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 50587
    const-string v6, "androidIdCached"

    const/4 v12, 0x0

    invoke-interface {v9, v6, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50588
    nop

    .line 50589
    if-eqz v5, :cond_71c

    iget-object v5, v1, Lcom/appsflyer/internal/af;->AFVersionDeclaration:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_71c

    .line 50590
    invoke-static {v11}, Lcom/appsflyer/internal/af;->init(Landroid/content/Context;)Z

    move-result v5
    :try_end_6df
    .catchall {:try_start_672 .. :try_end_6df} :catchall_d08

    if-eqz v5, :cond_721

    .line 50592
    :try_start_6e1
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "android_id"

    invoke-static {v5, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50593
    if-eqz v5, :cond_6ee

    .line 50594
    goto :goto_722

    .line 50595
    :cond_6ee
    if-eqz v6, :cond_6fe

    .line 50596
    const-string v5, "use cached AndroidId: "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V
    :try_end_6fd
    .catch Ljava/lang/Exception; {:try_start_6e1 .. :try_end_6fd} :catch_700
    .catchall {:try_start_6e1 .. :try_end_6fd} :catchall_d08

    .line 50597
    goto :goto_71a

    .line 50595
    :cond_6fe
    const/4 v6, 0x0

    goto :goto_71a

    .line 50599
    :catch_700
    move-exception v0

    move-object v5, v0

    .line 50600
    if-eqz v6, :cond_712

    .line 50601
    :try_start_704
    const-string v9, "use cached AndroidId: "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 50602
    goto :goto_713

    .line 50600
    :cond_712
    const/4 v6, 0x0

    .line 50604
    :goto_713
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50605
    :goto_71a
    move-object v5, v6

    goto :goto_722

    .line 50608
    :cond_71c
    iget-object v5, v1, Lcom/appsflyer/internal/af;->AFVersionDeclaration:Ljava/lang/String;

    if-eqz v5, :cond_721

    .line 50609
    goto :goto_722

    .line 50613
    :cond_721
    const/4 v5, 0x0

    :goto_722
    if-eqz v5, :cond_73b

    .line 50614
    const-string v6, "androidIdCached"

    .line 50637
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 50638
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 50639
    invoke-interface {v9, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50640
    nop

    .line 50642
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50615
    const-string v6, "android_id"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_740

    .line 50617
    :cond_73b
    const-string v5, "Android ID was not collected."

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 50619
    :goto_740
    invoke-static {v11}, Lcom/appsflyer/internal/ab;->AFInAppEventType(Landroid/content/Context;)Lcom/appsflyer/internal/d$a$d;

    move-result-object v5

    .line 50620
    if-eqz v5, :cond_769

    .line 50621
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 50622
    const-string v9, "isManual"

    .line 50644
    iget-object v12, v5, Lcom/appsflyer/internal/d$a$d;->values:Ljava/lang/Boolean;

    .line 50622
    invoke-interface {v6, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50623
    const-string v9, "val"

    .line 50645
    iget-object v12, v5, Lcom/appsflyer/internal/d$a$d;->valueOf:Ljava/lang/String;

    .line 50623
    invoke-interface {v6, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50624
    nop

    .line 50646
    iget-object v5, v5, Lcom/appsflyer/internal/d$a$d;->AFInAppEventType:Ljava/lang/Boolean;

    .line 50624
    nop

    .line 50625
    if-eqz v5, :cond_764

    const-string v9, "isLat"

    invoke-interface {v6, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50626
    :cond_764
    const-string v5, "oaid"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_769
    .catchall {:try_start_704 .. :try_end_769} :catchall_d08

    .line 1805
    :cond_769
    :goto_769
    :try_start_769
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v5
    :try_end_772
    .catch Ljava/lang/Exception; {:try_start_769 .. :try_end_772} :catch_77f
    .catchall {:try_start_769 .. :try_end_772} :catchall_d08

    .line 1806
    if-eqz v5, :cond_77c

    .line 1807
    move-object/from16 v6, v17

    :try_start_776
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_779
    .catch Ljava/lang/Exception; {:try_start_776 .. :try_end_779} :catch_77a
    .catchall {:try_start_776 .. :try_end_779} :catchall_d08

    goto :goto_77e

    .line 1808
    :catch_77a
    move-exception v0

    goto :goto_782

    .line 1806
    :cond_77c
    move-object/from16 v6, v17

    .line 1810
    :goto_77e
    goto :goto_799

    .line 1808
    :catch_77f
    move-exception v0

    move-object/from16 v6, v17

    :goto_782
    move-object v5, v0

    .line 1809
    :try_start_783
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "ERROR: could not get uid "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_799
    .catchall {:try_start_783 .. :try_end_799} :catchall_d08

    .line 1813
    :goto_799
    :try_start_799
    const-string v5, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a6
    .catch Ljava/lang/Exception; {:try_start_799 .. :try_end_7a6} :catch_7a7
    .catchall {:try_start_799 .. :try_end_7a6} :catchall_d08

    .line 1816
    goto :goto_7ae

    .line 1814
    :catch_7a7
    move-exception v0

    move-object v5, v0

    .line 1815
    :try_start_7a9
    const-string v9, "Exception while collecting display language name. "

    invoke-static {v9, v5}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7ae
    .catchall {:try_start_7a9 .. :try_end_7ae} :catchall_d08

    .line 1819
    :goto_7ae
    :try_start_7ae
    const-string v5, "lang_code"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7bb
    .catch Ljava/lang/Exception; {:try_start_7ae .. :try_end_7bb} :catch_7bc
    .catchall {:try_start_7ae .. :try_end_7bb} :catchall_d08

    .line 1822
    goto :goto_7c3

    .line 1820
    :catch_7bc
    move-exception v0

    move-object v5, v0

    .line 1821
    :try_start_7be
    const-string v9, "Exception while collecting display language code. "

    invoke-static {v9, v5}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7c3
    .catchall {:try_start_7be .. :try_end_7c3} :catchall_d08

    .line 1825
    :goto_7c3
    :try_start_7c3
    const-string v5, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d0
    .catch Ljava/lang/Exception; {:try_start_7c3 .. :try_end_7d0} :catch_7d1
    .catchall {:try_start_7c3 .. :try_end_7d0} :catchall_d08

    .line 1828
    goto :goto_7d8

    .line 1826
    :catch_7d1
    move-exception v0

    move-object v5, v0

    .line 1827
    :try_start_7d3
    const-string v9, "Exception while collecting country name. "

    invoke-static {v9, v5}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1830
    :goto_7d8
    const-string v5, "platformextension"

    iget-object v9, v1, Lcom/appsflyer/internal/af;->enableLocationCollection:Lcom/appsflyer/internal/aj;

    invoke-virtual {v9}, Lcom/appsflyer/internal/aj;->values()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    invoke-static {v11, v2}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)V

    .line 1835
    nop

    .line 50647
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v12, v16

    invoke-direct {v5, v12, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_7f0
    .catchall {:try_start_7d3 .. :try_end_7f0} :catchall_d08

    .line 1835
    nop

    .line 1838
    :try_start_7f1
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-wide v13, v9, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 1839
    const-string v9, "installDate"

    .line 50648
    const-string v15, "UTC"

    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50649
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 1839
    invoke-interface {v2, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_816
    .catch Ljava/lang/Exception; {:try_start_7f1 .. :try_end_816} :catch_817
    .catchall {:try_start_7f1 .. :try_end_816} :catchall_d08

    .line 1842
    goto :goto_81e

    .line 1840
    :catch_817
    move-exception v0

    move-object v9, v0

    .line 1841
    :try_start_819
    const-string v13, "Exception while collecting install date. "

    invoke-static {v13, v9}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_81e
    .catchall {:try_start_819 .. :try_end_81e} :catchall_d08

    .line 1845
    :goto_81e
    :try_start_81e
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1847
    const-string v13, "versionCode"
    :try_end_82c
    .catchall {:try_start_81e .. :try_end_82c} :catchall_8b3

    move-object/from16 v14, v25

    :try_start_82e
    invoke-interface {v14, v13, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1849
    iget v15, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v15, v13, :cond_849

    .line 1852
    const-string v13, "versionCode"

    iget v15, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 50650
    invoke-static {v11}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 50651
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 50652
    invoke-interface {v8, v13, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50653
    nop

    .line 50655
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1856
    :cond_849
    const-string v8, "app_version_code"

    iget v13, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    const-string v8, "app_version_name"

    iget-object v13, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v2, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85b
    .catchall {:try_start_82e .. :try_end_85b} :catchall_8ab

    .line 1859
    move-object v8, v3

    move-object/from16 v26, v4

    :try_start_85e
    iget-wide v3, v9, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_860
    .catchall {:try_start_85e .. :try_end_860} :catchall_8a5

    .line 1860
    move-object v13, v8

    :try_start_861
    iget-wide v8, v9, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 1861
    const-string v15, "date1"
    :try_end_865
    .catchall {:try_start_861 .. :try_end_865} :catchall_89f

    .line 50657
    move-object/from16 v16, v6

    :try_start_867
    new-instance v6, Ljava/text/SimpleDateFormat;
    :try_end_869
    .catchall {:try_start_867 .. :try_end_869} :catchall_89d

    move-object/from16 v18, v13

    :try_start_86b
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1861
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1862
    invoke-virtual {v6, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1861
    invoke-interface {v2, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    const-string v3, "date2"

    .line 50658
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v12, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1863
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1864
    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1863
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    invoke-direct {v1, v5, v11}, Lcom/appsflyer/internal/af;->values(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1866
    const-string v4, "firstLaunchDate"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89a
    .catchall {:try_start_86b .. :try_end_89a} :catchall_89b

    .line 1869
    goto :goto_8c2

    .line 1867
    :catchall_89b
    move-exception v0

    goto :goto_8bc

    :catchall_89d
    move-exception v0

    goto :goto_8a2

    :catchall_89f
    move-exception v0

    move-object/from16 v16, v6

    :goto_8a2
    move-object/from16 v18, v13

    goto :goto_8bc

    :catchall_8a5
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v18, v8

    goto :goto_8bc

    :catchall_8ab
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v26, v4

    move-object/from16 v16, v6

    goto :goto_8bc

    :catchall_8b3
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v26, v4

    move-object/from16 v16, v6

    move-object/from16 v14, v25

    :goto_8bc
    move-object v3, v0

    .line 1868
    :try_start_8bd
    const-string v4, "Exception while collecting app version data "

    invoke-static {v4, v3}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1871
    :goto_8c2
    invoke-static {v11}, Lcom/appsflyer/internal/az;->values(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/appsflyer/internal/af;->stop:Z

    .line 1875
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "didConfigureTokenRefreshService="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/appsflyer/internal/af;->stop:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 1876
    iget-boolean v3, v1, Lcom/appsflyer/internal/af;->stop:Z

    if-nez v3, :cond_8e7

    .line 1877
    const-string v3, "tokenRefreshConfigured"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    :cond_8e7
    if-eqz v23, :cond_91a

    .line 1883
    iget-object v3, v1, Lcom/appsflyer/internal/af;->getInstance:Ljava/lang/String;

    if-eqz v3, :cond_910

    .line 1884
    const-string v3, "af_deeplink"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8fb

    .line 1885
    const-string v3, "Skip \'af\' payload as deeplink was found by path"

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_910

    .line 1887
    :cond_8fb
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/appsflyer/internal/af;->getInstance:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1888
    const-string v4, "isPush"

    invoke-virtual {v3, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1889
    const-string v4, "af_deeplink"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    :cond_910
    :goto_910
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/appsflyer/internal/af;->getInstance:Ljava/lang/String;

    .line 1894
    const-string v3, "open_referrer"

    move-object/from16 v4, v19

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91a
    .catchall {:try_start_8bd .. :try_end_91a} :catchall_d08

    .line 1898
    :cond_91a
    const-string v3, "sensors"

    if-nez v23, :cond_960

    .line 1900
    :try_start_91e
    invoke-static {v11}, Lcom/appsflyer/internal/z;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/z;

    move-result-object v4

    .line 50659
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 50660
    invoke-virtual {v4}, Lcom/appsflyer/internal/z;->AFInAppEventParameterName()Ljava/util/List;

    move-result-object v4

    .line 50661
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_93e

    .line 50663
    new-instance v6, Lcom/appsflyer/internal/g;

    invoke-direct {v6}, Lcom/appsflyer/internal/g;-><init>()V

    invoke-virtual {v6, v4}, Lcom/appsflyer/internal/g;->AFInAppEventType(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 50664
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50665
    goto :goto_943

    .line 50666
    :cond_93e
    const-string v4, "na"

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50668
    :goto_943
    nop

    .line 1900
    invoke-interface {v2, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_947
    .catch Ljava/lang/Exception; {:try_start_91e .. :try_end_947} :catch_948
    .catchall {:try_start_91e .. :try_end_947} :catchall_d08

    .line 1903
    goto :goto_960

    .line 1901
    :catch_948
    move-exception v0

    move-object v4, v0

    .line 1902
    :try_start_94a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected exception from AFSensorManager: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 1905
    :cond_960
    :goto_960
    const-string v4, "advertiserId"

    .line 50669
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1905
    if-nez v4, :cond_988

    .line 1906
    invoke-static {v11, v2}, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/d$a$d;

    .line 1907
    const-string v4, "advertiserId"

    .line 50670
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1907
    if-eqz v4, :cond_981

    .line 1908
    const-string v4, "GAID_retry"

    invoke-interface {v2, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_988

    .line 1910
    :cond_981
    const-string v4, "GAID_retry"

    const-string v5, "false"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    :cond_988
    :goto_988
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/d$a$d;

    move-result-object v4

    .line 1915
    if-eqz v4, :cond_9a4

    .line 1916
    const-string v5, "amazon_aid"

    .line 50671
    iget-object v6, v4, Lcom/appsflyer/internal/d$a$d;->valueOf:Ljava/lang/String;

    .line 1916
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    const-string v5, "amazon_aid_limit"

    .line 50672
    iget-object v4, v4, Lcom/appsflyer/internal/d$a$d;->AFInAppEventType:Ljava/lang/Boolean;

    .line 1917
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    :cond_9a4
    invoke-static {v14}, Lcom/appsflyer/internal/az;->values(Landroid/content/SharedPreferences;)Z

    move-result v4

    .line 1920
    const-string v5, "registeredUninstall"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    nop

    .line 50673
    const-string v4, "appsFlyerCount"

    move/from16 v5, v23

    invoke-static {v14, v4, v5}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v4

    .line 1921
    nop

    .line 1922
    const-string v6, "counter"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    const-string v6, "iaecounter"

    if-eqz v7, :cond_9ca

    const/4 v7, 0x1

    goto :goto_9cb

    :cond_9ca
    const/4 v7, 0x0

    .line 50674
    :goto_9cb
    const-string v8, "appsFlyerInAppEventCount"

    invoke-static {v14, v8, v7}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v7

    .line 1923
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9d8
    .catchall {:try_start_94a .. :try_end_9d8} :catchall_d08

    .line 1924
    if-eqz v5, :cond_a5b

    .line 1925
    const-string v6, "first_launch"

    packed-switch v4, :pswitch_data_d12

    move-object/from16 v8, v24

    const/4 v9, 0x1

    goto/16 :goto_a5e

    .line 1945
    :pswitch_9e4
    :try_start_9e4
    invoke-static {v2}, Lcom/appsflyer/internal/af;->AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 1947
    nop

    .line 50678
    move-object/from16 v8, v24

    iget-object v9, v8, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    const/4 v10, 0x0

    invoke-interface {v9, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1947
    nop

    .line 1948
    if-eqz v9, :cond_a09

    .line 1949
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1950
    invoke-static {v10}, Lcom/appsflyer/internal/k;->AFInAppEventParameterName(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v9

    .line 1951
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a07

    invoke-interface {v7, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a07
    const/4 v9, 0x1

    goto :goto_a5e

    .line 1948
    :cond_a09
    const/4 v9, 0x1

    goto :goto_a5e

    .line 1928
    :pswitch_a0b
    move-object/from16 v8, v24

    .line 50675
    move-object/from16 v7, v26

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/appsflyer/AppsFlyerProperties;->values:Z

    .line 1929
    const-string v7, "waitForCustomerId"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/appsflyer/internal/af;->values(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_a26

    .line 1930
    const-string v7, "wait_cid"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a27

    .line 1929
    :cond_a26
    const/4 v9, 0x1

    .line 1931
    :goto_a27
    invoke-static {v2}, Lcom/appsflyer/internal/af;->AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 1933
    const-string v10, "ddl"

    .line 50677
    iget-object v12, v8, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    const/4 v13, 0x0

    invoke-interface {v12, v10, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1933
    nop

    .line 1934
    if-eqz v10, :cond_a4b

    .line 1935
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1936
    invoke-static {v12}, Lcom/appsflyer/internal/k;->AFInAppEventParameterName(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v10

    .line 1937
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a4b

    const-string v12, "ddl"

    invoke-interface {v7, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    :cond_a4b
    iget-object v10, v1, Lcom/appsflyer/internal/af;->setAdditionalData:Lorg/json/JSONObject;

    invoke-static {v10}, Lcom/appsflyer/internal/k;->AFInAppEventParameterName(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v10

    .line 1941
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a5e

    invoke-interface {v7, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a5e

    .line 1924
    :cond_a5b
    move-object/from16 v8, v24

    const/4 v9, 0x1

    .line 1956
    :cond_a5e
    :goto_a5e
    const-string v6, "isFirstCall"

    invoke-static {v14}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Landroid/content/SharedPreferences;)Z

    move-result v7

    if-nez v7, :cond_a67

    goto :goto_a68

    :cond_a67
    const/4 v9, 0x0

    :goto_a68
    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    nop

    .line 50679
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 50680
    const-string v7, "cpu_abi"

    const-string v9, "ro.product.cpu.abi"

    invoke-static {v9}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50681
    const-string v7, "cpu_abi2"

    const-string v9, "ro.product.cpu.abi2"

    invoke-static {v9}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50682
    const-string v7, "arch"

    const-string v9, "os.arch"

    invoke-static {v9}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50683
    const-string v7, "build_display_id"

    const-string v9, "ro.build.display.id"

    invoke-static {v9}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50685
    if-eqz v5, :cond_b33

    .line 50686
    iget-boolean v5, v1, Lcom/appsflyer/internal/af;->getSdkVersion:Z

    if-eqz v5, :cond_aea

    .line 50688
    nop

    .line 50716
    sget-object v5, Lcom/appsflyer/internal/v$b;->values:Lcom/appsflyer/internal/v;

    .line 50708
    invoke-virtual {v5, v11}, Lcom/appsflyer/internal/v;->AFInAppEventType(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v5

    .line 50709
    new-instance v7, Ljava/util/HashMap;

    const/4 v9, 0x3

    invoke-direct {v7, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 50710
    if-eqz v5, :cond_add

    .line 50711
    const-string v9, "lat"

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50712
    const-string v9, "lon"

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50713
    const-string v9, "ts"

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50715
    :cond_add
    nop

    .line 50688
    nop

    .line 50689
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_aea

    .line 50690
    const-string v5, "loc"

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50694
    :cond_aea
    nop

    .line 50723
    sget-object v5, Lcom/appsflyer/internal/a$c;->values:Lcom/appsflyer/internal/a;

    .line 50717
    invoke-virtual {v5, v11}, Lcom/appsflyer/internal/a;->AFInAppEventType(Landroid/content/Context;)Lcom/appsflyer/internal/a$d;

    move-result-object v5

    .line 50718
    const-string v7, "btl"

    .line 50724
    iget v9, v5, Lcom/appsflyer/internal/a$d;->AFInAppEventParameterName:F

    .line 50718
    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50719
    nop

    .line 50725
    iget-object v7, v5, Lcom/appsflyer/internal/a$d;->AFInAppEventType:Ljava/lang/String;

    .line 50719
    if-eqz v7, :cond_b08

    .line 50720
    const-string v7, "btch"

    .line 50726
    iget-object v5, v5, Lcom/appsflyer/internal/a$d;->AFInAppEventType:Ljava/lang/String;

    .line 50720
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50697
    :cond_b08
    const/4 v5, 0x2

    if-gt v4, v5, :cond_b33

    .line 50698
    invoke-static {v11}, Lcom/appsflyer/internal/z;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/z;

    move-result-object v4

    .line 50727
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 50728
    invoke-virtual {v4}, Lcom/appsflyer/internal/z;->AFKeystoreWrapper()Ljava/util/List;

    move-result-object v7

    .line 50730
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b22

    .line 50731
    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2f

    .line 50734
    :cond_b22
    invoke-virtual {v4}, Lcom/appsflyer/internal/z;->AFInAppEventParameterName()Ljava/util/List;

    move-result-object v4

    .line 50735
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b2f

    .line 50736
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50739
    :cond_b2f
    :goto_b2f
    nop

    .line 50698
    invoke-interface {v6, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 50702
    :cond_b33
    invoke-static {v11}, Lcom/appsflyer/internal/w;->values(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 50703
    const-string v4, "dim"

    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50706
    const-string v3, "deviceData"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    nop

    .line 50740
    move-object/from16 v3, v18

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50741
    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 50742
    move-object/from16 v7, v16

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 50744
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x7

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 50745
    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 50746
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v12

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50744
    invoke-static {v4}, Lcom/appsflyer/internal/ai;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1962
    nop

    .line 1963
    const-string v6, "af_v"

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    nop

    .line 50747
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50748
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50750
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "installDate"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50751
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "counter"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50752
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "iaecounter"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50753
    invoke-static {v3}, Lcom/appsflyer/internal/ai;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/ai;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1965
    nop

    .line 1966
    const-string v4, "af_v2"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    invoke-static {v11}, Lcom/appsflyer/internal/af;->getLevel(Landroid/content/Context;)Z

    move-result v3

    .line 1970
    const-string v4, "ivc"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    const-string v3, "is_stop_tracking_used"

    invoke-interface {v14, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c35

    .line 1981
    const-string v3, "istu"

    const-string v4, "is_stop_tracking_used"

    const/4 v5, 0x0

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    :cond_c35
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1984
    const-string v4, "mcc"

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    const-string v4, "mnc"

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->mnc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    const-string v4, "cell"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    const-string v3, "sig"

    .line 50754
    iget-object v4, v8, Lcom/appsflyer/internal/aw;->values:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v8, Lcom/appsflyer/internal/aw;->values:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/appsflyer/internal/ac;->valueOf(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1987
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    const-string v3, "last_boot_time"

    .line 50755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1988
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    const-string v3, "disk"

    .line 50756
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 50759
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_cb2

    .line 50760
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    .line 50761
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v7

    mul-long v7, v7, v5

    .line 50762
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v9

    mul-long v9, v9, v5

    .line 50763
    goto :goto_cc4

    .line 50764
    :cond_cb2
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    .line 50765
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    mul-int v6, v6, v5

    int-to-long v7, v6

    .line 50766
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    mul-int v4, v4, v5

    int-to-long v9, v4

    .line 50768
    :goto_cc4
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4
    :try_end_ccc
    .catchall {:try_start_9e4 .. :try_end_ccc} :catchall_d08

    .line 50769
    long-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v4

    double-to-long v6, v6

    .line 50770
    long-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v4

    double-to-long v4, v8

    .line 50771
    :try_start_cd8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1989
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    iget-object v3, v1, Lcom/appsflyer/internal/af;->init:[Ljava/lang/String;

    if-eqz v3, :cond_cfb

    const-string v4, "sharing_filter"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    :cond_cfb
    goto :goto_d11

    .line 1736
    :cond_cfc
    const-string v3, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. "

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 1737
    const-string v3, "AppsFlyer will not track this event."

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V
    :try_end_d06
    .catchall {:try_start_cd8 .. :try_end_d06} :catchall_d08

    .line 1738
    const/4 v2, 0x0

    return-object v2

    .line 1991
    :catchall_d08
    move-exception v0

    move-object v3, v0

    .line 1992
    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1994
    :goto_d11
    return-object v2

    :pswitch_data_d12
    .packed-switch 0x1
        :pswitch_a0b
        :pswitch_9e4
    .end packed-switch
.end method

.method public final valueOf(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14

    .line 385
    const-string v0, "extraReferrers"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "received a new (extra) referrer: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 389
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 391
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 392
    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    if-nez v3, :cond_29

    .line 394
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 395
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    goto :goto_4b

    .line 397
    :cond_29
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 399
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_4b

    .line 401
    :cond_43
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    .line 404
    :goto_4b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x5

    cmp-long v9, v5, v7

    if-gez v9, :cond_59

    .line 405
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 409
    :cond_59
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v5, 0x4

    cmp-long v7, v1, v5

    if-ltz v7, :cond_67

    .line 410
    invoke-static {v3}, Lcom/appsflyer/internal/af;->valueOf(Lorg/json/JSONObject;)V

    .line 413
    :cond_67
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9486
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 9487
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 9488
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9489
    nop

    .line 10426
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_81} :catch_9c
    .catchall {:try_start_f .. :try_end_81} :catchall_82

    .line 421
    return-void

    .line 419
    :catchall_82
    move-exception p1

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t save referrer - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    return-void

    .line 418
    :catch_9c
    move-exception p1

    .line 421
    return-void
.end method

.method public final valueOf(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 5

    .line 507
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 18511
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 18512
    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 18513
    nop

    .line 19426
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 508
    return-void
.end method

.method protected final valueOf(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 2149
    const-string v0, "af_deeplink"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 2150
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/af;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2151
    invoke-static {}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Lcom/appsflyer/internal/f;

    move-result-object v2

    .line 2152
    iget-object v3, v2, Lcom/appsflyer/internal/f;->getLevel:Ljava/lang/String;

    if-eqz v3, :cond_7c

    iget-object v3, v2, Lcom/appsflyer/internal/f;->AFVersionDeclaration:Ljava/util/Map;

    if-eqz v3, :cond_7c

    iget-object v3, v2, Lcom/appsflyer/internal/f;->getLevel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 2153
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2154
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 2155
    iget-object v2, v2, Lcom/appsflyer/internal/f;->AFVersionDeclaration:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2156
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2157
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2158
    goto :goto_3c

    .line 2159
    :cond_67
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2160
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appended_query_params"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    :cond_7c
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2165
    :cond_7f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2166
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    new-instance v1, Lcom/appsflyer/internal/aq;

    invoke-direct {v1, p3, p0, p1}, Lcom/appsflyer/internal/aq;-><init>(Landroid/net/Uri;Lcom/appsflyer/internal/af;Landroid/content/Context;)V

    .line 2168
    iget-boolean v2, v1, Lcom/appsflyer/internal/aq;->AFInAppEventType:Z

    if-eqz v2, :cond_9d

    .line 2169
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "isBrandedDomain"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    :cond_9d
    invoke-static {p1, v0, p3}, Lcom/appsflyer/internal/ac;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)Ljava/util/Map;

    .line 2173
    invoke-virtual {v1}, Lcom/appsflyer/internal/aq;->AFKeystoreWrapper()Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 2174
    nop

    .line 50780
    new-instance p1, Lcom/appsflyer/internal/af$6;

    invoke-direct {p1, v0}, Lcom/appsflyer/internal/af$6;-><init>(Ljava/util/Map;)V

    .line 2174
    nop

    .line 2175
    nop

    .line 50781
    iput-object p1, v1, Lcom/appsflyer/internal/aq;->AFInAppEventParameterName:Lcom/appsflyer/internal/aq$d;

    .line 50783
    sget-object p1, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    if-nez p1, :cond_bb

    .line 50784
    new-instance p1, Lcom/appsflyer/internal/n;

    invoke-direct {p1}, Lcom/appsflyer/internal/n;-><init>()V

    sput-object p1, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 50786
    :cond_bb
    sget-object p1, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 2176
    invoke-virtual {p1}, Lcom/appsflyer/internal/n;->AFInAppEventParameterName()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2177
    return-void

    .line 2178
    :cond_c5
    invoke-static {v0}, Lcom/appsflyer/internal/as;->AFInAppEventType(Ljava/util/Map;)V

    .line 2180
    return-void
.end method

.method final valueOf(Ljava/lang/ref/WeakReference;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1091
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1092
    return-void

    .line 1095
    :cond_7
    const-string v0, "app went to background"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1097
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties(Landroid/content/SharedPreferences;)V

    .line 1100
    iget-wide v1, p0, Lcom/appsflyer/internal/af;->updateServerUninstallToken:J

    iget-wide v3, p0, Lcom/appsflyer/internal/af;->onValidateInAppFailure:J

    sub-long/2addr v1, v3

    .line 1102
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1103
    nop

    .line 50183
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string v5, "AppsFlyerKey"

    invoke-virtual {v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1103
    nop

    .line 1104
    if-nez v4, :cond_3b

    .line 1105
    const-string p1, "[callStats] AppsFlyer\'s SDK cannot send any event without providing DevKey."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 1106
    return-void

    .line 1108
    :cond_3b
    nop

    .line 50184
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v6, "KSAppsFlyerId"

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1108
    nop

    .line 1110
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    const-string v7, "deviceTrackingDisabled"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1111
    if-eqz v6, :cond_59

    .line 1112
    const-string v6, "true"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    :cond_59
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/d$a$d;

    move-result-object v6

    .line 1115
    if-eqz v6, :cond_7d

    .line 1116
    nop

    .line 50185
    iget-object v7, v6, Lcom/appsflyer/internal/d$a$d;->valueOf:Ljava/lang/String;

    .line 1116
    const-string v9, "amazon_aid"

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    nop

    .line 50186
    iget-object v6, v6, Lcom/appsflyer/internal/d$a$d;->AFInAppEventType:Ljava/lang/Boolean;

    .line 1117
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "amazon_aid_limit"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    :cond_7d
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    const-string v7, "advertiserId"

    invoke-virtual {v6, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1120
    if-eqz v6, :cond_8c

    .line 1121
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    :cond_8c
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "app_id"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    const-string v6, "devkey"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    invoke-static {p1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "uid"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    const-wide/16 v6, 0x3e8

    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time_in_app"

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const-string v1, "statType"

    const-string v2, "user_closed_app"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    const-string v1, "platform"

    const-string v2, "Android"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    nop

    .line 50187
    const-string v1, "appsFlyerCount"

    invoke-static {v0, v1, v8}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    .line 1129
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "launch_counter"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "channel"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    if-eqz v5, :cond_e5

    goto :goto_e7

    :cond_e5
    const-string v5, ""

    :goto_e7
    const-string p1, "originalAppsflyerId"

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    iget-boolean p1, p0, Lcom/appsflyer/internal/af;->setOaidData:Z

    if-eqz p1, :cond_13d

    .line 1135
    :try_start_f0
    const-string p1, "Running callStats task"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 1136
    new-instance p1, Lcom/appsflyer/internal/k;

    new-instance v0, Lcom/appsflyer/internal/bn;

    invoke-direct {v0}, Lcom/appsflyer/internal/bn;-><init>()V

    .line 1137
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    .line 50188
    iput-boolean v1, v0, Lcom/appsflyer/internal/bh;->onConversionDataSuccess:Z

    .line 50189
    nop

    .line 1137
    nop

    .line 1138
    invoke-virtual {v0, v3}, Lcom/appsflyer/internal/bh;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/h;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/internal/af;->onAppOpenAttributionNative:Ljava/lang/String;

    .line 50190
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x1

    .line 50191
    sget-object v4, Lcom/appsflyer/internal/af;->onAttributionFailure:Lcom/appsflyer/internal/af;

    .line 50190
    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1139
    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/h;->values(Ljava/lang/String;)Lcom/appsflyer/internal/h;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/bh;

    invoke-direct {p1, v0}, Lcom/appsflyer/internal/k;-><init>(Lcom/appsflyer/internal/bh;)V

    .line 50192
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50198
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_135
    .catchall {:try_start_f0 .. :try_end_135} :catchall_136

    .line 1142
    return-void

    .line 1140
    :catchall_136
    move-exception p1

    .line 1141
    const-string v0, "Could not send callStats request"

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1142
    return-void

    .line 1144
    :cond_13d
    const-string p1, "Stats call is disabled, ignore ..."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method public final waitForCustomerUserId(Z)V
    .registers 4

    .line 542
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initAfterCustomerUserID: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    .line 543
    nop

    .line 20521
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "waitForCustomerId"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 544
    return-void
.end method
