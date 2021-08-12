.class public Lcom/bytedance/sdk/openadsdk/core/d/p;
.super Ljava/lang/Object;
.source "SplashAdCache.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private b:[B

.field private c:Lcom/bytedance/sdk/openadsdk/core/d/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;[B)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 17
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 18
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->b:[B

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 3

    .line 27
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 29
    if-eqz p1, :cond_8

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Z)V

    .line 32
    :cond_8
    return-void
.end method

.method public a([B)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->b:[B

    .line 41
    return-void
.end method

.method public b()[B
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->b:[B

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/core/d/a;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    return-object v0
.end method
