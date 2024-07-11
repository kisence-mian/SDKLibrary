.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;
.super Lcom/bytedance/sdk/openadsdk/core/a/b;
.source "ExpressClickListener.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/d/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V
    .registers 5

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/d/f;
    .registers 27

    .line 28
    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->y:I

    .line 29
    const/4 v2, 0x0

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->z:I

    .line 30
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->A:I

    .line 32
    nop

    .line 33
    nop

    .line 34
    invoke-static/range {p9 .. p9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;)[I

    move-result-object v3

    .line 35
    const/4 v4, 0x2

    if-eqz v3, :cond_47

    array-length v5, v3

    if-ne v5, v4, :cond_47

    .line 36
    aget v5, v3, v2

    .line 37
    aget v6, v3, v1

    .line 39
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    move/from16 v8, p1

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v5

    .line 40
    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    move/from16 v9, p2

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v8, v6

    .line 41
    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    move/from16 v10, p3

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, v5

    .line 42
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    move/from16 v11, p4

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v10, v6

    goto :goto_55

    .line 35
    :cond_47
    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 45
    move v5, v2

    move v6, v5

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    :goto_55
    new-array v11, v4, [I

    .line 46
    new-array v12, v4, [I

    .line 47
    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    if-eqz v13, :cond_a2

    .line 48
    iget-wide v13, v13, Lcom/bytedance/sdk/openadsdk/core/d/j;->e:J

    .line 49
    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    iget-wide v1, v15, Lcom/bytedance/sdk/openadsdk/core/d/j;->f:J

    .line 50
    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/core/d/j;->g:I

    int-to-float v4, v4

    invoke-static {v15, v4}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v5

    const/4 v5, 0x0

    aput v4, v11, v5

    .line 51
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    iget v5, v5, Lcom/bytedance/sdk/openadsdk/core/d/j;->h:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v6

    const/4 v5, 0x1

    aput v4, v11, v5

    .line 52
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    iget v5, v5, Lcom/bytedance/sdk/openadsdk/core/d/j;->i:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    .line 53
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    iget v6, v6, Lcom/bytedance/sdk/openadsdk/core/d/j;->j:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    .line 54
    const/4 v6, 0x0

    aput v4, v12, v6

    .line 55
    const/4 v4, 0x1

    aput v5, v12, v4

    goto :goto_a7

    .line 47
    :cond_a2
    move v4, v1

    move-wide/from16 v13, p5

    move-wide/from16 v1, p7

    .line 57
    :goto_a7
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;-><init>()V

    .line 58
    invoke-virtual {v5, v7}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v5

    .line 59
    invoke-virtual {v5, v8}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v5

    .line 60
    invoke-virtual {v5, v9}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v5

    .line 61
    invoke-virtual {v5, v10}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v5

    .line 62
    invoke-virtual {v5, v13, v14}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v5

    .line 63
    invoke-virtual {v5, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->b([I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a([I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v1

    .line 66
    invoke-static/range {p9 .. p9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->c([I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->d([I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->y:I

    .line 68
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->z:I

    .line 69
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->A:I

    .line 70
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->h(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v1

    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->b()Z

    move-result v2

    if-eqz v2, :cond_f5

    goto :goto_f6

    :cond_f5
    const/4 v4, 0x2

    :goto_f6
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->C:Landroid/util/SparseArray;

    .line 72
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v1

    .line 57
    return-object v1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/j;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 78
    return-void
.end method
