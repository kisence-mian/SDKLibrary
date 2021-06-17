.class public abstract Lcom/facebook/AccessTokenTracker;
.super Ljava/lang/Object;
.source "AccessTokenTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private isTracking:Z

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/AccessTokenTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    .line 58
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 60
    new-instance v0, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;-><init>(Lcom/facebook/AccessTokenTracker;Lcom/facebook/AccessTokenTracker$1;)V

    iput-object v0, p0, Lcom/facebook/AccessTokenTracker;->receiver:Landroid/content/BroadcastReceiver;

    .line 61
    nop

    .line 62
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessTokenTracker;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 64
    invoke-virtual {p0}, Lcom/facebook/AccessTokenTracker;->startTracking()V

    .line 65
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 38
    sget-object v0, Lcom/facebook/AccessTokenTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addBroadcastReceiver()V
    .registers 4

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/facebook/AccessTokenTracker;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/AccessTokenTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 121
    return-void
.end method


# virtual methods
.method public isTracking()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    return v0
.end method

.method protected abstract onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
.end method

.method public startTracking()V
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    if-eqz v0, :cond_5

    .line 72
    return-void

    .line 75
    :cond_5
    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;->addBroadcastReceiver()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    .line 78
    return-void
.end method

.method public stopTracking()V
    .registers 3

    .line 84
    iget-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    if-nez v0, :cond_5

    .line 85
    return-void

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/facebook/AccessTokenTracker;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/facebook/AccessTokenTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    .line 90
    return-void
.end method
