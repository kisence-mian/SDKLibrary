.class Lcom/bytedance/sdk/openadsdk/component/splash/a$a$1;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "SplashAdCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/a$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;)V
    .registers 2

    .line 929
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 932
    const-string v0, "SplashAdCacheManager"

    const-string v1, "\u89e6\u53d1\u5b9a\u65f6\u5668\u8fdb\u884c\u68c0\u6d4b\u5b9e\u73b0\u9700\u8981\u52a0\u8f7d\u5f00\u5c4f\u5e7f\u544a"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 934
    return-void
.end method
