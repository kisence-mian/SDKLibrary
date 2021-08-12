.class public Lcom/anythink/nativead/splash/api/ATNativeSplash;
.super Ljava/lang/Object;


# instance fields
.field anythinkNative:Lcom/anythink/nativead/api/ATNative;

.field mContainer:Landroid/view/ViewGroup;

.field mFetchDelay:J

.field mHandler:Landroid/os/Handler;

.field mIsOverLoad:Z

.field mListener:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

.field mSkipView:Landroid/view/View;

.field mUnitId:Ljava/lang/String;

.field nativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

.field overLoadRunnable:Ljava/lang/Runnable;

.field templateStrategy:Lcom/anythink/core/common/d/z;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lcom/anythink/nativead/splash/api/ATNativeSplashListener;)V
    .registers 17

    .line 140
    const/4 v5, 0x0

    const-wide/16 v6, 0x1388

    const-wide/16 v8, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/anythink/nativead/splash/api/ATNativeSplash;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/util/Map;JJLcom/anythink/nativead/splash/api/ATNativeSplashListener;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/util/Map;JJLcom/anythink/nativead/splash/api/ATNativeSplashListener;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;JJ",
            "Lcom/anythink/nativead/splash/api/ATNativeSplashListener;",
            ")V"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;-><init>(Lcom/anythink/nativead/splash/api/ATNativeSplash;)V

    iput-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->nativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 89
    new-instance v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$2;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/splash/api/ATNativeSplash$2;-><init>(Lcom/anythink/nativead/splash/api/ATNativeSplash;)V

    iput-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->overLoadRunnable:Ljava/lang/Runnable;

    .line 156
    if-eqz p1, :cond_67

    if-nez p2, :cond_21

    goto :goto_67

    .line 163
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mIsOverLoad:Z

    .line 164
    const-wide/16 v0, 0xbb8

    cmp-long v2, p8, v0

    if-gtz v2, :cond_2d

    .line 165
    iput-wide v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mFetchDelay:J

    goto :goto_38

    .line 166
    :cond_2d
    const-wide/16 v0, 0x1b58

    cmp-long v2, p8, v0

    if-ltz v2, :cond_36

    .line 167
    iput-wide v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mFetchDelay:J

    goto :goto_38

    .line 169
    :cond_36
    iput-wide p8, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mFetchDelay:J

    .line 172
    :goto_38
    const-wide/16 p8, 0x0

    cmp-long p8, p6, p8

    if-gez p8, :cond_40

    .line 173
    const-wide/16 p6, 0x1388

    .line 176
    :cond_40
    iput-object p2, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mContainer:Landroid/view/ViewGroup;

    .line 177
    iput-object p4, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mUnitId:Ljava/lang/String;

    .line 178
    iput-object p10, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mListener:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    .line 179
    iput-object p3, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mSkipView:Landroid/view/View;

    .line 181
    new-instance p2, Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->nativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-direct {p2, p1, p4, p3}, Lcom/anythink/nativead/api/ATNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V

    iput-object p2, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->anythinkNative:Lcom/anythink/nativead/api/ATNative;

    .line 182
    if-eqz p5, :cond_5a

    .line 183
    invoke-virtual {p2, p5}, Lcom/anythink/nativead/api/ATNative;->setLocalExtra(Ljava/util/Map;)V

    .line 185
    :cond_5a
    iget-object p1, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->anythinkNative:Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {p1}, Lcom/anythink/nativead/api/ATNative;->makeAdRequest()V

    .line 187
    iget-object p1, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->overLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p6, p7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    return-void

    .line 157
    :cond_67
    :goto_67
    if-eqz p10, :cond_6e

    .line 158
    const-string p1, "activity or constainer could not be null!"

    invoke-interface {p10, p1}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onNoAdError(Ljava/lang/String;)V

    .line 160
    :cond_6e
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/nativead/splash/api/ATNativeSplashListener;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/nativead/splash/api/ATNativeSplashListener;",
            ")V"
        }
    .end annotation

    .line 132
    const-wide/16 v6, 0x1388

    const-wide/16 v8, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/anythink/nativead/splash/api/ATNativeSplash;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/util/Map;JJLcom/anythink/nativead/splash/api/ATNativeSplashListener;)V

    .line 133
    return-void
.end method
