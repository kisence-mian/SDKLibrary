.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
.super Ljava/lang/Object;
.source "GeckoConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Ljava/util/concurrent/Executor;

.field private g:Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;

.field private h:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;

.field private i:Z

.field private j:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

.field private k:Ljava/lang/Long;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/io/File;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->i:Z

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->d:Landroid/content/Context;

    .line 230
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Landroid/content/Context;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/List;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/List;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->g:Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->j:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/Long;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->k:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/io/File;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->o:Ljava/io/File;

    return-object p0
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->e:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->f:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic o(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

    return-object p0
.end method

.method static synthetic p(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->h:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;

    return-object p0
.end method

.method static synthetic q(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Z
    .registers 1

    .line 208
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->i:Z

    return p0
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .registers 3

    .line 329
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->k:Ljava/lang/Long;

    .line 330
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .registers 2

    .line 324
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->j:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    .line 325
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->h:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;

    .line 305
    return-object p0
.end method

.method public a(Ljava/io/File;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .registers 2

    .line 373
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->o:Ljava/io/File;

    .line 374
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->l:Ljava/lang/String;

    .line 340
    return-object p0
.end method

.method public a(Ljava/util/concurrent/Executor;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->e:Ljava/util/concurrent/Executor;

    .line 315
    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .registers 2

    .line 309
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->i:Z

    .line 310
    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .registers 4

    .line 238
    if-eqz p1, :cond_c

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    .line 239
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->c:Ljava/util/List;

    .line 241
    :cond_c
    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/preload/geckox/b;
    .registers 3

    .line 378
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;Lcom/bytedance/sdk/openadsdk/preload/geckox/b$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .registers 2

    .line 344
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->m:Ljava/lang/String;

    .line 345
    return-object p0
.end method

.method public b(Ljava/util/concurrent/Executor;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->f:Ljava/util/concurrent/Executor;

    .line 320
    return-object p0
.end method

.method public varargs b([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .registers 4

    .line 250
    if-eqz p1, :cond_c

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    .line 251
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->b:Ljava/util/List;

    .line 253
    :cond_c
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->n:Ljava/lang/String;

    .line 359
    return-object p0
.end method
