.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;
.super Lcom/bytedance/sdk/openadsdk/core/a/b;
.source "ExpressClickListener.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/d/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/d/e;
    .registers 22

    .prologue
    .line 28
    const/4 v2, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->x:I

    .line 29
    const/4 v2, 0x0

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->y:I

    .line 30
    const/4 v2, 0x0

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->z:I

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static/range {p9 .. p9}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;)[I

    move-result-object v4

    .line 35
    if-eqz v4, :cond_43

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_43

    .line 36
    const/4 v2, 0x0

    aget v3, v4, v2

    .line 37
    const/4 v2, 0x1

    aget v2, v4, v2

    .line 39
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    int-to-float v6, p1

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    add-int p1, v5, v3

    .line 40
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    int-to-float v6, p2

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    add-int p2, v5, v2

    .line 41
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    int-to-float v6, p3

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    add-int p3, v5, v3

    .line 42
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    int-to-float v6, p4

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    add-int p4, v5, v2

    .line 45
    :cond_43
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 46
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 47
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/i;

    if-eqz v7, :cond_97

    .line 48
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/i;

    iget-wide v0, v7, Lcom/bytedance/sdk/openadsdk/core/d/i;->e:J

    move-wide/from16 p5, v0

    .line 49
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/i;

    iget-wide v0, v7, Lcom/bytedance/sdk/openadsdk/core/d/i;->f:J

    move-wide/from16 p7, v0

    .line 50
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/i;

    iget v9, v9, Lcom/bytedance/sdk/openadsdk/core/d/i;->g:I

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v3, v8

    aput v3, v5, v7

    .line 51
    const/4 v3, 0x1

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/i;

    iget v8, v8, Lcom/bytedance/sdk/openadsdk/core/d/i;->h:I

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v2, v7

    aput v2, v5, v3

    .line 52
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/i;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/core/d/i;->i:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 53
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/i;

    iget v7, v7, Lcom/bytedance/sdk/openadsdk/core/d/i;->j:I

    int-to-float v7, v7

    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    .line 54
    const/4 v7, 0x0

    aput v2, v6, v7

    .line 55
    const/4 v2, 0x1

    aput v3, v6, v2

    .line 57
    :cond_97
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;-><init>()V

    .line 58
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    .line 59
    invoke-virtual {v2, p2}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    .line 60
    invoke-virtual {v2, p3}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    .line 61
    invoke-virtual {v2, p4}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    .line 62
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    .line 63
    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->b([I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->a([I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    .line 66
    invoke-static/range {p9 .. p9}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->c([I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    .line 67
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->d([I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->x:I

    .line 68
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->y:I

    .line 69
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->z:I

    .line 70
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->h(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v3

    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Z

    move-result v2

    if-eqz v2, :cond_f8

    const/4 v2, 0x1

    :goto_e9
    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->B:Landroid/util/SparseArray;

    .line 72
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->a(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->a()Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v2

    .line 57
    return-object v2

    .line 71
    :cond_f8
    const/4 v2, 0x2

    goto :goto_e9
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/i;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/i;

    .line 78
    return-void
.end method
