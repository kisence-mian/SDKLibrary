.class public final Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;
.super Ljava/lang/Object;
.source "CacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

.field private c:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/c;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->c:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/c;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;
    .registers 2

    .line 32
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->a:I

    .line 33
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;
    .registers 2

    .line 43
    if-nez p1, :cond_4

    .line 44
    sget-object p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    .line 46
    :cond_4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    .line 47
    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;
    .registers 3

    .line 56
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$1;)V

    return-object v0
.end method
