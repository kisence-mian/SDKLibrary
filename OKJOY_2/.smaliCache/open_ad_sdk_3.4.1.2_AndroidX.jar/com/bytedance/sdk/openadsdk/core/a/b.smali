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

.field protected final d:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field protected final e:Ljava/lang/String;

.field protected final f:I

.field protected g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/bytedance/sdk/openadsdk/core/d/f;

.field protected j:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

.field protected k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

.field protected l:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

.field protected m:Z

.field protected n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field protected o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field protected q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

.field protected r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V
    .registers 6

    .line 93
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/a/c;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->m:Z

    .line 59
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->r:Z

    .line 95
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 97
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:Ljava/lang/String;

    .line 98
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->f:I

    .line 99
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->o:Ljava/util/Map;

    .line 100
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 170
    return v1

    .line 172
    :cond_8
    const-string v0, "feed_video_middle_page"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 173
    const/4 p1, 0x1

    return p1

    .line 175
    :cond_12
    return v1
.end method


# virtual methods
.method protected a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/d/f;
    .registers 12

    .line 183
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;-><init>()V

    .line 184
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 185
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 186
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 187
    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 188
    invoke-virtual {p1, p5, p6}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 189
    invoke-virtual {p1, p7, p8}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 190
    invoke-static {p9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->b([I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 191
    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a([I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 192
    invoke-static {p9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->c([I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 193
    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->d([I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->y:I

    .line 194
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->z:I

    .line 195
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->A:I

    .line 196
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->h(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->C:Landroid/util/SparseArray;

    .line 197
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 198
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/i;->b()Z

    move-result p2

    if-eqz p2, :cond_61

    const/4 p2, 0x1

    goto :goto_62

    :cond_61
    const/4 p2, 0x2

    :goto_62
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object p1

    .line 183
    return-object p1
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->g:Ljava/lang/ref/WeakReference;

    .line 108
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .registers 29

    .line 124
    move-object/from16 v11, p0

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 125
    return-void

    .line 128
    :cond_a
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Landroid/content/Context;

    if-nez v0, :cond_14

    .line 129
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Landroid/content/Context;

    .line 131
    :cond_14
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Landroid/content/Context;

    if-nez v0, :cond_19

    .line 132
    return-void

    .line 135
    :cond_19
    iget-wide v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->w:J

    iget-wide v7, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->x:J

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->g:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    move-object v9, v1

    goto :goto_2b

    .line 136
    :cond_24
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v9, v0

    :goto_2b
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_31

    move-object v10, v1

    goto :goto_38

    :cond_31
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v10, v0

    .line 135
    :goto_38
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->i:Lcom/bytedance/sdk/openadsdk/core/d/f;

    .line 138
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    if-eqz v0, :cond_52

    .line 139
    const/4 v1, -0x1

    move-object/from16 v2, p1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/a/b$a;->a(Landroid/view/View;I)V

    .line 142
    :cond_52
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v19

    .line 143
    if-eqz v19, :cond_5d

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:Ljava/lang/String;

    goto :goto_63

    :cond_5d
    iget v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->f:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_63
    move-object/from16 v17, v0

    .line 144
    iget-object v12, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Landroid/content/Context;

    iget-object v13, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget v14, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->f:I

    iget-object v15, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->o:Ljava/util/Map;

    iget-boolean v3, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->r:Z

    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:Ljava/lang/String;

    .line 145
    invoke-direct {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Ljava/lang/String;)Z

    move-result v22

    .line 144
    move-object/from16 v16, v0

    move-object/from16 v18, v1

    move-object/from16 v20, v2

    move/from16 v21, v3

    invoke-static/range {v12 .. v22}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;ZLjava/util/Map;ZZ)Z

    move-result v9

    .line 146
    if-nez v9, :cond_a1

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_a1

    .line 147
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    if-eqz v0, :cond_a1

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 148
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a1

    .line 150
    return-void

    .line 153
    :cond_a1
    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Landroid/content/Context;

    iget-object v6, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v7, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->i:Lcom/bytedance/sdk/openadsdk/core/d/f;

    iget-object v8, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:Ljava/lang/String;

    iget-object v10, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->o:Ljava/util/Map;

    const-string v5, "click"

    invoke-static/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/d/f;Ljava/lang/String;ZLjava/util/Map;)V

    .line 156
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 79
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 83
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->j:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    .line 104
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    .line 75
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->l:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 91
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 67
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->o:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 116
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->o:Ljava/util/Map;

    goto :goto_a

    .line 118
    :cond_7
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 120
    :goto_a
    return-void
.end method

.method protected a(I)Z
    .registers 8

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    .line 210
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 211
    new-array v0, v0, [I

    .line 212
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_24

    .line 213
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;)[I

    move-result-object v2

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/view/View;)[I

    move-result-object v0

    .line 216
    :cond_24
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;-><init>()V

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->s:I

    .line 217
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->t:I

    .line 218
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->u:I

    .line 219
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->v:I

    .line 220
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v3

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->w:J

    .line 221
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v3

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->x:J

    .line 222
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v3

    aget v4, v2, v1

    .line 223
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v3

    const/4 v4, 0x1

    aget v2, v2, v4

    .line 224
    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v2

    aget v1, v0, v1

    .line 225
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v1

    aget v0, v0, v4

    .line 226
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->h(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->a()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;->a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 229
    return v4

    .line 231
    :cond_70
    return v1
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Ljava/lang/ref/WeakReference;

    .line 112
    return-void
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object v0
.end method

.method public d(Z)V
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->r:Z

    .line 63
    return-void
.end method

.method public e()V
    .registers 13

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 160
    return-void

    .line 162
    :cond_5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v8

    .line 163
    if-eqz v8, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:Ljava/lang/String;

    goto :goto_14

    :cond_e
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->f:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_14
    move-object v6, v0

    .line 164
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->f:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->o:Ljava/util/Map;

    iget-boolean v10, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->r:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:Ljava/lang/String;

    .line 165
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Ljava/lang/String;)Z

    move-result v11

    .line 164
    invoke-static/range {v1 .. v11}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;ZLjava/util/Map;ZZ)Z

    .line 166
    return-void
.end method

.method public e(Z)V
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->m:Z

    .line 87
    return-void
.end method
