.class public Lcom/anythink/nativead/api/ATNative;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_HEIGHT:Ljava/lang/String; = "key_height"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_WIDTH:Ljava/lang/String; = "key_width"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field mAdLoadManager:Lcom/anythink/nativead/a/a;

.field mContext:Landroid/content/Context;

.field mListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

.field mOpenSetting:Lcom/anythink/nativead/api/ATNativeOpenSetting;

.field mPlacementId:Ljava/lang/String;

.field mSelfListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/anythink/nativead/api/ATNativeOpenSetting;

    invoke-direct {v0}, Lcom/anythink/nativead/api/ATNativeOpenSetting;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mOpenSetting:Lcom/anythink/nativead/api/ATNativeOpenSetting;

    .line 57
    new-instance v0, Lcom/anythink/nativead/api/ATNative$1;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/api/ATNative$1;-><init>(Lcom/anythink/nativead/api/ATNative;)V

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mSelfListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 49
    iput-object p1, p0, Lcom/anythink/nativead/api/ATNative;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/anythink/nativead/api/ATNative;->mListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 53
    invoke-static {p1, p2}, Lcom/anythink/nativead/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/nativead/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    .line 54
    return-void
.end method


# virtual methods
.method public getNativeAd()Lcom/anythink/nativead/api/NativeAd;
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/a/a;->g()Lcom/anythink/core/common/d/b;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_12

    .line 114
    new-instance v1, Lcom/anythink/nativead/api/NativeAd;

    iget-object v2, p0, Lcom/anythink/nativead/api/ATNative;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/anythink/nativead/api/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/d/b;)V

    .line 115
    return-object v1

    .line 117
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOpenSetting()Lcom/anythink/nativead/api/ATNativeOpenSetting;
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    if-eqz v0, :cond_b

    .line 123
    iget-object v1, p0, Lcom/anythink/nativead/api/ATNative;->mOpenSetting:Lcom/anythink/nativead/api/ATNativeOpenSetting;

    iget-object v2, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/nativead/a/a;->a(Lcom/anythink/nativead/api/ATNativeOpenSetting;Ljava/lang/String;)V

    .line 125
    :cond_b
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mOpenSetting:Lcom/anythink/nativead/api/ATNativeOpenSetting;

    return-object v0
.end method

.method public makeAdRequest()V
    .registers 6

    .line 91
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/e$e;->l:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->n:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNative;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/nativead/api/ATNative;->mSelfListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/nativead/a/a;->a(Landroid/content/Context;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V

    .line 94
    return-void
.end method

.method public setLocalExtra(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNative;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    return-void
.end method
