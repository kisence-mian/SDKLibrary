.class Lcom/bytedance/sdk/openadsdk/component/splash/a$a;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:J

.field c:J

.field d:J


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a:Z

    .line 340
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:J

    .line 341
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->c:J

    .line 342
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->d:J

    return-void
.end method
