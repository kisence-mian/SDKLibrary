.class public Lcom/facebook/bidding/a/f/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:D

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Boolean;

.field private m:I

.field private n:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/bidding/a/f/a;->f:D

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/bidding/a/f/a;->l:Ljava/lang/Boolean;

    iput v0, p0, Lcom/facebook/bidding/a/f/a;->m:I

    iput-object p1, p0, Lcom/facebook/bidding/a/f/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/bidding/a/f/a;->k:Ljava/lang/String;

    iput p3, p0, Lcom/facebook/bidding/a/f/a;->m:I

    iput-object p4, p0, Lcom/facebook/bidding/a/f/a;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/bidding/a/f/a;->n:Ljava/lang/String;

    iput-object p6, p0, Lcom/facebook/bidding/a/f/a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/bidding/a/f/a;->l:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/bidding/a/f/a;->f:D

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/bidding/a/f/a;->l:Ljava/lang/Boolean;

    iput v0, p0, Lcom/facebook/bidding/a/f/a;->m:I

    iput-object p1, p0, Lcom/facebook/bidding/a/f/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/bidding/a/f/a;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/bidding/a/f/a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/bidding/a/f/a;->l:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/bidding/a/f/a;->f:D

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/bidding/a/f/a;->l:Ljava/lang/Boolean;

    iput v0, p0, Lcom/facebook/bidding/a/f/a;->m:I

    iput-object p1, p0, Lcom/facebook/bidding/a/f/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/bidding/a/f/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/bidding/a/f/a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/bidding/a/f/a;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/bidding/a/f/a;->g:Ljava/lang/String;

    iput-wide p6, p0, Lcom/facebook/bidding/a/f/a;->f:D

    iput-object p10, p0, Lcom/facebook/bidding/a/f/a;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/facebook/bidding/a/f/a;->j:Ljava/lang/String;

    iput-object p9, p0, Lcom/facebook/bidding/a/f/a;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/bidding/a/f/a;->d:Ljava/lang/String;

    iput p12, p0, Lcom/facebook/bidding/a/f/a;->m:I

    iput-object p13, p0, Lcom/facebook/bidding/a/f/a;->n:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/bidding/a/f/a;->l:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/bidding/a/f/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/bidding/a/f/a;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/bidding/a/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/bidding/a/f/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/bidding/a/f/a;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/bidding/a/c/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/a/f/a;->l:Ljava/lang/Boolean;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/a/f/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/a/f/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/a/f/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()D
    .registers 3

    iget-wide v0, p0, Lcom/facebook/bidding/a/f/a;->f:D

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/a/f/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/a/f/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/a/f/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/a/f/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lcom/facebook/bidding/a/f/a;->m:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/a/f/a;->n:Ljava/lang/String;

    return-object v0
.end method
