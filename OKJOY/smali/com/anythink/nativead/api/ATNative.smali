.class public Lcom/anythink/nativead/api/ATNative;
.super Ljava/lang/Object;


# instance fields
.field mAdLoadManager:Lcom/anythink/nativead/a/a;

.field mContext:Landroid/content/Context;

.field mListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

.field mLocalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mOpenSetting:Lcom/anythink/nativead/api/ATNativeOpenSetting;

.field mPlacementId:Ljava/lang/String;

.field mSelfListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V
    .registers 5

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/anythink/nativead/api/ATNativeOpenSetting;

    invoke-direct {v0}, Lcom/anythink/nativead/api/ATNativeOpenSetting;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mOpenSetting:Lcom/anythink/nativead/api/ATNativeOpenSetting;

    .line 47
    new-instance v0, Lcom/anythink/nativead/api/ATNative$1;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/api/ATNative$1;-><init>(Lcom/anythink/nativead/api/ATNative;)V

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mSelfListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 39
    iput-object p1, p0, Lcom/anythink/nativead/api/ATNative;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/anythink/nativead/api/ATNative;->mListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 43
    invoke-static {p1, p2}, Lcom/anythink/nativead/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/nativead/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    .line 44
    return-void
.end method


# virtual methods
.method public getNativeAd()Lcom/anythink/nativead/api/NativeAd;
    .registers 5

    .prologue
    .line 108
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/a/a;->g()Lcom/anythink/core/b/c/a;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_12

    .line 110
    new-instance v0, Lcom/anythink/nativead/api/NativeAd;

    iget-object v2, p0, Lcom/anythink/nativead/api/ATNative;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/anythink/nativead/api/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/b/c/a;)V

    .line 113
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getOpenSetting()Lcom/anythink/nativead/api/ATNativeOpenSetting;
    .registers 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    if-eqz v0, :cond_d

    .line 119
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNative;->mOpenSetting:Lcom/anythink/nativead/api/ATNativeOpenSetting;

    iget-object v2, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/nativead/a/a;->a(Lcom/anythink/nativead/api/ATNativeOpenSetting;Ljava/lang/String;)V

    .line 121
    :cond_d
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mOpenSetting:Lcom/anythink/nativead/api/ATNativeOpenSetting;

    return-object v0
.end method

.method public makeAdRequest()V
    .registers 6

    .prologue
    .line 87
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->l:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->n:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNative;->mLocalMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/anythink/nativead/api/ATNative;->mSelfListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/nativead/a/a;->a(Ljava/util/Map;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V

    .line 90
    return-void
.end method

.method public makeAdRequest(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->l:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->n:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNative;->mLocalMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/anythink/nativead/api/ATNative;->mSelfListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/nativead/a/a;->a(Ljava/util/Map;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V

    .line 81
    return-void
.end method

.method public setLocalExtra(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    iput-object p1, p0, Lcom/anythink/nativead/api/ATNative;->mLocalMap:Ljava/util/Map;

    .line 99
    return-void
.end method
