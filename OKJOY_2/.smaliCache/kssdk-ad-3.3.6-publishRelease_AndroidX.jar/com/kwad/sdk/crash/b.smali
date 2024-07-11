.class public Lcom/kwad/sdk/crash/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/crash/b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/kwad/sdk/crash/model/b;

.field public final b:Lcom/kwad/sdk/crash/model/a;

.field public final c:Lcom/kwad/sdk/crash/f;

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:Z

.field public final g:Landroid/content/Context;

.field public final h:Lcom/kwad/sdk/crash/e;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/crash/b$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/crash/model/b;

    invoke-direct {v0}, Lcom/kwad/sdk/crash/model/b;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/crash/b;->a:Lcom/kwad/sdk/crash/model/b;

    new-instance v1, Lcom/kwad/sdk/crash/model/a;

    invoke-direct {v1}, Lcom/kwad/sdk/crash/model/a;-><init>()V

    iput-object v1, p0, Lcom/kwad/sdk/crash/b;->b:Lcom/kwad/sdk/crash/model/a;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->a(Lcom/kwad/sdk/crash/b$a;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kwad/sdk/crash/b;->f:Z

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->b(Lcom/kwad/sdk/crash/b$a;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/sdk/crash/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->c(Lcom/kwad/sdk/crash/b$a;)Lcom/kwad/sdk/crash/e;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/sdk/crash/b;->h:Lcom/kwad/sdk/crash/e;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->d(Lcom/kwad/sdk/crash/b$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/sdk/crash/b;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->e(Lcom/kwad/sdk/crash/b$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/sdk/crash/b;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->f(Lcom/kwad/sdk/crash/b$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/sdk/crash/b;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->g(Lcom/kwad/sdk/crash/b$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/sdk/crash/b;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->h(Lcom/kwad/sdk/crash/b$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/sdk/crash/b;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->i(Lcom/kwad/sdk/crash/b$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/sdk/crash/b;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->j(Lcom/kwad/sdk/crash/b$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kwad/sdk/crash/model/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->k(Lcom/kwad/sdk/crash/b$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kwad/sdk/crash/model/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->l(Lcom/kwad/sdk/crash/b$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kwad/sdk/crash/model/a;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->m(Lcom/kwad/sdk/crash/b$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kwad/sdk/crash/model/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->n(Lcom/kwad/sdk/crash/b$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/crash/model/b;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->o(Lcom/kwad/sdk/crash/b$a;)I

    move-result v1

    iput v1, v0, Lcom/kwad/sdk/crash/model/b;->e:I

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->p(Lcom/kwad/sdk/crash/b$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/crash/model/b;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->q(Lcom/kwad/sdk/crash/b$a;)I

    move-result v1

    iput v1, v0, Lcom/kwad/sdk/crash/model/b;->c:I

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->r(Lcom/kwad/sdk/crash/b$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/crash/model/b;->a:Ljava/lang/String;

    iget v1, p1, Lcom/kwad/sdk/crash/b$a;->a:I

    iput v1, v0, Lcom/kwad/sdk/crash/model/b;->f:I

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->s(Lcom/kwad/sdk/crash/b$a;)Lcom/kwad/sdk/crash/f;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/crash/b;->c:Lcom/kwad/sdk/crash/f;

    invoke-static {p1}, Lcom/kwad/sdk/crash/b$a;->t(Lcom/kwad/sdk/crash/b$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/crash/b;->d:[Ljava/lang/String;

    iget-object p1, p1, Lcom/kwad/sdk/crash/b$a;->b:[Ljava/lang/String;

    iput-object p1, p0, Lcom/kwad/sdk/crash/b;->e:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/crash/b$a;Lcom/kwad/sdk/crash/b$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/crash/b;-><init>(Lcom/kwad/sdk/crash/b$a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/kwad/sdk/crash/e;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/crash/b;->h:Lcom/kwad/sdk/crash/e;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/crash/b;->f:Z

    return v0
.end method
