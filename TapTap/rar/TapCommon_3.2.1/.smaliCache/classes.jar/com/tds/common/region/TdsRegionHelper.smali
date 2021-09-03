.class public Lcom/tds/common/region/TdsRegionHelper;
.super Ljava/lang/Object;
.source "TdsRegionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/region/TdsRegionHelper$RegionCallback;
    }
.end annotation


# static fields
.field private static final RegionKey:Ljava/lang/String; = "tds_region_key"

.field private static final RegionStore:Ljava/lang/String; = "tds_region_store"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/tds/common/region/TdsRegionHelper$RegionCallback;I)V
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/tds/common/region/TdsRegionHelper$RegionCallback;
    .param p2, "x2"    # I

    .line 25
    invoke-static {p0, p1, p2}, Lcom/tds/common/region/TdsRegionHelper;->doLocalJudge(Landroid/content/Context;Lcom/tds/common/region/TdsRegionHelper$RegionCallback;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;I)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .line 25
    invoke-static {p0, p1}, Lcom/tds/common/region/TdsRegionHelper;->setLocalRegion(Landroid/content/Context;I)V

    return-void
.end method

.method private static doLocalJudge(Landroid/content/Context;Lcom/tds/common/region/TdsRegionHelper$RegionCallback;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/tds/common/region/TdsRegionHelper$RegionCallback;
    .param p2, "operatorInfo"    # I

    .line 114
    invoke-static {p2}, Lcom/tds/common/region/TdsRegionHelper;->isChinaOperator(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    invoke-static {}, Lcom/tds/common/region/TdsRegionHelper;->isLocaleChina()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    .line 115
    .local v0, "isMainlandChina":Z
    :goto_12
    if-eqz v0, :cond_15

    move v1, v2

    :cond_15
    invoke-static {p0, v1}, Lcom/tds/common/region/TdsRegionHelper;->setLocalRegion(Landroid/content/Context;I)V

    .line 116
    invoke-interface {p1, v0}, Lcom/tds/common/region/TdsRegionHelper$RegionCallback;->onRegion(Z)V

    .line 117
    return-void
.end method

.method private static getLocalRegion(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 120
    nop

    .line 121
    const-string v0, "tds_region_store"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "tds_region_key"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getOperatorInfo(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    nop

    .line 71
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 72
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 73
    .local v1, "info":I
    if-eqz v0, :cond_3c

    .line 74
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "NetworkOperator":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkOperator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TdsRegionHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-eqz v2, :cond_3b

    const-string v3, "460"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 78
    const-string v3, "461"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 79
    :cond_3a
    const/4 v1, 0x1

    .line 81
    :cond_3b
    return v1

    .line 83
    .end local v2    # "NetworkOperator":Ljava/lang/String;
    :cond_3c
    const/4 v2, 0x0

    return v2
.end method

.method public static getRegionCode(Landroid/content/Context;Lcom/tds/common/region/TdsRegionHelper$RegionCallback;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/tds/common/region/TdsRegionHelper$RegionCallback;

    .line 31
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Lcom/tds/common/utils/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Lcom/tds/common/region/TdsRegionHelper;->getLocalRegion(Landroid/content/Context;)I

    move-result v0

    .line 33
    .local v0, "regionCode":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 34
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-interface {p1, v1}, Lcom/tds/common/region/TdsRegionHelper$RegionCallback;->onRegion(Z)V

    .line 35
    return-void

    .line 38
    :cond_15
    invoke-static {p0}, Lcom/tds/common/region/TdsRegionHelper;->getOperatorInfo(Landroid/content/Context;)I

    move-result v1

    .line 40
    .local v1, "operatorInfo":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tds/common/region/TdsRegionHelper;->getRemoteRegion(ILjava/lang/String;)Lcom/tds/common/reactor/Observable;

    move-result-object v2

    .line 41
    invoke-static {}, Lcom/tds/common/reactor/schedulers/Schedulers;->io()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tds/common/reactor/Observable;->subscribeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v2

    .line 42
    invoke-static {}, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tds/common/reactor/Observable;->observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v2

    new-instance v3, Lcom/tds/common/region/TdsRegionHelper$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/tds/common/region/TdsRegionHelper$1;-><init>(Landroid/content/Context;Lcom/tds/common/region/TdsRegionHelper$RegionCallback;I)V

    .line 43
    invoke-virtual {v2, v3}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 64
    return-void
.end method

.method private static getRemoteRegion(ILjava/lang/String;)Lcom/tds/common/reactor/Observable;
    .registers 8
    .param p0, "carrier"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "Lcom/tds/common/region/RegionBean;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/tds/common/net/TdsHttp;->newClientBuilder()Lcom/tds/common/net/TdsHttp$Client$Builder;

    move-result-object v0

    new-instance v1, Lcom/tds/common/net/intercerptor/AddXUAInterceptor;

    .line 92
    const-string v2, "TdsCommon"

    const v3, 0x1ccd4a9

    const-string v4, "3.2.1"

    invoke-static {v2, v3, v4}, Lcom/tds/common/net/XUAParams;->getCommonXUAParams(Ljava/lang/String;ILjava/lang/String;)Lcom/tds/common/net/XUAParams;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/common/net/intercerptor/AddXUAInterceptor;-><init>(Lcom/tds/common/net/XUAParams;)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/tds/common/net/TdsHttp$Client$Builder;->addInterceptor(Lcom/tds/common/net/TdsHttp$Interceptor;)Lcom/tds/common/net/TdsHttp$Client$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$Client$Builder;->build()Lcom/tds/common/net/TdsHttp$Client;

    move-result-object v0

    .line 95
    .local v0, "client":Lcom/tds/common/net/TdsHttp$Client;
    new-instance v1, Lcom/tds/common/net/TdsApiClient$Builder;

    invoke-direct {v1}, Lcom/tds/common/net/TdsApiClient$Builder;-><init>()V

    .line 96
    const-string v2, "https://tds.taptap-api.com/tool/check_ip_region"

    invoke-virtual {v1, v2}, Lcom/tds/common/net/TdsApiClient$Builder;->baseUrl(Ljava/lang/String;)Lcom/tds/common/net/TdsApiClient$Builder;

    move-result-object v1

    .line 97
    invoke-virtual {v1, v0}, Lcom/tds/common/net/TdsApiClient$Builder;->tdsClient(Lcom/tds/common/net/TdsHttp$Client;)Lcom/tds/common/net/TdsApiClient$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/tds/common/net/TdsApiClient$Builder;->build()Lcom/tds/common/net/TdsApiClient;

    move-result-object v1

    .line 99
    .local v1, "tdsApiClient":Lcom/tds/common/net/TdsApiClient;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v2, "queries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "carrier"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v3, "bundle"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v3, Lcom/tds/common/region/TdsRegionHelper$3;

    invoke-direct {v3}, Lcom/tds/common/region/TdsRegionHelper$3;-><init>()V

    invoke-virtual {v1, v3, v4, v2}, Lcom/tds/common/net/TdsApiClient;->getAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;

    move-result-object v3

    new-instance v4, Lcom/tds/common/region/TdsRegionHelper$2;

    invoke-direct {v4}, Lcom/tds/common/region/TdsRegionHelper$2;-><init>()V

    .line 104
    invoke-virtual {v3, v4}, Lcom/tds/common/reactor/Observable;->map(Lcom/tds/common/reactor/functions/Func1;)Lcom/tds/common/reactor/Observable;

    move-result-object v3

    .line 102
    return-object v3
.end method

.method private static isChinaOperator(I)Z
    .registers 2
    .param p0, "operator"    # I

    .line 137
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static isLocaleChina()Z
    .registers 2

    .line 144
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static setLocalRegion(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "region"    # I

    .line 126
    nop

    .line 127
    const-string v0, "tds_region_store"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 129
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "tds_region_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    return-void
.end method
