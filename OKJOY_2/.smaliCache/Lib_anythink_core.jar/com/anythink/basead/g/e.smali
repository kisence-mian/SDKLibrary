.class public final Lcom/anythink/basead/g/e;
.super Lcom/anythink/basead/g/c;


# instance fields
.field a:Lcom/anythink/basead/f/a;

.field k:Lcom/anythink/basead/d/c;

.field l:Lcom/anythink/basead/a/b;

.field m:Landroid/view/View;

.field n:Z

.field o:Landroid/view/View$OnClickListener;

.field private final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;Z)V
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/g/c;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;Z)V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/g/e;->p:Ljava/lang/String;

    .line 45
    new-instance p1, Lcom/anythink/basead/g/e$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/g/e$1;-><init>(Lcom/anythink/basead/g/e;)V

    iput-object p1, p0, Lcom/anythink/basead/g/e;->o:Landroid/view/View$OnClickListener;

    .line 94
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 5

    .line 171
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_18

    .line 172
    check-cast p1, Landroid/view/ViewGroup;

    .line 173
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 175
    invoke-direct {p0, v1, p2}, Lcom/anythink/basead/g/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 177
    :cond_17
    return-void

    .line 178
    :cond_18
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/g/e;)V
    .registers 6

    .line 30
    nop

    .line 1206
    iget-boolean v0, p0, Lcom/anythink/basead/g/e;->n:Z

    if-nez v0, :cond_2c

    .line 1210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/g/e;->n:Z

    .line 1211
    iget-object v0, p0, Lcom/anythink/basead/g/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/g/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/g/a/b;->a(Lcom/anythink/core/common/d/p;)V

    .line 1212
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    new-instance v2, Lcom/anythink/basead/c/h;

    iget-object v3, p0, Lcom/anythink/basead/g/e;->d:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 1214
    iget-object p0, p0, Lcom/anythink/basead/g/e;->a:Lcom/anythink/basead/f/a;

    if-eqz p0, :cond_2c

    .line 1215
    invoke-interface {p0}, Lcom/anythink/basead/f/a;->onAdShow()V

    .line 30
    :cond_2c
    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 5

    .line 189
    iput-object p1, p0, Lcom/anythink/basead/g/e;->m:Landroid/view/View;

    .line 190
    new-instance v0, Lcom/anythink/basead/g/e$2;

    invoke-direct {v0, p0}, Lcom/anythink/basead/g/e$2;-><init>(Lcom/anythink/basead/g/e;)V

    .line 197
    iget-object v1, p0, Lcom/anythink/basead/g/e;->k:Lcom/anythink/basead/d/c;

    if-nez v1, :cond_16

    .line 198
    new-instance v1, Lcom/anythink/basead/d/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/basead/d/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/basead/g/e;->k:Lcom/anythink/basead/d/c;

    .line 201
    :cond_16
    iget-object v1, p0, Lcom/anythink/basead/g/e;->k:Lcom/anythink/basead/d/c;

    invoke-virtual {v1, p1, v0}, Lcom/anythink/basead/d/c;->a(Landroid/view/View;Lcom/anythink/basead/d/b;)V

    .line 203
    return-void
.end method

.method private static l()Landroid/view/View;
    .registers 1

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method private m()V
    .registers 6

    .line 206
    iget-boolean v0, p0, Lcom/anythink/basead/g/e;->n:Z

    if-eqz v0, :cond_5

    .line 207
    return-void

    .line 210
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/g/e;->n:Z

    .line 211
    iget-object v0, p0, Lcom/anythink/basead/g/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/g/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/g/a/b;->a(Lcom/anythink/core/common/d/p;)V

    .line 212
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    new-instance v2, Lcom/anythink/basead/c/h;

    iget-object v3, p0, Lcom/anythink/basead/g/e;->d:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 214
    iget-object v0, p0, Lcom/anythink/basead/g/e;->a:Lcom/anythink/basead/f/a;

    if-eqz v0, :cond_2c

    .line 215
    invoke-interface {v0}, Lcom/anythink/basead/f/a;->onAdShow()V

    .line 217
    :cond_2c
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 3

    .line 165
    invoke-direct {p0, p1}, Lcom/anythink/basead/g/e;->b(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/anythink/basead/g/e;->o:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/g/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1}, Lcom/anythink/basead/g/e;->b(Landroid/view/View;)V

    .line 155
    if-eqz p2, :cond_1c

    .line 156
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/anythink/basead/g/e;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    goto :goto_9

    :cond_1b
    return-void

    .line 160
    :cond_1c
    iget-object p2, p0, Lcom/anythink/basead/g/e;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method public final a(Lcom/anythink/basead/f/a;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/anythink/basead/g/e;->a:Lcom/anythink/basead/f/a;

    .line 146
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 151
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    if-eqz v0, :cond_b

    .line 99
    iget-object v0, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/p;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    if-eqz v0, :cond_b

    .line 106
    iget-object v0, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/p;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    if-eqz v0, :cond_b

    .line 113
    iget-object v0, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/p;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    if-eqz v0, :cond_b

    .line 120
    iget-object v0, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/p;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    if-eqz v0, :cond_b

    .line 127
    iget-object v0, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/p;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    if-eqz v0, :cond_b

    .line 134
    iget-object v0, p0, Lcom/anythink/basead/g/e;->g:Lcom/anythink/core/common/d/p;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/p;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public final j()V
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/anythink/basead/g/e;->k:Lcom/anythink/basead/d/c;

    if-eqz v0, :cond_7

    .line 184
    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->a()V

    .line 186
    :cond_7
    return-void
.end method

.method public final k()V
    .registers 2

    .line 220
    invoke-virtual {p0}, Lcom/anythink/basead/g/e;->j()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/g/e;->a:Lcom/anythink/basead/f/a;

    .line 222
    iput-object v0, p0, Lcom/anythink/basead/g/e;->l:Lcom/anythink/basead/a/b;

    .line 223
    iput-object v0, p0, Lcom/anythink/basead/g/e;->k:Lcom/anythink/basead/d/c;

    .line 224
    return-void
.end method
