.class public Lcom/bytedance/sdk/openadsdk/core/d/i;
.super Ljava/lang/Object;
.source "DynamicClickInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/i$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/i$a;)V
    .registers 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/d/i$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->a(Lcom/bytedance/sdk/openadsdk/core/d/i$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/i;->a:I

    .line 23
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->b(Lcom/bytedance/sdk/openadsdk/core/d/i$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/i;->b:I

    .line 24
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->c(Lcom/bytedance/sdk/openadsdk/core/d/i$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/i;->c:I

    .line 25
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->d(Lcom/bytedance/sdk/openadsdk/core/d/i$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/i;->d:I

    .line 26
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->e(Lcom/bytedance/sdk/openadsdk/core/d/i$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/i;->e:J

    .line 27
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->f(Lcom/bytedance/sdk/openadsdk/core/d/i$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/i;->f:J

    .line 28
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->g(Lcom/bytedance/sdk/openadsdk/core/d/i$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/i;->g:I

    .line 29
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->h(Lcom/bytedance/sdk/openadsdk/core/d/i$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/i;->h:I

    .line 30
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->i(Lcom/bytedance/sdk/openadsdk/core/d/i$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/i;->i:I

    .line 31
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->j(Lcom/bytedance/sdk/openadsdk/core/d/i$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/i;->j:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/i$a;Lcom/bytedance/sdk/openadsdk/core/d/i$1;)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/i;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/i$a;)V

    return-void
.end method
