.class public Lcom/bytedance/sdk/openadsdk/core/w;
.super Ljava/lang/Object;
.source "TTAdNativeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/q;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Lcom/bytedance/sdk/openadsdk/core/q;

    .line 33
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/w;)Landroid/content/Context;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 6

    .line 279
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    const-string v3, "\u5fc5\u987b\u8bbe\u7f6e\u56fe\u7247\u7d20\u6750\u5c3a\u5bf8"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result p1

    if-lez p1, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 281
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z
    .registers 6

    .line 311
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 312
    return v0

    .line 314
    :cond_4
    const/4 v1, 0x1

    if-eqz p2, :cond_16

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/h/h;->i(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_16

    .line 315
    return v1

    .line 317
    :cond_16
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_20

    move v0, v1

    :cond_20
    return v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/a/b;)Z
    .registers 4

    .line 301
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 302
    if-eqz p1, :cond_f

    .line 303
    const/16 v0, 0x3e8

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/a/b;->onError(ILjava/lang/String;)V

    .line 305
    :cond_f
    const/4 p1, 0x1

    return p1

    .line 307
    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 3

    .line 284
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 285
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result p1

    if-lez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    const-string v0, "\u5fc5\u987b\u8bbe\u7f6e\u8bf7\u6c42\u539f\u751f\u5e7f\u544a\u7684\u7c7b\u578b\uff0c "

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 286
    return-void
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 3

    .line 289
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 290
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    const-string v0, "\u8bf7\u6c42\u975e\u539f\u751f\u5e7f\u544a\u7684\u7c7b\u578b\uff0c\u8bf7\u52ff\u8c03\u7528setNativeAdType()\u65b9\u6cd5"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(ZLjava/lang/String;)V

    .line 291
    return-void
.end method


# virtual methods
.method public loadBannerAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V
    .registers 11

    .line 127
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    return-void

    .line 130
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 133
    :try_start_a
    const-string v0, "com.bytedance.sdk.openadsdk.TTC1Proxy"

    const-string v1, "load"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_34

    .line 136
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_35

    .line 140
    :cond_34
    goto :goto_3d

    .line 138
    :catchall_35
    move-exception p1

    .line 139
    const-string p2, "TTAdNativeImpl"

    const-string v0, "banner component maybe not exist, pls check"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    :goto_3d
    return-void
.end method

.method public loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .registers 6

    .line 254
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    return-void

    .line 257
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 258
    const/16 p1, 0x6e

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;->onError(ILjava/lang/String;)V

    .line 259
    return-void

    .line 261
    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setNativeAdType(I)V

    .line 262
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;I)V

    .line 263
    return-void
.end method

.method public loadDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V
    .registers 11

    .line 74
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    return-void

    .line 77
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 80
    :try_start_a
    const-string v0, "com.bytedance.sdk.openadsdk.TTC5Proxy"

    const-string v1, "loadDraw"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_34

    .line 83
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_35

    .line 87
    :cond_34
    goto :goto_3d

    .line 85
    :catchall_35
    move-exception p1

    .line 86
    const-string p2, "TTAdNativeImpl"

    const-string v0, "feed component maybe not exist, pls check2"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    :goto_3d
    return-void
.end method

.method public loadExpressDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .registers 6

    .line 242
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    return-void

    .line 245
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 246
    const/16 p1, 0x6e

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;->onError(ILjava/lang/String;)V

    .line 247
    return-void

    .line 249
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    move-result-object v0

    const/16 v1, 0x9

    const/16 v2, 0x1388

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;I)V

    .line 250
    return-void
.end method

.method public loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    .registers 11

    .line 38
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    return-void

    .line 41
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 44
    :try_start_a
    const-string v0, "com.bytedance.sdk.openadsdk.TTC5Proxy"

    const-string v1, "loadFeed"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_34

    .line 47
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_35

    .line 51
    :cond_34
    goto :goto_3d

    .line 49
    :catchall_35
    move-exception p1

    .line 50
    const-string p2, "TTAdNativeImpl"

    const-string v0, "feed component maybe not exist, pls check1"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :goto_3d
    return-void
.end method

.method public loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V
    .registers 11

    .line 213
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 214
    return-void

    .line 218
    :cond_7
    :try_start_7
    const-string v0, "com.bytedance.sdk.openadsdk.TTC3Proxy"

    const-string v1, "loadFull"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_31

    .line 221
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_32

    .line 225
    :cond_31
    goto :goto_3a

    .line 223
    :catchall_32
    move-exception p1

    .line 224
    const-string p2, "TTAdNativeImpl"

    const-string v0, "reward component maybe not exist, pls check2"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    :goto_3a
    return-void
.end method

.method public loadInteractionAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
    .registers 11

    .line 145
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    return-void

    .line 149
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 152
    :try_start_a
    const-string v0, "com.bytedance.sdk.openadsdk.TTC4Proxy"

    const-string v1, "load"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_34

    .line 155
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_35

    .line 159
    :cond_34
    goto :goto_3d

    .line 157
    :catchall_35
    move-exception p1

    .line 158
    const-string p2, "TTAdNativeImpl"

    const-string v0, "interaction component maybe not exist, pls check"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    :goto_3d
    return-void
.end method

.method public loadInteractionExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .registers 6

    .line 267
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 268
    return-void

    .line 270
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 271
    const/16 p1, 0x6e

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;->onError(ILjava/lang/String;)V

    .line 272
    return-void

    .line 274
    :cond_18
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setNativeAdType(I)V

    .line 275
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;I)V

    .line 276
    return-void
.end method

.method public loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V
    .registers 7

    .line 92
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    return-void

    .line 95
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Lcom/bytedance/sdk/openadsdk/core/q;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/w$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/w$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/w;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;ILcom/bytedance/sdk/openadsdk/core/q$b;)V

    .line 123
    return-void
.end method

.method public loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .registers 6

    .line 230
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 231
    return-void

    .line 233
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 234
    const/16 p1, 0x6e

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;->onError(ILjava/lang/String;)V

    .line 235
    return-void

    .line 237
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x1388

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;I)V

    .line 238
    return-void
.end method

.method public loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .registers 11

    .line 196
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 197
    return-void

    .line 201
    :cond_7
    :try_start_7
    const-string v0, "com.bytedance.sdk.openadsdk.TTC3Proxy"

    const-string v1, "loadReward"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_31

    .line 204
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_32

    .line 208
    :cond_31
    goto :goto_3a

    .line 206
    :catchall_32
    move-exception p1

    .line 207
    const-string p2, "TTAdNativeImpl"

    const-string v0, "reward component maybe not exist, pls check1"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    :goto_3a
    return-void
.end method

.method public loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;)V
    .registers 4

    .line 183
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 184
    return-void

    .line 186
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 187
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 188
    const/16 p1, 0x6e

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onError(ILjava/lang/String;)V

    .line 189
    return-void

    .line 191
    :cond_1b
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V

    .line 192
    return-void
.end method

.method public loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
    .registers 13

    .line 165
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    return-void

    .line 168
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 171
    :try_start_a
    const-string v0, "com.bytedance.sdk.openadsdk.TTC2Proxy"

    const-string v1, "load"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_3f

    .line 174
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_40

    .line 178
    :cond_3f
    goto :goto_48

    .line 176
    :catchall_40
    move-exception p1

    .line 177
    const-string p2, "TTAdNativeImpl"

    const-string p3, "splash component maybe not exist, pls check1"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    :goto_48
    return-void
.end method

.method public loadStream(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    .registers 11

    .line 56
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57
    return-void

    .line 59
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 62
    :try_start_a
    const-string v0, "com.bytedance.sdk.openadsdk.TTC5Proxy"

    const-string v1, "loadStream"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_34

    .line 65
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_35

    .line 69
    :cond_34
    goto :goto_3d

    .line 67
    :catchall_35
    move-exception p1

    .line 68
    const-string p2, "TTAdNativeImpl"

    const-string v0, "feed component maybe not exist, pls check1"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :goto_3d
    return-void
.end method
