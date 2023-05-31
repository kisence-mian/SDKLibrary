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

.field templateStrategy:Lcom/anythink/core/b/c/m;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lcom/anythink/nativead/splash/api/ATNativeSplashListener;)V
    .registers 17

    .prologue
    .line 134
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

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/util/Map;JJLcom/anythink/nativead/splash/api/ATNativeSplashListener;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;JJ",
            "Lcom/anythink/nativead/splash/api/ATNativeSplashListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;-><init>(Lcom/anythink/nativead/splash/api/ATNativeSplash;)V

    iput-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->nativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 83
    new-instance v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$2;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/splash/api/ATNativeSplash$2;-><init>(Lcom/anythink/nativead/splash/api/ATNativeSplash;)V

    iput-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->overLoadRunnable:Ljava/lang/Runnable;

    .line 150
    if-eqz p1, :cond_20

    if-nez p2, :cond_28

    .line 151
    :cond_20
    if-eqz p10, :cond_27

    .line 152
    const-string v0, "activity or constainer could not be null!"

    invoke-interface {p10, v0}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onNoAdError(Ljava/lang/String;)V

    .line 183
    :cond_27
    :goto_27
    return-void

    .line 157
    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mIsOverLoad:Z

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/nativead/a/a/b;->a(Landroid/content/Context;)V

    .line 159
    const-wide/16 v0, 0xbb8

    cmp-long v0, p8, v0

    if-gtz v0, :cond_6d

    .line 160
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mFetchDelay:J

    .line 167
    :goto_3c
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-gez v0, :cond_44

    .line 168
    const-wide/16 p6, 0x1388

    .line 171
    :cond_44
    iput-object p2, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mContainer:Landroid/view/ViewGroup;

    .line 172
    iput-object p4, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mUnitId:Ljava/lang/String;

    .line 173
    iput-object p10, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mListener:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    .line 174
    iput-object p3, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mSkipView:Landroid/view/View;

    .line 176
    new-instance v0, Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->nativeNetworkListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-direct {v0, v1, p4, v2}, Lcom/anythink/nativead/api/ATNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V

    iput-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->anythinkNative:Lcom/anythink/nativead/api/ATNative;

    .line 177
    if-eqz p5, :cond_60

    .line 178
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->anythinkNative:Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {v0, p5}, Lcom/anythink/nativead/api/ATNative;->setLocalExtra(Ljava/util/Map;)V

    .line 180
    :cond_60
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->anythinkNative:Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNative;->makeAdRequest()V

    .line 182
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->overLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p6, p7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_27

    .line 161
    :cond_6d
    const-wide/16 v0, 0x1b58

    cmp-long v0, p8, v0

    if-ltz v0, :cond_78

    .line 162
    const-wide/16 v0, 0x1b58

    iput-wide v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mFetchDelay:J

    goto :goto_3c

    .line 164
    :cond_78
    iput-wide p8, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mFetchDelay:J

    goto :goto_3c
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/nativead/splash/api/ATNativeSplashListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
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

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;JJLcom/anythink/nativead/splash/api/ATNativeSplashListener;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;JJ",
            "Lcom/anythink/nativead/splash/api/ATNativeSplashListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/anythink/nativead/splash/api/ATNativeSplash;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/util/Map;JJLcom/anythink/nativead/splash/api/ATNativeSplashListener;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/nativead/splash/api/ATNativeSplashListener;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/nativead/splash/api/ATNativeSplashListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    const/4 v5, 0x0

    const-wide/16 v6, 0x1388

    const-wide/16 v8, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/anythink/nativead/splash/api/ATNativeSplash;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/util/Map;JJLcom/anythink/nativead/splash/api/ATNativeSplashListener;)V

    .line 102
    return-void
.end method
