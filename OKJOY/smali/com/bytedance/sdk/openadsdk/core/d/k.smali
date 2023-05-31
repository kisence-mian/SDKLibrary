.class public Lcom/bytedance/sdk/openadsdk/core/d/k;
.super Ljava/lang/Object;
.source "MaterialMeta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/k$a;
    }
.end annotation


# instance fields
.field private A:Ljava/util/Map;
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

.field private B:Lcom/bytedance/sdk/openadsdk/core/d/k$a;

.field private C:Z

.field private D:I

.field private E:Ljava/lang/String;

.field private F:I

.field private G:I

.field private H:Lcom/bytedance/sdk/openadsdk/core/d/d;

.field private I:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private J:I

.field private K:I

.field private L:Ljava/lang/String;

.field private M:I

.field private N:I

.field private O:I

.field private P:Lorg/json/JSONObject;

.field private a:I

.field private b:Lcom/bytedance/sdk/openadsdk/core/d/j;

.field private c:Lcom/bytedance/sdk/openadsdk/core/d/j;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/j;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/bytedance/sdk/openadsdk/core/d/b;

.field private n:Lcom/bytedance/sdk/openadsdk/core/d/f;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:J

.field private u:I

.field private v:Lcom/bytedance/sdk/openadsdk/core/d/r;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Lcom/bytedance/sdk/openadsdk/core/d/g;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->e:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->g:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->h:Ljava/util/List;

    .line 36
    const-string v0, "0"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->l:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->r:Ljava/util/List;

    .line 44
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->s:I

    .line 77
    const/16 v0, -0xc8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->F:I

    .line 80
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->G:I

    .line 81
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->H:Lcom/bytedance/sdk/openadsdk/core/d/d;

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->K:I

    .line 91
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->M:I

    .line 93
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->N:I

    .line 95
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->O:I

    return-void
.end method

.method private af()I
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->d()I

    move-result v0

    goto :goto_5
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/FilterWord;)Lorg/json/JSONObject;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 803
    if-nez p1, :cond_5

    move-object v0, v1

    .line 831
    :goto_4
    return-object v0

    .line 808
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 809
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 810
    const-string v0, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 811
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 812
    const-string v0, "is_selected"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getIsSelected()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 814
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 815
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 816
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 817
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(Lcom/bytedance/sdk/openadsdk/FilterWord;)Lorg/json/JSONObject;

    move-result-object v0

    .line 818
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3e

    .line 828
    :catch_52
    move-exception v0

    :cond_53
    move-object v0, v1

    .line 831
    goto :goto_4

    .line 821
    :cond_55
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_60

    .line 822
    const-string v0, "options"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_60} :catch_52

    :cond_60
    move-object v0, v2

    .line 826
    goto :goto_4
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->p:Ljava/lang/String;

    return-object v0
.end method

.method public B()I
    .registers 2

    .prologue
    .line 308
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->a:I

    return v0
.end method

.method public C()Lcom/bytedance/sdk/openadsdk/core/d/j;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->b:Lcom/bytedance/sdk/openadsdk/core/d/j;

    return-object v0
.end method

.method public D()Lcom/bytedance/sdk/openadsdk/core/d/j;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->c:Lcom/bytedance/sdk/openadsdk/core/d/j;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->e:Ljava/util/List;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->g:Ljava/util/List;

    return-object v0
.end method

.method public I()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->h:Ljava/util/List;

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->i:Ljava/lang/String;

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->k:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->l:Ljava/lang/String;

    return-object v0
.end method

.method public N()Lcom/bytedance/sdk/openadsdk/core/d/b;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->m:Lcom/bytedance/sdk/openadsdk/core/d/b;

    return-object v0
.end method

.method public O()Lcom/bytedance/sdk/openadsdk/core/d/f;
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->n:Lcom/bytedance/sdk/openadsdk/core/d/f;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->q:Ljava/lang/String;

    return-object v0
.end method

.method public Q()I
    .registers 2

    .prologue
    .line 428
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->o:I

    return v0
.end method

.method public R()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->r:Ljava/util/List;

    return-object v0
.end method

.method public S()J
    .registers 3

    .prologue
    .line 452
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->t:J

    return-wide v0
.end method

.method public T()I
    .registers 2

    .prologue
    .line 460
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->u:I

    return v0
.end method

.method public U()Z
    .registers 2

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->w:Z

    return v0
.end method

.method public V()Z
    .registers 2

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->x:Z

    return v0
.end method

.method public W()Z
    .registers 2

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->y:Z

    return v0
.end method

.method public X()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->A:Ljava/util/Map;

    return-object v0
.end method

.method public Y()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->P:Lorg/json/JSONObject;

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->L:Ljava/lang/String;

    return-object v0
.end method

.method public a()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->M:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 104
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->M:I

    .line 105
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 456
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->t:J

    .line 457
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 2

    .prologue
    .line 177
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->I:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 178
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/b;)V
    .registers 2

    .prologue
    .line 408
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->m:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 409
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/d;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->H:Lcom/bytedance/sdk/openadsdk/core/d/d;

    .line 170
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/f;)V
    .registers 2

    .prologue
    .line 416
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->n:Lcom/bytedance/sdk/openadsdk/core/d/f;

    .line 417
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/g;)V
    .registers 2

    .prologue
    .line 288
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    .line 289
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/j;)V
    .registers 2

    .prologue
    .line 320
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->b:Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 321
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k$a;)V
    .registers 2

    .prologue
    .line 279
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->B:Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    .line 280
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 281
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/r;)V
    .registers 2

    .prologue
    .line 296
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->v:Lcom/bytedance/sdk/openadsdk/core/d/r;

    .line 297
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->E:Ljava/lang/String;

    .line 130
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
    .line 496
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->A:Ljava/util/Map;

    .line 497
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 504
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->P:Lorg/json/JSONObject;

    .line 505
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->C:Z

    .line 242
    return-void
.end method

.method public aa()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 545
    :goto_a
    return v0

    .line 537
    :cond_b
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->o:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1b

    move v0, v1

    .line 538
    goto :goto_a

    .line 540
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 541
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->d()Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    .line 542
    goto :goto_a

    .line 545
    :cond_35
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public ab()I
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b()I

    move-result v0

    goto :goto_5
.end method

.method public ac()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 559
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ad()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public ad()I
    .registers 2

    .prologue
    .line 563
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->s:I

    return v0
.end method

.method public ae()Lorg/json/JSONObject;
    .registers 8

    .prologue
    .line 591
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 593
    :try_start_5
    const-string v0, "interaction_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 594
    const-string v0, "target_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 595
    const-string v0, "ad_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 596
    const-string v0, "source"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 597
    const-string v0, "screenshot"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->U()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 598
    const-string v0, "dislike_control"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ad()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 599
    const-string v0, "play_bar_show_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->n()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 600
    const-string v0, "is_playable"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 601
    const-string v0, "playable_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 602
    const-string v0, "playable_style"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 603
    const-string v0, "play_bar_style"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->h()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 604
    const-string v0, "if_block_lp"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 606
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_a6

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 608
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 609
    const-string v3, "url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 610
    const-string v3, "height"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->c()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 611
    const-string v3, "width"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 613
    const-string v0, "icon"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 617
    :cond_a6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->D()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_db

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_db

    .line 619
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 620
    const-string v3, "url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    const-string v3, "height"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->c()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 622
    const-string v3, "width"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 624
    const-string v0, "cover_image"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    :cond_db
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Y()Lorg/json/JSONObject;

    move-result-object v0

    .line 628
    if-eqz v0, :cond_e6

    .line 629
    const-string v1, "session_params"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    :cond_e6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->i()Lcom/bytedance/sdk/openadsdk/core/d/d;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_120

    .line 635
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 636
    const-string v3, "click_upper_content_area"

    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/d;->a:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 637
    const-string v3, "click_upper_non_content_area"

    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/d;->b:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 638
    const-string v3, "click_lower_content_area"

    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/d;->c:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 639
    const-string v3, "click_lower_non_content_area"

    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/d;->d:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 640
    const-string v3, "click_button_area"

    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/d;->e:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 641
    const-string v3, "click_video_area"

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/d/d;->f:Z

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 642
    const-string v0, "click_area"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 646
    :cond_120
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->j()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 647
    if-eqz v0, :cond_12f

    .line 648
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->toJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    .line 649
    const-string v1, "adslot"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 654
    :cond_12f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    .line 655
    if-eqz v0, :cond_175

    .line 656
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 657
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_170

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 658
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 659
    const-string v5, "url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    const-string v5, "height"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->c()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 661
    const-string v5, "width"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 662
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_13e

    .line 794
    :catch_16e
    move-exception v0

    .line 799
    :goto_16f
    return-object v2

    .line 665
    :cond_170
    const-string v0, "image"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    :cond_175
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->H()Ljava/util/List;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_199

    .line 671
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 672
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_184
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_194

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 673
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_184

    .line 676
    :cond_194
    const-string v0, "show_url"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    :cond_199
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->I()Ljava/util/List;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_1bd

    .line 682
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 683
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 684
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1a8

    .line 687
    :cond_1b8
    const-string v0, "click_url"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 690
    :cond_1bd
    const-string v0, "phone_num"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    const-string v0, "description"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    const-string v0, "ext"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    const-string v0, "image_mode"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 695
    const-string v0, "is_playable"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 696
    const-string v0, "intercept_flag"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->m()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 697
    const-string v0, "button_text"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    const-string v0, "ad_logo"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->g()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 699
    const-string v0, "video_adaptation"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->f()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 700
    const-string v0, "feed_video_opentype"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 702
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_26f

    .line 704
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 705
    const-string v3, "app_name"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    const-string v3, "package_name"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 707
    const-string v3, "download_url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 708
    const-string v3, "score"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->e()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 709
    const-string v3, "comment_num"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->f()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 710
    const-string v3, "quick_app_url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 711
    const-string v3, "app_size"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->g()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 713
    const-string v0, "app"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 717
    :cond_26f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_29a

    .line 719
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 720
    const-string v3, "deeplink_url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 721
    const-string v3, "fallback_url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    const-string v3, "fallback_type"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->c()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 724
    const-string v0, "deep_link"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    :cond_29a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->R()Ljava/util/List;

    move-result-object v0

    .line 729
    if-eqz v0, :cond_2c4

    .line 730
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 731
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a9
    :goto_2a9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2bf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 732
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(Lcom/bytedance/sdk/openadsdk/FilterWord;)Lorg/json/JSONObject;

    move-result-object v0

    .line 733
    if-eqz v0, :cond_2a9

    .line 734
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2a9

    .line 738
    :cond_2bf
    const-string v0, "filter_words"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    :cond_2c4
    const-string v0, "count_down"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->T()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 742
    const-string v0, "expiration_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->S()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 745
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    .line 746
    if-eqz v0, :cond_2e5

    .line 747
    const-string v1, "video"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->k()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    :cond_2e5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 752
    const-string v1, "auto_open"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->v()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 753
    const-string v1, "download_mode"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->w()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 754
    const-string v1, "support_multiple"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->af()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 755
    const-string v1, "download_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ab()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 756
    const-string v1, "auto_control"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->l()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 757
    const-string v1, "if_suspend_download"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->t()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 759
    const-string v1, "download_conf"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 761
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->X()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_363

    .line 762
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 763
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->X()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_35e

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35e

    .line 766
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 767
    :goto_344
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35e

    .line 768
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 769
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_344

    .line 772
    :cond_35e
    const-string v0, "media_ext"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 777
    :cond_363
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_3b2

    .line 779
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 780
    const-string v3, "id"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 781
    const-string v3, "md5"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 782
    const-string v3, "url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 783
    const-string v3, "data"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 784
    const-string v3, "diff_data"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 785
    const-string v3, "version"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 786
    const-string v3, "dynamic_creative"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    const-string v0, "tpl_info"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 792
    :cond_3b2
    const-string v0, "market_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3bb
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3bb} :catch_16e

    goto/16 :goto_16f
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 121
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->D:I

    .line 122
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/d/j;)V
    .registers 2

    .prologue
    .line 328
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->c:Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 329
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 300
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->p:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 574
    if-nez p1, :cond_3

    .line 587
    :goto_2
    return-void

    .line 579
    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->a:I

    .line 581
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->l:Ljava/lang/String;

    .line 582
    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->p:Ljava/lang/String;

    .line 583
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->m:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 584
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->m:Lcom/bytedance/sdk/openadsdk/core/d/b;

    const-string v1, "pkg_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->m:Lcom/bytedance/sdk/openadsdk/core/d/b;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->m:Lcom/bytedance/sdk/openadsdk/core/d/b;

    const-string v1, "download_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->w:Z

    .line 473
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 113
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->M:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->D:I

    return v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 137
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->O:I

    .line 138
    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/d/j;)V
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 336
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->d:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->x:Z

    .line 481
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->E:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 145
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->N:I

    .line 146
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 352
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->f:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public d(Z)V
    .registers 2

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->y:Z

    .line 489
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->O:I

    return v0
.end method

.method public e(I)V
    .registers 2

    .prologue
    .line 153
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->K:I

    .line 154
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 376
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->i:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 517
    if-ne p0, p1, :cond_5

    .line 522
    :cond_4
    :goto_4
    return v0

    .line 518
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    .line 520
    :cond_13
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 522
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/d/k;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/d/k;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public f()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->N:I

    return v0
.end method

.method public f(I)V
    .registers 2

    .prologue
    .line 161
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->G:I

    .line 162
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 384
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->j:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public g()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->K:I

    return v0
.end method

.method public g(I)V
    .registers 2

    .prologue
    .line 193
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->J:I

    .line 194
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 392
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->k:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public h()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->G:I

    return v0
.end method

.method public h(I)V
    .registers 2

    .prologue
    .line 201
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->F:I

    .line 202
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 400
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->l:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 529
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 530
    return v0
.end method

.method public i()Lcom/bytedance/sdk/openadsdk/core/d/d;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->H:Lcom/bytedance/sdk/openadsdk/core/d/d;

    return-object v0
.end method

.method public i(I)V
    .registers 2

    .prologue
    .line 312
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->a:I

    .line 313
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 424
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->q:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public j()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->I:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-object v0
.end method

.method public j(I)V
    .registers 2

    .prologue
    .line 432
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->o:I

    .line 433
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 512
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->L:Ljava/lang/String;

    .line 513
    return-void
.end method

.method public k(I)V
    .registers 2

    .prologue
    .line 464
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->u:I

    .line 465
    return-void
.end method

.method public k()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->l()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public l()I
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->g()I

    move-result v0

    goto :goto_5
.end method

.method public l(I)V
    .registers 2

    .prologue
    .line 567
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->s:I

    .line 568
    return-void
.end method

.method public m()I
    .registers 2

    .prologue
    .line 189
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->J:I

    return v0
.end method

.method public n()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->F:I

    return v0
.end method

.method public o()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 215
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->v:Lcom/bytedance/sdk/openadsdk/core/d/r;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->v:Lcom/bytedance/sdk/openadsdk/core/d/r;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->l()I

    move-result v1

    if-eq v1, v0, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public p()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 224
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->v:Lcom/bytedance/sdk/openadsdk/core/d/r;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->v:Lcom/bytedance/sdk/openadsdk/core/d/r;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->m()I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->C:Z

    return v0
.end method

.method public r()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 237
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public s()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 250
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->t()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public t()I
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()I

    move-result v0

    goto :goto_5
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public v()I
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->e()I

    move-result v0

    goto :goto_5
.end method

.method public w()I
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->f()I

    move-result v0

    goto :goto_5
.end method

.method public x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->B:Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    return-object v0
.end method

.method public y()Lcom/bytedance/sdk/openadsdk/core/d/g;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->z:Lcom/bytedance/sdk/openadsdk/core/d/g;

    return-object v0
.end method

.method public z()Lcom/bytedance/sdk/openadsdk/core/d/r;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->v:Lcom/bytedance/sdk/openadsdk/core/d/r;

    return-object v0
.end method
