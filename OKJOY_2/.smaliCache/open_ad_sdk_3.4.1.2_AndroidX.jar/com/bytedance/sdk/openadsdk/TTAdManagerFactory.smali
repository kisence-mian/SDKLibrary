.class public Lcom/bytedance/sdk/openadsdk/TTAdManagerFactory;
.super Ljava/lang/Object;
.source "TTAdManagerFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/openadsdk/TTAdManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/v;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TTAdManagerFactory;->a:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static a()Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 1

    .line 43
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdManagerFactory;->a:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 2

    .line 24
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManagerFactory;->getInstance(Landroid/content/Context;Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 2

    .line 35
    if-eqz p1, :cond_5

    .line 36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->a()V

    .line 38
    :cond_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Landroid/content/Context;)V

    .line 39
    sget-object p0, Lcom/bytedance/sdk/openadsdk/TTAdManagerFactory;->a:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    return-object p0
.end method
