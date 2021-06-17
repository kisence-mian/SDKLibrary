.class public final Lcom/facebook/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# static fields
.field public static final ACTION_CURRENT_PROFILE_CHANGED:Ljava/lang/String; = "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

.field public static final EXTRA_NEW_PROFILE:Ljava/lang/String; = "com.facebook.sdk.EXTRA_NEW_PROFILE"

.field public static final EXTRA_OLD_PROFILE:Ljava/lang/String; = "com.facebook.sdk.EXTRA_OLD_PROFILE"

.field private static volatile instance:Lcom/facebook/ProfileManager;


# instance fields
.field private currentProfile:Lcom/facebook/Profile;

.field private final localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final profileCache:Lcom/facebook/ProfileCache;


# direct methods
.method constructor <init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/ProfileCache;)V
    .registers 4
    .param p1, "localBroadcastManager"    # Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .param p2, "profileCache"    # Lcom/facebook/ProfileCache;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string v0, "profileCache"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/facebook/ProfileManager;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 52
    iput-object p2, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    .line 53
    return-void
.end method

.method static getInstance()Lcom/facebook/ProfileManager;
    .registers 5

    .line 56
    sget-object v0, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    if-nez v0, :cond_24

    .line 57
    const-class v0, Lcom/facebook/ProfileManager;

    monitor-enter v0

    .line 58
    :try_start_7
    sget-object v1, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    if-nez v1, :cond_1f

    .line 59
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 60
    .local v1, "applicationContext":Landroid/content/Context;
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    .line 63
    .local v2, "localBroadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v3, Lcom/facebook/ProfileManager;

    new-instance v4, Lcom/facebook/ProfileCache;

    invoke-direct {v4}, Lcom/facebook/ProfileCache;-><init>()V

    invoke-direct {v3, v2, v4}, Lcom/facebook/ProfileManager;-><init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/ProfileCache;)V

    sput-object v3, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    .line 65
    .end local v1    # "applicationContext":Landroid/content/Context;
    .end local v2    # "localBroadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    :cond_1f
    monitor-exit v0

    goto :goto_24

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1

    .line 67
    :cond_24
    :goto_24
    sget-object v0, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    return-object v0
.end method

.method private sendCurrentProfileChangedBroadcast(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .registers 5
    .param p1, "oldProfile"    # Lcom/facebook/Profile;
    .param p2, "currentProfile"    # Lcom/facebook/Profile;

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    const-string v1, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/facebook/ProfileManager;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 115
    return-void
.end method

.method private setCurrentProfile(Lcom/facebook/Profile;Z)V
    .registers 5
    .param p1, "currentProfile"    # Lcom/facebook/Profile;
    .param p2, "writeToCache"    # Z

    .line 90
    iget-object v0, p0, Lcom/facebook/ProfileManager;->currentProfile:Lcom/facebook/Profile;

    .line 91
    .local v0, "oldProfile":Lcom/facebook/Profile;
    iput-object p1, p0, Lcom/facebook/ProfileManager;->currentProfile:Lcom/facebook/Profile;

    .line 93
    if-eqz p2, :cond_13

    .line 94
    if-eqz p1, :cond_e

    .line 95
    iget-object v1, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    invoke-virtual {v1, p1}, Lcom/facebook/ProfileCache;->save(Lcom/facebook/Profile;)V

    goto :goto_13

    .line 97
    :cond_e
    iget-object v1, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    invoke-virtual {v1}, Lcom/facebook/ProfileCache;->clear()V

    .line 101
    :cond_13
    :goto_13
    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/facebook/ProfileManager;->sendCurrentProfileChangedBroadcast(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    .line 104
    :cond_1c
    return-void
.end method


# virtual methods
.method getCurrentProfile()Lcom/facebook/Profile;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/facebook/ProfileManager;->currentProfile:Lcom/facebook/Profile;

    return-object v0
.end method

.method loadCurrentProfile()Z
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    invoke-virtual {v0}, Lcom/facebook/ProfileCache;->load()Lcom/facebook/Profile;

    move-result-object v0

    .line 77
    .local v0, "profile":Lcom/facebook/Profile;
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 78
    invoke-direct {p0, v0, v1}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;Z)V

    .line 79
    const/4 v1, 0x1

    return v1

    .line 82
    :cond_e
    return v1
.end method

.method setCurrentProfile(Lcom/facebook/Profile;)V
    .registers 3
    .param p1, "currentProfile"    # Lcom/facebook/Profile;

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;Z)V

    .line 87
    return-void
.end method
