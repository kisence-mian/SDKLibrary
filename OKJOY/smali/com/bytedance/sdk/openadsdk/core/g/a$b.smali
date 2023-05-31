.class Lcom/bytedance/sdk/openadsdk/core/g/a$b;
.super Ljava/lang/Object;
.source "PlayableCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/a$1;)V
    .registers 2

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 5

    .prologue
    .line 515
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->b:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public a(J)Lcom/bytedance/sdk/openadsdk/core/g/a$b;
    .registers 4

    .prologue
    .line 523
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->a:J

    .line 524
    return-object p0
.end method

.method public b()J
    .registers 5

    .prologue
    .line 519
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->d:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public b(J)Lcom/bytedance/sdk/openadsdk/core/g/a$b;
    .registers 4

    .prologue
    .line 528
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->b:J

    .line 529
    return-object p0
.end method

.method public c(J)Lcom/bytedance/sdk/openadsdk/core/g/a$b;
    .registers 4

    .prologue
    .line 533
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->c:J

    .line 534
    return-object p0
.end method

.method public d(J)Lcom/bytedance/sdk/openadsdk/core/g/a$b;
    .registers 4

    .prologue
    .line 538
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->d:J

    .line 539
    return-object p0
.end method
