.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;
.super Ljava/lang/Object;
.source "CacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;
    }
.end annotation


# instance fields
.field final a:I

.field final b:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/c;

.field private final c:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;->a:I

    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->b(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;->c:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->c(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/c;

    .line 12
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$1;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;->c:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;->a:I

    return v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/c;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/c;

    return-object v0
.end method
