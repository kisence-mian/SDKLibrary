.class public Lcom/bytedance/sdk/openadsdk/core/a/b;
.super Lcom/bytedance/sdk/openadsdk/core/a/c;
.source "ClickListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/a/b$a;
    }
.end annotation


# instance fields
.field protected c:Landroid/content/Context;

.field protected final d:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field protected final e:Ljava/lang/String;

.field protected final f:I

.field protected g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/bytedance/sdk/openadsdk/core/d/e;

.field protected j:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

.field protected k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

.field protected l:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

.field protected m:Z

.field protected n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field protected o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field protected q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V
    .registers 6
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
    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/a/c;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->m:Z

    .line 83
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 85
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:Ljava/lang/String;

    .line 86
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->f:I

    .line 87
    return-void
.end method


# virtual methods
.method protected a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/d/e;
    .registers 14

    .prologue
    .line 144
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;-><init>()V

    .line 145
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p4}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p5, p6}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    .line 150
    invoke-virtual {v0, p7, p8}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    .line 151
    invoke-static {p9}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->b([I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    .line 152
    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->a([I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    .line 153
    invoke-static {p9}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->c([I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    .line 154
    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->d([I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->x:I

    .line 155
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->y:I

    .line 156
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->z:I

    .line 157
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->h(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->B:Landroid/util/SparseArray;

    .line 158
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->a(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v1

    .line 159
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x1

    :goto_60
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/d/e$a;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->a()Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v0

    .line 144
    return-object v0

    .line 159
    :cond_69
    const/4 v0, 0x2

    goto :goto_60
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->g:Ljava/lang/ref/WeakReference;

    .line 95
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .registers 18

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    :cond_7
    :goto_7
    return-void

    .line 111
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 112
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Landroid/content/Context;

    .line 114
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 118
    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->v:J

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->w:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->g:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_80

    const/4 v10, 0x0

    .line 119
    :goto_1f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_8a

    const/4 v11, 0x0

    :goto_24
    move-object v1, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 118
    invoke-virtual/range {v1 .. v11}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->i:Lcom/bytedance/sdk/openadsdk/core/d/e;

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    if-eqz v0, :cond_3b

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/a/b$a;->a(Landroid/view/View;I)V

    .line 124
    :cond_3b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v7

    .line 125
    if-eqz v7, :cond_94

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:Ljava/lang/String;

    .line 126
    :goto_45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->f:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Z)Z

    move-result v5

    .line 128
    if-nez v5, :cond_70

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 129
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 130
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->c()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 135
    :cond_70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Landroid/content/Context;

    const-string v1, "click"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->i:Lcom/bytedance/sdk/openadsdk/core/d/e;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->o:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/d/e;Ljava/lang/String;ZLjava/util/Map;)V

    goto :goto_7

    .line 118
    :cond_80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->g:Ljava/lang/ref/WeakReference;

    .line 119
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v10, v0

    goto :goto_1f

    :cond_8a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v11, v0

    goto :goto_24

    .line 125
    :cond_94
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->f:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_45
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 67
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 71
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    .line 91
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    .line 63
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->l:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 79
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 59
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->o:Ljava/util/Map;

    .line 103
    return-void
.end method

.method protected a(I)Z
    .registers 10

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    if-eqz v0, :cond_73

    .line 171
    new-array v1, v4, [I

    .line 172
    new-array v0, v4, [I

    .line 173
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_27

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;)[I

    move-result-object v1

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;)[I

    move-result-object v0

    .line 177
    :cond_27
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;-><init>()V

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->r:I

    .line 178
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->s:I

    .line 179
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->t:I

    .line 180
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->u:I

    .line 181
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->v:J

    .line 182
    invoke-virtual {v4, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->w:J

    .line 183
    invoke-virtual {v4, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v4

    aget v5, v1, v3

    .line 184
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v4

    aget v1, v1, v2

    .line 185
    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v1

    aget v3, v0, v3

    .line 186
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v1

    aget v0, v0, v2

    .line 187
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->h(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->a()Lcom/bytedance/sdk/openadsdk/core/d/i;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;->a(ILcom/bytedance/sdk/openadsdk/core/d/i;)V

    move v0, v2

    .line 192
    :goto_72
    return v0

    :cond_73
    move v0, v3

    goto :goto_72
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Ljava/lang/ref/WeakReference;

    .line 99
    return-void
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->m:Z

    .line 75
    return-void
.end method
