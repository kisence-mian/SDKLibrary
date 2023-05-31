.class public Lcom/bytedance/sdk/openadsdk/core/d/n;
.super Ljava/lang/Object;
.source "SplashAdCache.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private b:[B

.field private c:Lcom/bytedance/sdk/openadsdk/core/d/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/k;[B)V
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/n;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 17
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/n;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 18
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/n;->b:[B

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/n;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 4

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/n;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/n;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_c

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/n;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c(Z)V

    .line 32
    :cond_c
    return-void
.end method

.method public a([B)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/n;->b:[B

    .line 41
    return-void
.end method

.method public b()[B
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/n;->b:[B

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/core/d/a;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/n;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    return-object v0
.end method
