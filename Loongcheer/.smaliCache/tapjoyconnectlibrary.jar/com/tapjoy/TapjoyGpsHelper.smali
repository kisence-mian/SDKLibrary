.class public Lcom/tapjoy/TapjoyGpsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:I

.field private f:Z

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->d:I

    .line 14
    iput v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->e:I

    .line 21
    iput-object p1, p0, Lcom/tapjoy/TapjoyGpsHelper;->a:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public checkGooglePlayIntegration()V
    .registers 3

    .line 75
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 79
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayManifestConfigured()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 82
    return-void

    .line 80
    :cond_d
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "Failed to load manifest.xml meta-data, \'com.google.android.gms.version\' not found. For more information about including the Google Play services client library visit http://developer.android.com/google/play-services/setup.html or http://tech.tapjoy.com/product-overview/sdk-change-log/tapjoy-and-identifiers"

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_15
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "Tapjoy SDK is disabled because Google Play Services was not found. For more information about including the Google Play services client library visit http://developer.android.com/google/play-services/setup.html or http://tech.tapjoy.com/product-overview/sdk-change-log/tapjoy-and-identifiers"

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdvertisingId()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceGooglePlayServicesVersion()I
    .registers 2

    .line 138
    iget v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->d:I

    return v0
.end method

.method public getPackagedGooglePlayServicesVersion()I
    .registers 2

    .line 142
    iget v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->e:I

    return v0
.end method

.method public isAdIdAvailable()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->f:Z

    return v0
.end method

.method public isAdTrackingEnabled()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->c:Z

    return v0
.end method

.method public isGooglePlayManifestConfigured()Z
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_2a

    .line 113
    :try_start_4
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 114
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 115
    const-string v1, "com.google.android.gms.version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->e:I

    .line 116
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->h:Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    .line 119
    goto :goto_2a

    .line 117
    :catch_25
    move-exception v0

    .line 118
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->h:Ljava/lang/Boolean;

    .line 122
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isGooglePlayServicesAvailable()Z
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_1f

    .line 92
    :try_start_4
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 93
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->g:Ljava/lang/Boolean;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_1a
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_13} :catch_14

    goto :goto_1f

    .line 98
    :catch_14
    move-exception v0

    .line 99
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->g:Ljava/lang/Boolean;

    goto :goto_1f

    .line 95
    :catch_1a
    move-exception v0

    .line 96
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->g:Ljava/lang/Boolean;

    .line 103
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public loadAdvertisingId(Z)V
    .registers 7
    .param p1, "shouldFallbackToLAT"    # Z

    .line 28
    const-string v0, "TapjoyGpsHelper"

    const-string v1, "Looking for Google Play Services..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayServicesAvailable()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayManifestConfigured()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 32
    const-string v1, "Packaged Google Play Services found, fetching advertisingID..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Packaged Google Play Services version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/tapjoy/TapjoyAdIdClient;

    iget-object v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyAdIdClient;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v1}, Lcom/tapjoy/TapjoyAdIdClient;->setupAdIdInfo()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->f:Z

    .line 39
    const/4 v2, 0x0

    :try_start_3a
    iget-object v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->d:I

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device\'s Google Play Services version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/tapjoy/TapjoyGpsHelper;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5e} :catch_5f

    .line 44
    goto :goto_65

    .line 42
    :catch_5f
    move-exception v3

    .line 43
    const-string v3, "Error getting device\'s Google Play Services version"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_65
    iget-boolean v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->f:Z

    if-eqz v3, :cond_a2

    .line 47
    invoke-virtual {v1}, Lcom/tapjoy/TapjoyAdIdClient;->isAdTrackingEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->c:Z

    .line 48
    invoke-virtual {v1}, Lcom/tapjoy/TapjoyAdIdClient;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->b:Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found advertising ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Is ad tracking enabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_a2
    const-string v1, "Error getting advertisingID from Google Play Services"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eqz p1, :cond_b2

    .line 59
    iput-boolean v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->c:Z

    .line 60
    const-string v0, "00000000-0000-0000-0000-000000000000"

    iput-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->b:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->f:Z

    .line 64
    :cond_b2
    return-void

    .line 66
    :cond_b3
    const-string v1, "Google Play Services not found"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
