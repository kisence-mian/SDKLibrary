.class public final Lcom/anythink/basead/e/h;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/anythink/basead/f/a;

.field c:Lcom/anythink/basead/d/c;

.field d:Lcom/anythink/basead/a/b;

.field e:Landroid/view/View;

.field f:Z

.field g:Lcom/anythink/core/common/d/u;

.field h:Lcom/anythink/core/common/d/i;

.field i:Landroid/view/View$OnClickListener;

.field j:Lcom/anythink/basead/ui/OwnNativeAdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/d/u;Lcom/anythink/core/common/d/i;)V
    .registers 5

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/anythink/basead/e/h$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/e/h$1;-><init>(Lcom/anythink/basead/e/h;)V

    iput-object v0, p0, Lcom/anythink/basead/e/h;->i:Landroid/view/View$OnClickListener;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/e/h;->a:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    .line 95
    iput-object p3, p0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    .line 97
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 5

    .line 277
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_18

    .line 278
    check-cast p1, Landroid/view/ViewGroup;

    .line 279
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 281
    invoke-direct {p0, v1, p2}, Lcom/anythink/basead/e/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 283
    :cond_17
    return-void

    .line 284
    :cond_18
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method

.method private static synthetic a(Lcom/anythink/basead/e/h;)V
    .registers 6

    .line 35
    nop

    .line 1322
    iget-boolean v0, p0, Lcom/anythink/basead/e/h;->f:Z

    if-nez v0, :cond_56

    .line 1326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/e/h;->f:Z

    .line 1327
    iget-object v0, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    instance-of v0, v0, Lcom/anythink/core/common/d/t;

    if-eqz v0, :cond_29

    .line 1328
    invoke-static {}, Lcom/anythink/basead/e/c/b;->a()Lcom/anythink/basead/e/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/e/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/anythink/basead/e/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    iget-object v4, p0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v4, v4, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/basead/e/c/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;)V

    .line 1331
    :cond_29
    iget-object v0, p0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    if-eqz v0, :cond_56

    .line 1332
    new-instance v0, Lcom/anythink/basead/c/h;

    iget-object v1, p0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget-object v1, p0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/OwnNativeAdView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/h;->f:I

    .line 1334
    iget-object v1, p0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/OwnNativeAdView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/h;->e:I

    .line 1335
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    invoke-static {v1, v2, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 1336
    iget-object p0, p0, Lcom/anythink/basead/e/h;->b:Lcom/anythink/basead/f/a;

    if-eqz p0, :cond_56

    .line 1337
    invoke-interface {p0}, Lcom/anythink/basead/f/a;->onAdShow()V

    .line 35
    :cond_56
    return-void
.end method

.method private a([Lcom/anythink/basead/ui/OwnNativeAdView;Landroid/view/View;)V
    .registers 5

    .line 264
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_21

    .line 265
    instance-of v0, p2, Lcom/anythink/basead/ui/OwnNativeAdView;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 266
    move-object v0, p2

    check-cast v0, Lcom/anythink/basead/ui/OwnNativeAdView;

    aput-object v0, p1, v1

    .line 268
    :cond_e
    check-cast p2, Landroid/view/ViewGroup;

    .line 269
    nop

    :goto_11
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 270
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/e/h;->a([Lcom/anythink/basead/ui/OwnNativeAdView;Landroid/view/View;)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 274
    :cond_21
    return-void
.end method

.method private b(Landroid/view/View;)Z
    .registers 5

    .line 246
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/anythink/basead/ui/OwnNativeAdView;

    .line 247
    invoke-direct {p0, v1, p1}, Lcom/anythink/basead/e/h;->a([Lcom/anythink/basead/ui/OwnNativeAdView;Landroid/view/View;)V

    .line 248
    const/4 p1, 0x0

    aget-object v2, v1, p1

    if-nez v2, :cond_13

    .line 249
    sget-object v0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v1, "Register View don\'t contain OwnNativeAdView."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return p1

    .line 253
    :cond_13
    aget-object v2, v1, p1

    invoke-virtual {v2}, Lcom/anythink/basead/ui/OwnNativeAdView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_23

    .line 254
    sget-object v0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v1, "OwnNativeAdView View don\'t contain any child views."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return p1

    .line 258
    :cond_23
    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    .line 260
    return v0
.end method

.method private c(Landroid/view/View;)V
    .registers 6

    .line 295
    iput-object p1, p0, Lcom/anythink/basead/e/h;->e:Landroid/view/View;

    .line 296
    new-instance v0, Lcom/anythink/basead/e/h$2;

    invoke-direct {v0, p0}, Lcom/anythink/basead/e/h$2;-><init>(Lcom/anythink/basead/e/h;)V

    .line 303
    iget-object v1, p0, Lcom/anythink/basead/e/h;->c:Lcom/anythink/basead/d/c;

    if-nez v1, :cond_16

    .line 304
    new-instance v1, Lcom/anythink/basead/d/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/basead/d/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/basead/e/h;->c:Lcom/anythink/basead/d/c;

    .line 307
    :cond_16
    iget-object v1, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    instance-of v1, v1, Lcom/anythink/core/common/d/t;

    if-eqz v1, :cond_2d

    .line 308
    invoke-static {}, Lcom/anythink/basead/e/b/a;->a()Lcom/anythink/basead/e/b/a;

    iget-object v1, p0, Lcom/anythink/basead/e/h;->a:Landroid/content/Context;

    invoke-static {}, Lcom/anythink/basead/e/b/a;->a()Lcom/anythink/basead/e/b/a;

    iget-object v2, p0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    invoke-static {v2}, Lcom/anythink/basead/e/b/a;->a(Lcom/anythink/core/common/d/i;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/basead/e/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    :cond_2d
    iget-object v1, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    instance-of v1, v1, Lcom/anythink/core/common/d/f;

    if-eqz v1, :cond_50

    .line 312
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    const/16 v3, 0x42

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/b/e;->a(Ljava/lang/String;I)V

    .line 313
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    iget-object v1, p0, Lcom/anythink/basead/e/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    check-cast v2, Lcom/anythink/core/common/d/f;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/common/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 316
    :cond_50
    iget-object v1, p0, Lcom/anythink/basead/e/h;->c:Lcom/anythink/basead/d/c;

    invoke-virtual {v1, p1, v0}, Lcom/anythink/basead/d/c;->a(Landroid/view/View;Lcom/anythink/basead/d/b;)V

    .line 319
    return-void
.end method

.method private static j()Landroid/view/View;
    .registers 1

    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method private k()V
    .registers 6

    .line 322
    iget-boolean v0, p0, Lcom/anythink/basead/e/h;->f:Z

    if-eqz v0, :cond_5

    .line 323
    return-void

    .line 326
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/e/h;->f:Z

    .line 327
    iget-object v0, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    instance-of v0, v0, Lcom/anythink/core/common/d/t;

    if-eqz v0, :cond_29

    .line 328
    invoke-static {}, Lcom/anythink/basead/e/c/b;->a()Lcom/anythink/basead/e/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/e/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/anythink/basead/e/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    iget-object v4, p0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v4, v4, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/basead/e/c/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;)V

    .line 331
    :cond_29
    iget-object v0, p0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    if-eqz v0, :cond_56

    .line 332
    new-instance v0, Lcom/anythink/basead/c/h;

    iget-object v1, p0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/OwnNativeAdView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/h;->f:I

    .line 334
    iget-object v1, p0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/OwnNativeAdView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/h;->e:I

    .line 335
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    invoke-static {v1, v2, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 336
    iget-object v0, p0, Lcom/anythink/basead/e/h;->b:Lcom/anythink/basead/f/a;

    if-eqz v0, :cond_56

    .line 337
    invoke-interface {v0}, Lcom/anythink/basead/f/a;->onAdShow()V

    .line 341
    :cond_56
    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/core/common/d/h;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    .line 234
    invoke-direct {p0, p1}, Lcom/anythink/basead/e/h;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 235
    return-void

    .line 237
    :cond_7
    invoke-direct {p0, p1}, Lcom/anythink/basead/e/h;->c(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/anythink/basead/e/h;->i:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/e/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 240
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

    .line 220
    invoke-direct {p0, p1}, Lcom/anythink/basead/e/h;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 221
    return-void

    .line 223
    :cond_7
    invoke-direct {p0, p1}, Lcom/anythink/basead/e/h;->c(Landroid/view/View;)V

    .line 224
    if-eqz p2, :cond_23

    .line 225
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/anythink/basead/e/h;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    goto :goto_10

    :cond_22
    return-void

    .line 229
    :cond_23
    iget-object p2, p0, Lcom/anythink/basead/e/h;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    return-void
.end method

.method public final a(Lcom/anythink/basead/f/a;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/anythink/basead/e/h;->b:Lcom/anythink/basead/f/a;

    .line 216
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_9

    .line 105
    invoke-virtual {v0}, Lcom/anythink/core/common/d/u;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_9

    .line 112
    invoke-virtual {v0}, Lcom/anythink/core/common/d/u;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_9

    .line 119
    invoke-virtual {v0}, Lcom/anythink/core/common/d/u;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_9

    .line 126
    invoke-virtual {v0}, Lcom/anythink/core/common/d/u;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_9

    .line 133
    invoke-virtual {v0}, Lcom/anythink/core/common/d/u;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_9

    .line 140
    invoke-virtual {v0}, Lcom/anythink/core/common/d/u;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public final h()V
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/anythink/basead/e/h;->c:Lcom/anythink/basead/d/c;

    if-eqz v0, :cond_7

    .line 290
    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->a()V

    .line 292
    :cond_7
    return-void
.end method

.method public final i()V
    .registers 3

    .line 344
    invoke-virtual {p0}, Lcom/anythink/basead/e/h;->h()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/e/h;->e:Landroid/view/View;

    .line 346
    iput-object v0, p0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    .line 347
    iput-object v0, p0, Lcom/anythink/basead/e/h;->b:Lcom/anythink/basead/f/a;

    .line 348
    iput-object v0, p0, Lcom/anythink/basead/e/h;->d:Lcom/anythink/basead/a/b;

    .line 349
    iget-object v1, p0, Lcom/anythink/basead/e/h;->c:Lcom/anythink/basead/d/c;

    if-eqz v1, :cond_15

    .line 350
    invoke-virtual {v1}, Lcom/anythink/basead/d/c;->b()V

    .line 351
    iput-object v0, p0, Lcom/anythink/basead/e/h;->c:Lcom/anythink/basead/d/c;

    .line 354
    :cond_15
    return-void
.end method
