.class Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field c:Lcom/bytedance/sdk/openadsdk/core/d/m;

.field d:Z

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/component/splash/a$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V
    .registers 5

    .line 1036
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->e:Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->d:Z

    .line 1037
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->a:Ljava/lang/String;

    .line 1038
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 1039
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/m;

    .line 1040
    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .line 1043
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->d:Z

    .line 1044
    return-void
.end method

.method public a()Z
    .registers 2

    .line 1047
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$a;->d:Z

    return v0
.end method
