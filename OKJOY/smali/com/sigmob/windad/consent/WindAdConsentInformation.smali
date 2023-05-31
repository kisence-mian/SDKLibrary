.class public Lcom/sigmob/windad/consent/WindAdConsentInformation;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String; = "ConsentInformation"

.field private static final c:Ljava/lang/String; = "mobileads_consent"

.field private static final d:Ljava/lang/String; = "consent_string"

.field private static e:Lcom/sigmob/windad/consent/WindAdConsentInformation;


# instance fields
.field private a:Lcom/sigmob/windad/consent/ConsentStatus;

.field private final f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sigmob/windad/consent/ConsentStatus;->UNKNOWN:Lcom/sigmob/windad/consent/ConsentStatus;

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a:Lcom/sigmob/windad/consent/ConsentStatus;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation;->f:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/sigmob/windad/consent/ConsentData;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation;->f:Landroid/content/Context;

    const-string v1, "mobileads_consent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/sigmob/windad/consent/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "consent_string"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/consent/WindAdConsentInformation;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sigmob/windad/consent/ServerResponse;

    invoke-static {v1, v0}, Lcom/sigmob/windad/consent/JSONDeserializer;->Deserialize(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/consent/ServerResponse;

    invoke-virtual {p0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a()Lcom/sigmob/windad/consent/ConsentData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sigmob/windad/consent/ConsentData;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/ServerResponse;->getIsRequestInEeaOrUnknown()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/windad/consent/ConsentData;->a(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/ServerResponse;->getIsRequestInEeaOrUnknown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-direct {p0, v1}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a(Lcom/sigmob/windad/consent/ConsentData;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    :goto_29
    monitor-exit p0

    return-void

    :cond_2b
    :try_start_2b
    invoke-direct {p0, v1}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a(Lcom/sigmob/windad/consent/ConsentData;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_29

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/sigmob/windad/consent/Constats;->IS_TEST:Z

    if-eqz v0, :cond_7

    const-string v0, "http://adstage.sigmob.cn/extconfig"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "http://adserver.sigmob.cn/extconfig"

    goto :goto_6
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;
    .registers 3

    const-class v1, Lcom/sigmob/windad/consent/WindAdConsentInformation;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sigmob/windad/consent/WindAdConsentInformation;->e:Lcom/sigmob/windad/consent/WindAdConsentInformation;

    if-nez v0, :cond_e

    new-instance v0, Lcom/sigmob/windad/consent/WindAdConsentInformation;

    invoke-direct {v0, p0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sigmob/windad/consent/WindAdConsentInformation;->e:Lcom/sigmob/windad/consent/WindAdConsentInformation;

    :cond_e
    sget-object v0, Lcom/sigmob/windad/consent/WindAdConsentInformation;->e:Lcom/sigmob/windad/consent/WindAdConsentInformation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a()Lcom/sigmob/windad/consent/ConsentData;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation;->f:Landroid/content/Context;

    const-string v1, "mobileads_consent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "consent_string"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    new-instance v0, Lcom/sigmob/windad/consent/ConsentData;

    invoke-direct {v0}, Lcom/sigmob/windad/consent/ConsentData;-><init>()V

    :goto_1c
    return-object v0

    :cond_1d
    :try_start_1d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/sigmob/windad/consent/ConsentData;

    invoke-static {v0, v2}, Lcom/sigmob/windad/consent/JSONDeserializer;->Deserialize(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/consent/ConsentData;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2a} :catch_2b

    goto :goto_1c

    :catch_2b
    move-exception v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "consent_string"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Lcom/sigmob/windad/consent/ConsentData;

    invoke-direct {v0}, Lcom/sigmob/windad/consent/ConsentData;-><init>()V

    goto :goto_1c
.end method

.method protected declared-synchronized a(Lcom/sigmob/windad/consent/ConsentStatus;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a()Lcom/sigmob/windad/consent/ConsentData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/windad/consent/ConsentData;->a(Lcom/sigmob/windad/consent/ConsentStatus;)V

    invoke-direct {p0, v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a(Lcom/sigmob/windad/consent/ConsentData;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/consent/ConsentInfoUpdateListener;)V
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;-><init>(Ljava/lang/String;Lcom/sigmob/windad/consent/WindAdConsentInformation;Ljava/lang/String;Lcom/sigmob/windad/consent/ConsentInfoUpdateListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected declared-synchronized a(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a()Lcom/sigmob/windad/consent/ConsentData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/consent/ConsentData;->setUserPrefersAdFree(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a(Lcom/sigmob/windad/consent/ConsentData;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConsentStatus()Lcom/sigmob/windad/consent/ConsentStatus;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a()Lcom/sigmob/windad/consent/ConsentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/ConsentData;->a()Lcom/sigmob/windad/consent/ConsentStatus;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRequestLocationInEeaOrUnknown()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a()Lcom/sigmob/windad/consent/ConsentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/ConsentData;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isUserPrefersAdFree()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a()Lcom/sigmob/windad/consent/ConsentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/ConsentData;->isUserPrefersAdFree()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestConsentInfoUpdate(Ljava/lang/String;Lcom/sigmob/windad/consent/ConsentInfoUpdateListener;)V
    .registers 4

    invoke-direct {p0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/consent/ConsentInfoUpdateListener;)V

    return-void
.end method

.method public declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation;->f:Landroid/content/Context;

    const-string v1, "mobileads_consent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
