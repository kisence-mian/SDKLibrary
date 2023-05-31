.class public Lcom/bytedance/sdk/openadsdk/core/w;
.super Ljava/lang/Object;
.source "TTAdNativeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/p;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 33
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/w;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v0

    if-lez v0, :cond_1a

    move v0, v1

    :goto_9
    const-string v3, "\u5fc5\u987b\u8bbe\u7f6e\u56fe\u7247\u7d20\u6750\u5c3a\u5bf8"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(ZLjava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v0

    if-lez v0, :cond_1c

    :goto_14
    const-string v0, "\u5fc5\u987b\u8bbe\u7f6e\u56fe\u7247\u7d20\u6750\u5c3a\u5bf8"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(ZLjava/lang/String;)V

    .line 245
    return-void

    :cond_1a
    move v0, v2

    .line 243
    goto :goto_9

    :cond_1c
    move v1, v2

    .line 244
    goto :goto_14
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/a/b;)Z
    .registers 4

    .prologue
    .line 265
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 266
    if-eqz p1, :cond_f

    .line 267
    const/16 v0, 0x3e8

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/a/b;->onError(ILjava/lang/String;)V

    .line 269
    :cond_f
    const/4 v0, 0x1

    .line 271
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 4

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 249
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_a
    const-string v1, "\u5fc5\u987b\u8bbe\u7f6e\u8bf7\u6c42\u539f\u751f\u5e7f\u544a\u7684\u7c7b\u578b\uff0c\u76ee\u524d\u652f\u6301TYPE_BANNER\u548cTYPE_INTERACTION_AD"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(ZLjava/lang/String;)V

    .line 250
    return-void

    .line 249
    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 4

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 254
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_a
    const-string v1, "\u8bf7\u6c42\u975e\u539f\u751f\u5e7f\u544a\u7684\u7c7b\u578b\uff0c\u8bf7\u52ff\u8c03\u7528setNativeAdType()\u65b9\u6cd5"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(ZLjava/lang/String;)V

    .line 255
    return-void

    .line 254
    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public loadBannerAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V
    .registers 8
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 124
    :cond_6
    :goto_6
    return-void

    .line 113
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 116
    :try_start_a
    const-string v0, "com.bytedance.sdk.openadsdk.TTC1Proxy"

    const-string v1, "load"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_38} :catch_39

    goto :goto_6

    .line 121
    :catch_39
    move-exception v0

    .line 122
    const-string v1, "TTAdNativeImpl"

    const-string v2, "banner component maybe not exist, pls check"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .registers 6
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 226
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 231
    :goto_7
    return-void

    .line 229
    :cond_8
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setNativeAdType(I)V

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;I)V

    goto :goto_7
.end method

.method public loadDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V
    .registers 8
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    :cond_6
    :goto_6
    return-void

    .line 60
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 63
    :try_start_a
    const-string v0, "com.bytedance.sdk.openadsdk.TTC5Proxy"

    const-string v1, "loadDraw"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_6

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_38} :catch_39

    goto :goto_6

    .line 68
    :catch_39
    move-exception v0

    .line 69
    const-string v1, "TTAdNativeImpl"

    const-string v2, "feed component maybe not exist, pls check2"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public loadExpressDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .registers 6
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 218
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    :goto_6
    return-void

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    move-result-object v0

    const/16 v1, 0x9

    const/16 v2, 0x1388

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;I)V

    goto :goto_6
.end method

.method public loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    .registers 8
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 52
    :cond_6
    :goto_6
    return-void

    .line 41
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 44
    :try_start_a
    const-string v0, "com.bytedance.sdk.openadsdk.TTC5Proxy"

    const-string v1, "loadFeed"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_6

    .line 47
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_38} :catch_39

    goto :goto_6

    .line 49
    :catch_39
    move-exception v0

    .line 50
    const-string v1, "TTAdNativeImpl"

    const-string v2, "feed component maybe not exist, pls check1"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V
    .registers 8
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 206
    :cond_6
    :goto_6
    return-void

    .line 198
    :cond_7
    :try_start_7
    const-string v0, "com.bytedance.sdk.openadsdk.TTC3Proxy"

    const-string v1, "loadFull"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_6

    .line 201
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_35} :catch_36

    goto :goto_6

    .line 203
    :catch_36
    move-exception v0

    .line 204
    const-string v1, "TTAdNativeImpl"

    const-string v2, "reward component maybe not exist, pls check2"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public loadInteractionAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
    .registers 8
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 144
    :cond_6
    :goto_6
    return-void

    .line 132
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 135
    :try_start_a
    const-string v0, "com.bytedance.sdk.openadsdk.TTC4Proxy"

    const-string v1, "load"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_6

    .line 138
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_38} :catch_39

    goto :goto_6

    .line 140
    :catch_39
    move-exception v0

    .line 141
    const-string v1, "TTAdNativeImpl"

    const-string v2, "interaction component maybe not exist, pls check"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public loadInteractionExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .registers 6
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x2

    .line 235
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 240
    :goto_7
    return-void

    .line 238
    :cond_8
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setNativeAdType(I)V

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;I)V

    goto :goto_7
.end method

.method public loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V
    .registers 7
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    :goto_6
    return-void

    .line 78
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/w$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/w$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/w;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/core/p$b;)V

    goto :goto_6
.end method

.method public loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .registers 6
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 214
    :goto_6
    return-void

    .line 213
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x1388

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;I)V

    goto :goto_6
.end method

.method public loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .registers 8
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 176
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    :cond_6
    :goto_6
    return-void

    .line 181
    :cond_7
    :try_start_7
    const-string v0, "com.bytedance.sdk.openadsdk.TTC3Proxy"

    const-string v1, "loadReward"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_6

    .line 184
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_35} :catch_36

    goto :goto_6

    .line 186
    :catch_36
    move-exception v0

    .line 187
    const-string v1, "TTAdNativeImpl"

    const-string v2, "reward component maybe not exist, pls check1"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;)V
    .registers 4
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 166
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 172
    :goto_6
    return-void

    .line 169
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 171
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V

    goto :goto_6
.end method

.method public loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
    .registers 9
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    :cond_6
    :goto_6
    return-void

    .line 151
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 154
    :try_start_a
    const-string v0, "com.bytedance.sdk.openadsdk.TTC2Proxy"

    const-string v1, "load"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/bytedance/sdk/openadsdk/AdSlot;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_6

    .line 157
    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_44} :catch_45

    goto :goto_6

    .line 159
    :catch_45
    move-exception v0

    .line 160
    const-string v1, "TTAdNativeImpl"

    const-string v2, "splash component maybe not exist, pls check1"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method
