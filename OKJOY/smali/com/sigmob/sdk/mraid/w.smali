.class Lcom/sigmob/sdk/mraid/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Rect;

.field private final i:Landroid/graphics/Rect;

.field private final j:F


# direct methods
.method constructor <init>(Landroid/content/Context;F)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/w;->a:Landroid/content/Context;

    iput p2, p0, Lcom/sigmob/sdk/mraid/w;->j:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/w;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/w;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/w;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/w;->e:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/w;->f:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/w;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/w;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/w;->i:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/w;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/b;->a(FLandroid/content/Context;)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/w;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/utils/b;->a(FLandroid/content/Context;)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/w;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sigmob/sdk/base/common/utils/b;->a(FLandroid/content/Context;)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/w;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/sigmob/sdk/base/common/utils/b;->a(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/mraid/w;->j:F

    return v0
.end method

.method a(II)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/w;->c:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/mraid/w;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method a(IIII)V
    .registers 8

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->d:Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/w;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/mraid/w;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method b()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method b(IIII)V
    .registers 8

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->f:Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/w;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/mraid/w;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method c()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->c:Landroid/graphics/Rect;

    return-object v0
.end method

.method c(IIII)V
    .registers 8

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->h:Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->h:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/w;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/mraid/w;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method d()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method e()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->e:Landroid/graphics/Rect;

    return-object v0
.end method

.method f()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->f:Landroid/graphics/Rect;

    return-object v0
.end method

.method g()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method h()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->h:Landroid/graphics/Rect;

    return-object v0
.end method

.method i()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/w;->i:Landroid/graphics/Rect;

    return-object v0
.end method
