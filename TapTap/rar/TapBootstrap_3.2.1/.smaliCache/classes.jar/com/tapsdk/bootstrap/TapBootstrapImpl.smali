.class public Lcom/tapsdk/bootstrap/TapBootstrapImpl;
.super Ljava/lang/Object;
.source "TapBootstrapImpl.java"

# interfaces
.implements Lcom/tapsdk/bootstrap/ITapBootstrap;


# static fields
.field private static final ACHIEVEMENT_COMPONENT:Ljava/lang/String; = "achievement_model"

.field private static final FRIENDS_COMPONENT:Ljava/lang/String; = "friends_model"

.field private static final FRIENDS_UI_COMPONENT:Ljava/lang/String; = "friends_ui_model"

.field private static final MOMENT_COMPONENT:Ljava/lang/String; = "moment_model"

.field public static final TAG:Ljava/lang/String; = "TapBootStrapImpl"

.field private static final TAPDB_COMPONENT:Ljava/lang/String; = "tapdb_model"

.field public static final TRACKER_ENDPOINT_DOMESTIC:Ljava/lang/String; = "openlog.taptap.com"

.field public static final TRACKER_ENDPOINT_IO:Ljava/lang/String; = "openlog.tap.io"


# instance fields
.field initialized:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapsdk/bootstrap/TapBootstrapImpl;->initialized:Z

    return-void
.end method

.method private initOtherComponent(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Lcom/tds/common/entities/TapConfig;

    .line 97
    const-string v0, "TapConfig cannot be null"

    invoke-static {p2, v0}, Lcom/tds/common/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/tds/common/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context cannot be null"

    invoke-static {v0, v1}, Lcom/tds/common/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p2, Lcom/tds/common/entities/TapConfig;->clientId:Ljava/lang/String;

    const-string v1, "TapConfig clientId field cannot be empty"

    invoke-static {v0, v1}, Lcom/tds/common/utils/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 102
    iget-object v0, p2, Lcom/tds/common/entities/TapConfig;->clientToken:Ljava/lang/String;

    const-string v1, "TapConfig clientToken field cannot be empty"

    invoke-static {v0, v1}, Lcom/tds/common/utils/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 104
    iget-object v0, p2, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    if-eqz v0, :cond_48

    .line 105
    iget-object v0, p2, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    invoke-virtual {v0}, Lcom/tds/common/entities/TapDBConfig;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 106
    const-string v0, "TapConfig channel is empty"

    invoke-static {v0}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->e(Ljava/lang/String;)V

    .line 108
    :cond_36
    iget-object v0, p2, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    invoke-virtual {v0}, Lcom/tds/common/entities/TapDBConfig;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 109
    const-string v0, "TapConfig gameVersion is emtpy"

    invoke-static {v0}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->e(Ljava/lang/String;)V

    goto :goto_4f

    .line 112
    :cond_48
    new-instance v0, Lcom/tds/common/entities/TapDBConfig;

    invoke-direct {v0}, Lcom/tds/common/entities/TapDBConfig;-><init>()V

    iput-object v0, p2, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    .line 115
    :cond_4f
    :goto_4f
    sget-object v0, Lcom/tds/common/utils/GUIDHelper;->INSTANCE:Lcom/tds/common/utils/GUIDHelper;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/utils/GUIDHelper;->init(Landroid/content/Context;)V

    .line 117
    new-instance v0, Lcom/taptap/sdk/LoginSdkConfig;

    invoke-direct {v0}, Lcom/taptap/sdk/LoginSdkConfig;-><init>()V

    .line 118
    .local v0, "loginConfig":Lcom/taptap/sdk/LoginSdkConfig;
    iget v1, p2, Lcom/tds/common/entities/TapConfig;->regionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_66

    .line 119
    sget-object v1, Lcom/taptap/sdk/RegionType;->IO:Lcom/taptap/sdk/RegionType;

    iput-object v1, v0, Lcom/taptap/sdk/LoginSdkConfig;->regionType:Lcom/taptap/sdk/RegionType;

    .line 121
    :cond_66
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p2, Lcom/tds/common/entities/TapConfig;->clientId:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/taptap/sdk/TapLoginHelper;->init(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/LoginSdkConfig;)V

    .line 122
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p2, Lcom/tds/common/entities/TapConfig;->clientId:Ljava/lang/String;

    iget-object v4, p2, Lcom/tds/common/entities/TapConfig;->clientToken:Ljava/lang/String;

    iget-object v5, p2, Lcom/tds/common/entities/TapConfig;->serverUrl:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Lcn/leancloud/LeanCloud;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-class v1, Lcom/tapsdk/bootstrap/account/TDSUser;

    invoke-static {v1}, Lcn/leancloud/LCUser;->alwaysUseSubUserClass(Ljava/lang/Class;)V

    .line 125
    const-class v1, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;

    invoke-static {v1}, Lcn/leancloud/LCObject;->registerSubclass(Ljava/lang/Class;)V

    .line 128
    const-string v1, "moment_model"

    invoke-direct {p0, p1, v1}, Lcom/tapsdk/bootstrap/TapBootstrapImpl;->isComponentLoaded(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x3

    const-string v4, "init"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_e3

    .line 131
    :try_start_93
    const-string v1, "com.tapsdk.moment.IscTapMomentService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/isc/IscServiceManager;->register(Ljava/lang/Class;)V

    .line 133
    const-string v1, "TapMoment"

    invoke-static {v1}, Lcom/tds/common/isc/IscServiceManager;->service(Ljava/lang/String;)Lcom/tds/common/isc/Service;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v4}, Lcom/tds/common/isc/Service;->method(Ljava/lang/String;)Lcom/tds/common/isc/Method;

    move-result-object v1

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v5

    iget-object v8, p2, Lcom/tds/common/entities/TapConfig;->clientId:Ljava/lang/String;

    aput-object v8, v7, v6

    iget v8, p2, Lcom/tds/common/entities/TapConfig;->regionType:I

    if-ne v8, v6, :cond_b4

    move v8, v6

    goto :goto_b5

    :cond_b4
    move v8, v5

    .line 135
    :goto_b5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v1, v7}, Lcom/tds/common/isc/Method;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "moment component loaded"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->i(Ljava/lang/String;)V
    :try_end_c3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_93 .. :try_end_c3} :catch_c4
    .catch Lcom/tds/common/isc/IscException; {:try_start_93 .. :try_end_c3} :catch_c4

    .line 139
    goto :goto_e3

    .line 137
    :catch_c4
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "moment component load fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->e(Ljava/lang/String;)V

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_e3
    :goto_e3
    const-string v1, "friends_model"

    invoke-direct {p0, p1, v1}, Lcom/tapsdk/bootstrap/TapBootstrapImpl;->isComponentLoaded(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 146
    :try_start_eb
    const-string v1, "com.tapsdk.friends.IscTapFriendsService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/isc/IscServiceManager;->register(Ljava/lang/Class;)V

    .line 148
    const-string v1, "TapFriends"

    invoke-static {v1}, Lcom/tds/common/isc/IscServiceManager;->service(Ljava/lang/String;)Lcom/tds/common/isc/Service;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v4}, Lcom/tds/common/isc/Service;->method(Ljava/lang/String;)Lcom/tds/common/isc/Method;

    move-result-object v1

    new-array v7, v3, [Ljava/lang/Object;

    .line 150
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    aput-object v8, v7, v5

    aput-object p2, v7, v6

    new-instance v8, Lcom/tapsdk/bootstrap/TapBootstrapImpl$1;

    invoke-direct {v8, p0}, Lcom/tapsdk/bootstrap/TapBootstrapImpl$1;-><init>(Lcom/tapsdk/bootstrap/TapBootstrapImpl;)V

    aput-object v8, v7, v2

    invoke-virtual {v1, v7}, Lcom/tds/common/isc/Method;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "friends component loaded"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->i(Ljava/lang/String;)V
    :try_end_117
    .catch Ljava/lang/ClassNotFoundException; {:try_start_eb .. :try_end_117} :catch_118
    .catch Lcom/tds/common/isc/IscException; {:try_start_eb .. :try_end_117} :catch_118

    .line 178
    goto :goto_137

    .line 176
    :catch_118
    move-exception v1

    .line 177
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "friends component load fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->i(Ljava/lang/String;)V

    .line 181
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_137
    const-string v1, "friends_ui_model"

    invoke-direct {p0, p1, v1}, Lcom/tapsdk/bootstrap/TapBootstrapImpl;->isComponentLoaded(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 184
    :try_start_13f
    const-string v1, "com.tapsdk.friends.ui.IscTapFriendsUIService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/isc/IscServiceManager;->register(Ljava/lang/Class;)V

    .line 186
    const-string v1, "TapFriendsUI"

    invoke-static {v1}, Lcom/tds/common/isc/IscServiceManager;->service(Ljava/lang/String;)Lcom/tds/common/isc/Service;

    move-result-object v1

    .line 187
    invoke-virtual {v1, v4}, Lcom/tds/common/isc/Service;->method(Ljava/lang/String;)Lcom/tds/common/isc/Method;

    move-result-object v1

    new-array v7, v6, [Ljava/lang/Object;

    new-instance v8, Lcom/tapsdk/bootstrap/TapBootstrapImpl$2;

    invoke-direct {v8, p0}, Lcom/tapsdk/bootstrap/TapBootstrapImpl$2;-><init>(Lcom/tapsdk/bootstrap/TapBootstrapImpl;)V

    aput-object v8, v7, v5

    .line 188
    invoke-virtual {v1, v7}, Lcom/tds/common/isc/Method;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "friends ui component loaded"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->i(Ljava/lang/String;)V
    :try_end_163
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13f .. :try_end_163} :catch_164
    .catch Lcom/tds/common/isc/IscException; {:try_start_13f .. :try_end_163} :catch_164

    .line 216
    goto :goto_183

    .line 214
    :catch_164
    move-exception v1

    .line 215
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "friends ui component load fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->i(Ljava/lang/String;)V

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_183
    :goto_183
    const-string v1, "tapdb_model"

    invoke-direct {p0, p1, v1}, Lcom/tapsdk/bootstrap/TapBootstrapImpl;->isComponentLoaded(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f0

    iget-object v1, p2, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    invoke-virtual {v1}, Lcom/tds/common/entities/TapDBConfig;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_1f0

    .line 224
    :try_start_193
    const-string v1, "com.tds.tapdb.IscTapDBService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/isc/IscServiceManager;->register(Ljava/lang/Class;)V

    .line 226
    iget-object v1, p2, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    invoke-virtual {v1}, Lcom/tds/common/entities/TapDBConfig;->getChannel()Ljava/lang/String;

    move-result-object v1
    :try_end_1a2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_193 .. :try_end_1a2} :catch_1d1
    .catch Lcom/tds/common/isc/IscException; {:try_start_193 .. :try_end_1a2} :catch_1d1

    const-string v7, ""

    if-nez v1, :cond_1ab

    :try_start_1a6
    iget-object v1, p2, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    invoke-virtual {v1, v7}, Lcom/tds/common/entities/TapDBConfig;->setChannel(Ljava/lang/String;)V

    .line 227
    :cond_1ab
    iget-object v1, p2, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    invoke-virtual {v1}, Lcom/tds/common/entities/TapDBConfig;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b8

    .line 228
    iget-object v1, p2, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    invoke-virtual {v1, v7}, Lcom/tds/common/entities/TapDBConfig;->setGameVersion(Ljava/lang/String;)V

    .line 230
    :cond_1b8
    const-string v1, "TapDB"

    invoke-static {v1}, Lcom/tds/common/isc/IscServiceManager;->service(Ljava/lang/String;)Lcom/tds/common/isc/Service;

    move-result-object v1

    .line 231
    invoke-virtual {v1, v4}, Lcom/tds/common/isc/Service;->method(Ljava/lang/String;)Lcom/tds/common/isc/Method;

    move-result-object v1

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    .line 232
    invoke-virtual {v1, v7}, Lcom/tds/common/isc/Method;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "tapdb component loaded"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->i(Ljava/lang/String;)V
    :try_end_1d0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a6 .. :try_end_1d0} :catch_1d1
    .catch Lcom/tds/common/isc/IscException; {:try_start_1a6 .. :try_end_1d0} :catch_1d1

    .line 236
    goto :goto_1f0

    .line 234
    :catch_1d1
    move-exception v1

    .line 235
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tapdb component load fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->i(Ljava/lang/String;)V

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1f0
    :goto_1f0
    const-string v1, "achievement_model"

    invoke-direct {p0, p1, v1}, Lcom/tapsdk/bootstrap/TapBootstrapImpl;->isComponentLoaded(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_240

    .line 242
    :try_start_1f8
    const-string v1, "com.tds.achievement.IscTapAchievementService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/isc/IscServiceManager;->register(Ljava/lang/Class;)V

    .line 243
    const-string v1, "TapAchievement"

    invoke-static {v1}, Lcom/tds/common/isc/IscServiceManager;->service(Ljava/lang/String;)Lcom/tds/common/isc/Service;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v4}, Lcom/tds/common/isc/Service;->method(Ljava/lang/String;)Lcom/tds/common/isc/Method;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    new-instance v4, Lcom/tapsdk/bootstrap/TapBootstrapImpl$3;

    invoke-direct {v4, p0}, Lcom/tapsdk/bootstrap/TapBootstrapImpl$3;-><init>(Lcom/tapsdk/bootstrap/TapBootstrapImpl;)V

    aput-object v4, v3, v2

    .line 245
    invoke-virtual {v1, v3}, Lcom/tds/common/isc/Method;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v1, "achievement component loaded"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->i(Ljava/lang/String;)V
    :try_end_220
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f8 .. :try_end_220} :catch_221
    .catch Lcom/tds/common/isc/IscException; {:try_start_1f8 .. :try_end_220} :catch_221

    .line 274
    goto :goto_240

    .line 272
    :catch_221
    move-exception v1

    .line 273
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "achievement component load fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->i(Ljava/lang/String;)V

    .line 278
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_240
    :goto_240
    iget v1, p2, Lcom/tds/common/entities/TapConfig;->regionType:I

    if-ne v1, v6, :cond_245

    move v5, v6

    :cond_245
    const-string v1, "TapSDK"

    const-string v2, "bootstrap_lang.json"

    invoke-static {v1, p1, v2, v5}, Lcom/tds/common/localize/LocalizeManager;->configSDKLocalize(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/tapsdk/bootstrap/TapBootstrapImpl;->initTrackerManager(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;)V

    .line 281
    return-void
.end method

.method private initTrackerListener()V
    .registers 4

    .line 338
    invoke-static {}, Lcom/tds/common/reactor/RxBus;->getInstance()Lcom/tds/common/reactor/RxBus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/reactor/RxBus;->toObservable()Lcom/tds/common/reactor/Observable;

    move-result-object v0

    new-instance v1, Lcom/tapsdk/bootstrap/TapBootstrapImpl$4;

    invoke-direct {v1, p0}, Lcom/tapsdk/bootstrap/TapBootstrapImpl$4;-><init>(Lcom/tapsdk/bootstrap/TapBootstrapImpl;)V

    new-instance v2, Lcom/tapsdk/bootstrap/TapBootstrapImpl$5;

    invoke-direct {v2, p0}, Lcom/tapsdk/bootstrap/TapBootstrapImpl$5;-><init>(Lcom/tapsdk/bootstrap/TapBootstrapImpl;)V

    .line 339
    invoke-virtual {v0, v1, v2}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)Lcom/tds/common/reactor/Subscription;

    .line 357
    return-void
.end method

.method private initTrackerManager(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Lcom/tds/common/entities/TapConfig;

    .line 284
    invoke-static {}, Lcom/tds/common/utils/SP;->inited()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/tds/common/utils/SP;->initialize(Landroid/content/Context;)V

    .line 287
    :cond_9
    :try_start_9
    iget v0, p2, Lcom/tds/common/entities/TapConfig;->regionType:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_b} :catch_9c

    const/4 v1, 0x2

    const-string v2, "3.2.1"

    const v3, 0x1ccd4a9

    const-string v4, "tds"

    const-string v5, "openlog.tap.io"

    if-ne v0, v1, :cond_53

    .line 288
    :try_start_17
    const-string v0, "begin init networkTrackerManager"

    invoke-static {v0}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->i(Ljava/lang/String;)V

    .line 289
    new-instance v0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    invoke-direct {v0}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;-><init>()V

    const/4 v1, 0x3

    .line 290
    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/tds/common/entities/TapConfig;->clientId:Ljava/lang/String;

    .line 291
    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withAccessKeyId(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/tds/common/entities/TapConfig;->clientToken:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withAccessKeySecret(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0, v5}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withEndPoint(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {v0, v4}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withProjectName(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    const-string v1, "sdk-network"

    .line 295
    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withLogStore(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v3}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withSdkVersion(I)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0, v2}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withSdkVersionName(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->build(Landroid/content/Context;)Lcom/tds/common/tracker/TdsTrackerConfig;

    move-result-object v0

    .line 299
    .local v0, "networkTrackerConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    invoke-static {v0}, Lcom/tds/common/tracker/TdsTrackerManager;->registerTracker(Lcom/tds/common/tracker/TdsTrackerConfig;)V

    .line 301
    .end local v0    # "networkTrackerConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    :cond_53
    const-string v0, "begin init userEventTrackerManager"

    invoke-static {v0}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->i(Ljava/lang/String;)V

    .line 303
    new-instance v0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    invoke-direct {v0}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;-><init>()V

    const/4 v1, 0x0

    .line 304
    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/tds/common/entities/TapConfig;->clientId:Ljava/lang/String;

    .line 305
    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withAccessKeyId(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/tds/common/entities/TapConfig;->clientToken:Ljava/lang/String;

    .line 306
    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withAccessKeySecret(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    iget v1, p2, Lcom/tds/common/entities/TapConfig;->regionType:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_75

    const-string v5, "openlog.taptap.com"

    .line 307
    :cond_75
    invoke-virtual {v0, v5}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withEndPoint(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0, v4}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withProjectName(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    const-string v1, "sdk-user-event"

    .line 310
    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withLogStore(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v3}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withSdkVersion(I)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {v0, v2}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withSdkVersionName(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->build(Landroid/content/Context;)Lcom/tds/common/tracker/TdsTrackerConfig;

    move-result-object v0

    .line 314
    .local v0, "tapSdkTrackerConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    invoke-static {v0}, Lcom/tds/common/tracker/TdsTrackerManager;->registerTracker(Lcom/tds/common/tracker/TdsTrackerConfig;)V

    .line 315
    const-string v1, "initTrackerManager completed"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->i(Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_9b} :catch_9c

    .line 319
    .end local v0    # "tapSdkTrackerConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    goto :goto_b7

    .line 317
    :catch_9c
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTrackerManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->e(Ljava/lang/String;)V

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b7
    return-void
.end method

.method private isComponentLoaded(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "componentName"    # Ljava/lang/String;

    .line 70
    const-string v0, "moment_model"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 71
    const-string v0, "com.tapsdk.moment.loader"

    .local v0, "componentIscImplClass":Ljava/lang/String;
    goto :goto_37

    .line 72
    .end local v0    # "componentIscImplClass":Ljava/lang/String;
    :cond_c
    const-string v0, "friends_model"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 73
    const-string v0, "com.tapsdk.friends.loader"

    .restart local v0    # "componentIscImplClass":Ljava/lang/String;
    goto :goto_37

    .line 74
    .end local v0    # "componentIscImplClass":Ljava/lang/String;
    :cond_17
    const-string v0, "tapdb_model"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 75
    const-string v0, "com.tapsdk.tapdb.loader"

    .restart local v0    # "componentIscImplClass":Ljava/lang/String;
    goto :goto_37

    .line 76
    .end local v0    # "componentIscImplClass":Ljava/lang/String;
    :cond_22
    const-string v0, "friends_ui_model"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 77
    const-string v0, "com.tapsdk.friends.ui.loader"

    .restart local v0    # "componentIscImplClass":Ljava/lang/String;
    goto :goto_37

    .line 78
    .end local v0    # "componentIscImplClass":Ljava/lang/String;
    :cond_2d
    const-string v0, "achievement_model"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 79
    const-string v0, "com.tapsdk.achievement.loader"

    .line 85
    .restart local v0    # "componentIscImplClass":Ljava/lang/String;
    :goto_37
    :try_start_37
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 88
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4f} :catch_50

    return v1

    .line 89
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_50
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isComponentLoaded getMetaData error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->e(Ljava/lang/String;)V

    .line 93
    .end local v2    # "e":Ljava/lang/Exception;
    return v1

    .line 82
    .end local v0    # "componentIscImplClass":Ljava/lang/String;
    :cond_70
    return v1
.end method


# virtual methods
.method public init(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tapConfig"    # Lcom/tds/common/entities/TapConfig;

    .line 325
    :try_start_0
    iget-boolean v0, p0, Lcom/tapsdk/bootstrap/TapBootstrapImpl;->initialized:Z

    if-nez v0, :cond_e

    .line 326
    invoke-direct {p0}, Lcom/tapsdk/bootstrap/TapBootstrapImpl;->initTrackerListener()V

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/tapsdk/bootstrap/TapBootstrapImpl;->initOtherComponent(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;)V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapsdk/bootstrap/TapBootstrapImpl;->initialized:Z

    .line 334
    goto :goto_15

    .line 325
    :cond_e
    new-instance v0, Lcom/tapsdk/bootstrap/init/exceptions/ReInitError;

    invoke-direct {v0}, Lcom/tapsdk/bootstrap/init/exceptions/ReInitError;-><init>()V

    .end local p0    # "this":Lcom/tapsdk/bootstrap/TapBootstrapImpl;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "tapConfig":Lcom/tds/common/entities/TapConfig;
    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_14

    .line 329
    .restart local p0    # "this":Lcom/tapsdk/bootstrap/TapBootstrapImpl;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "tapConfig":Lcom/tds/common/entities/TapConfig;
    :catch_14
    move-exception v0

    .line 335
    :goto_15
    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .line 361
    iget-boolean v0, p0, Lcom/tapsdk/bootstrap/TapBootstrapImpl;->initialized:Z

    return v0
.end method

.method public varargs loginWithTapTap(Landroid/app/Activity;Lcom/tapsdk/bootstrap/Callback;[Ljava/lang/String;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/tapsdk/bootstrap/Callback<",
            "Lcom/tapsdk/bootstrap/account/TDSUser;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 366
    .local p2, "callback":Lcom/tapsdk/bootstrap/Callback;, "Lcom/tapsdk/bootstrap/Callback<Lcom/tapsdk/bootstrap/account/TDSUser;>;"
    iget-boolean v0, p0, Lcom/tapsdk/bootstrap/TapBootstrapImpl;->initialized:Z

    if-nez v0, :cond_14

    .line 367
    const-string v0, "TapSDK is not initialized."

    invoke-static {v0}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->e(Ljava/lang/String;)V

    .line 368
    if-eqz p2, :cond_13

    .line 369
    new-instance v0, Lcom/tapsdk/bootstrap/init/exceptions/UnInitializedError;

    invoke-direct {v0}, Lcom/tapsdk/bootstrap/init/exceptions/UnInitializedError;-><init>()V

    invoke-interface {p2, v0}, Lcom/tapsdk/bootstrap/Callback;->onFail(Lcom/tapsdk/bootstrap/exceptions/TapError;)V

    .line 371
    :cond_13
    return-void

    .line 373
    :cond_14
    invoke-static {p1, p2, p3}, Lcom/tapsdk/bootstrap/account/TDSUser;->loginWithTapTap(Landroid/app/Activity;Lcom/tapsdk/bootstrap/Callback;[Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public setPreferLang(I)V
    .registers 2
    .param p1, "lang"    # I

    .line 378
    invoke-static {p1}, Lcom/tds/common/localize/LocalizeManager;->changeGameSelectedLanguage(I)V

    .line 379
    return-void
.end method
