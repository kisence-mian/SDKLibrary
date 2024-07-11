.class public Lcom/facebook/internal/AttributionIdentifiers;
.super Ljava/lang/Object;
.source "AttributionIdentifiers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;,
        Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;
    }
.end annotation


# static fields
.field private static final ANDROID_ID_COLUMN_NAME:Ljava/lang/String; = "androidid"

.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ATTRIBUTION_ID_CONTENT_PROVIDER:Ljava/lang/String; = "com.facebook.katana.provider.AttributionIdProvider"

.field private static final ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI:Ljava/lang/String; = "com.facebook.wakizashi.provider.AttributionIdProvider"

.field private static final CONNECTION_RESULT_SUCCESS:I = 0x0

.field private static final IDENTIFIER_REFRESH_INTERVAL_MILLIS:J = 0x36ee80L

.field private static final LIMIT_TRACKING_COLUMN_NAME:Ljava/lang/String; = "limit_tracking"

.field private static final TAG:Ljava/lang/String;

.field private static recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;


# instance fields
.field private androidAdvertiserId:Ljava/lang/String;

.field private androidInstallerPackage:Ljava/lang/String;

.field private attributionId:Ljava/lang/String;

.field private fetchTime:J

.field private limitTracking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 3
    .param p0, "identifiers"    # Lcom/facebook/internal/AttributionIdentifiers;

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    .line 238
    sput-object p0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 239
    return-object p0
.end method

.method private static getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidIdViaReflection(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    .line 77
    .local v0, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    if-nez v0, :cond_12

    .line 78
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidIdViaService(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    .line 79
    if-nez v0, :cond_12

    .line 80
    new-instance v1, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v1}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    move-object v0, v1

    .line 83
    :cond_12
    return-object v0
.end method

.method private static getAndroidIdViaReflection(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_8e

    .line 93
    const-string v1, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v2, "isGooglePlayServicesAvailable"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 99
    .local v1, "isGooglePlayServicesAvailable":Ljava/lang/reflect/Method;
    if-nez v1, :cond_1e

    .line 100
    return-object v0

    .line 103
    :cond_1e
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 105
    .local v2, "connectionResult":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_8d

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    .line 106
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_8d

    .line 110
    :cond_34
    const-string v4, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v5, "getAdvertisingIdInfo"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v6

    invoke-static {v4, v5, v7}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 115
    .local v4, "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    if-nez v4, :cond_45

    .line 116
    return-object v0

    .line 118
    :cond_45
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {v0, v4, v3}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 120
    .local v3, "advertisingInfo":Ljava/lang/Object;
    if-nez v3, :cond_50

    .line 121
    return-object v0

    .line 124
    :cond_50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "getId"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-static {v5, v7, v8}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 125
    .local v5, "getId":Ljava/lang/reflect/Method;
    nop

    .line 126
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "isLimitAdTrackingEnabled"

    new-array v9, v6, [Ljava/lang/Class;

    .line 125
    invoke-static {v7, v8, v9}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 128
    .local v7, "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_8c

    if-nez v7, :cond_6e

    goto :goto_8c

    .line 132
    :cond_6e
    new-instance v8, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v8}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 133
    .local v8, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    new-array v9, v6, [Ljava/lang/Object;

    .line 134
    invoke-static {v3, v5, v9}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v8, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 135
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v7, v6}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v8, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z

    .line 139
    return-object v8

    .line 129
    .end local v8    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    :cond_8c
    :goto_8c
    return-object v0

    .line 107
    .end local v3    # "advertisingInfo":Ljava/lang/Object;
    .end local v4    # "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    .end local v5    # "getId":Ljava/lang/reflect/Method;
    .end local v7    # "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    :cond_8d
    :goto_8d
    return-object v0

    .line 91
    .end local v1    # "isGooglePlayServicesAvailable":Ljava/lang/reflect/Method;
    .end local v2    # "connectionResult":Ljava/lang/Object;
    :cond_8e
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "getAndroidId cannot be called on the main thread."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    throw v1
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_96} :catch_96

    .line 140
    .restart local p0    # "context":Landroid/content/Context;
    :catch_96
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "android_id"

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private static getAndroidIdViaService(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 147
    new-instance v0, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;-><init>(Lcom/facebook/internal/AttributionIdentifiers$1;)V

    .line 148
    .local v0, "connection":Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 152
    :try_start_19
    new-instance v3, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;

    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;-><init>(Landroid/os/IBinder;)V

    .line 153
    .local v3, "adInfo":Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;
    new-instance v4, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v4}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 154
    .local v4, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    invoke-virtual {v3}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->getAdvertiserId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 155
    invoke-virtual {v3}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->isTrackingLimited()Z

    move-result v5

    iput-boolean v5, v4, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_33} :catch_3a
    .catchall {:try_start_19 .. :try_end_33} :catchall_38

    .line 156
    nop

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 156
    return-object v4

    .line 160
    .end local v3    # "adInfo":Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;
    .end local v4    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    :catchall_38
    move-exception v1

    goto :goto_44

    .line 157
    :catch_3a
    move-exception v3

    .line 158
    .local v3, "exception":Ljava/lang/Exception;
    :try_start_3b
    const-string v4, "android_id"

    invoke-static {v4, v3}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_38

    .line 160
    .end local v3    # "exception":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 161
    goto :goto_48

    .line 160
    :goto_44
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 161
    throw v1

    .line 163
    :cond_48
    :goto_48
    return-object v1
.end method

.method public static getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;

    .line 167
    const-string v0, "limit_tracking"

    const-string v1, "androidid"

    const-string v2, "aid"

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_17

    .line 169
    sget-object v3, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    const-string v4, "getAttributionIdentifiers should not be called from the main thread"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_17
    sget-object v3, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    if-eqz v3, :cond_2c

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iget-wide v6, v5, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    sub-long/2addr v3, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v8, v3, v6

    if-gez v8, :cond_2c

    .line 177
    return-object v5

    .line 180
    :cond_2c
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v3

    .line 181
    .local v3, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    const/4 v4, 0x0

    .line 183
    .local v4, "c":Landroid/database/Cursor;
    const/4 v5, 0x3

    :try_start_32
    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v8, v5

    const/4 v6, 0x1

    aput-object v1, v8, v6

    const/4 v6, 0x2

    aput-object v0, v8, v6

    .line 187
    .local v8, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 188
    .local v6, "providerUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.facebook.katana.provider.AttributionIdProvider"

    invoke-virtual {v7, v9, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    if-eqz v7, :cond_52

    .line 190
    const-string v5, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v6, v5

    goto :goto_67

    .line 191
    :cond_52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.facebook.wakizashi.provider.AttributionIdProvider"

    invoke-virtual {v7, v9, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-eqz v5, :cond_66

    .line 193
    const-string v5, "content://com.facebook.wakizashi.provider.AttributionIdProvider"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v6, v5

    goto :goto_67

    .line 191
    :cond_66
    move-object v5, v6

    .line 195
    .end local v6    # "providerUri":Landroid/net/Uri;
    .local v5, "providerUri":Landroid/net/Uri;
    :goto_67
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    .line 196
    .local v12, "installerPackageName":Ljava/lang/String;
    if-eqz v12, :cond_70

    .line 197
    iput-object v12, v3, Lcom/facebook/internal/AttributionIdentifiers;->androidInstallerPackage:Ljava/lang/String;

    .line 199
    :cond_70
    if-nez v5, :cond_7c

    .line 200
    invoke-static {v3}, Lcom/facebook/internal/AttributionIdentifiers;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_76} :catch_d5
    .catchall {:try_start_32 .. :try_end_76} :catchall_d3

    .line 224
    if-eqz v4, :cond_7b

    .line 225
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_7b
    return-object v0

    .line 202
    :cond_7c
    :try_start_7c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v4, v6

    .line 203
    if-eqz v4, :cond_c9

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_92

    goto :goto_c9

    .line 206
    :cond_92
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 207
    .local v2, "attributionColumnIndex":I
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 208
    .local v1, "androidIdColumnIndex":I
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 210
    .local v0, "limitTrackingColumnIndex":I
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    .line 214
    if-lez v1, :cond_bf

    if-lez v0, :cond_bf

    .line 215
    invoke-virtual {v3}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_bf

    .line 216
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 217
    nop

    .line 218
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v3, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_bf} :catch_d5
    .catchall {:try_start_7c .. :try_end_bf} :catchall_d3

    .line 224
    .end local v0    # "limitTrackingColumnIndex":I
    .end local v1    # "androidIdColumnIndex":I
    .end local v2    # "attributionColumnIndex":I
    .end local v5    # "providerUri":Landroid/net/Uri;
    .end local v8    # "projection":[Ljava/lang/String;
    .end local v12    # "installerPackageName":Ljava/lang/String;
    :cond_bf
    if-eqz v4, :cond_c4

    .line 225
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_c4
    invoke-static {v3}, Lcom/facebook/internal/AttributionIdentifiers;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    return-object v0

    .line 204
    .restart local v5    # "providerUri":Landroid/net/Uri;
    .restart local v8    # "projection":[Ljava/lang/String;
    .restart local v12    # "installerPackageName":Ljava/lang/String;
    :cond_c9
    :goto_c9
    :try_start_c9
    invoke-static {v3}, Lcom/facebook/internal/AttributionIdentifiers;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cd} :catch_d5
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_d3

    .line 224
    if-eqz v4, :cond_d2

    .line 225
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_d2
    return-object v0

    .line 224
    .end local v5    # "providerUri":Landroid/net/Uri;
    .end local v8    # "projection":[Ljava/lang/String;
    .end local v12    # "installerPackageName":Ljava/lang/String;
    :catchall_d3
    move-exception v0

    goto :goto_f9

    .line 220
    :catch_d5
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d6
    sget-object v1, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught unexpected exception in getAttributionId(): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f2
    .catchall {:try_start_d6 .. :try_end_f2} :catchall_d3

    .line 222
    const/4 v1, 0x0

    .line 224
    if-eqz v4, :cond_f8

    .line 225
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_f8
    return-object v1

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f9
    if-eqz v4, :cond_fe

    .line 225
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_fe
    throw v0
.end method

.method public static getCachedIdentifiers()Lcom/facebook/internal/AttributionIdentifiers;
    .registers 1

    .line 232
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    return-object v0
.end method

.method private static getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 265
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_f

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 268
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getAndroidAdvertiserId()Ljava/lang/String;
    .registers 2

    .line 247
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/facebook/FacebookSdk;->getAdvertiserIDCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 248
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    return-object v0

    .line 250
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAndroidInstallerPackage()Ljava/lang/String;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->androidInstallerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributionId()Ljava/lang/String;
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    return-object v0
.end method

.method public isTrackingLimited()Z
    .registers 2

    .line 259
    iget-boolean v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z

    return v0
.end method
