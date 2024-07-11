.class public final Lcom/kwad/sdk/crash/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/crash/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/kwad/sdk/crash/b/b;

.field private b:Lcom/kwad/sdk/crash/b;

.field private c:J


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/crash/b/b;

    invoke-direct {v0}, Lcom/kwad/sdk/crash/b/b;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/crash/d;->a:Lcom/kwad/sdk/crash/b/b;

    new-instance v0, Lcom/kwad/sdk/crash/b$a;

    invoke-direct {v0}, Lcom/kwad/sdk/crash/b$a;-><init>()V

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/b$a;->a()Lcom/kwad/sdk/crash/b;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/crash/d;->b:Lcom/kwad/sdk/crash/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/crash/d$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/crash/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/crash/d;
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/crash/d$a;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/crash/d;->b:Lcom/kwad/sdk/crash/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/b;->a()Lcom/kwad/sdk/crash/e;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/crash/e;->a(ILcom/kwad/sdk/crash/model/message/ExceptionMessage;)V

    :cond_b
    return-void
.end method

.method public a(Lcom/kwad/sdk/crash/b;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/crash/d;->b:Lcom/kwad/sdk/crash/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/crash/d;->c:J

    iget-object v0, p0, Lcom/kwad/sdk/crash/d;->a:Lcom/kwad/sdk/crash/b/b;

    iget-object v1, p1, Lcom/kwad/sdk/crash/b;->d:[Ljava/lang/String;

    iget-object p1, p1, Lcom/kwad/sdk/crash/b;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/kwad/sdk/crash/b/b;->a([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public b()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/crash/d;->a:Lcom/kwad/sdk/crash/b/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/b/b;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/crash/d;->a:Lcom/kwad/sdk/crash/b/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/b/b;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/crash/d;->b:Lcom/kwad/sdk/crash/b;

    iget-object v0, v0, Lcom/kwad/sdk/crash/b;->a:Lcom/kwad/sdk/crash/model/b;

    iget-object v0, v0, Lcom/kwad/sdk/crash/model/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/crash/d;->b:Lcom/kwad/sdk/crash/b;

    iget-object v0, v0, Lcom/kwad/sdk/crash/b;->a:Lcom/kwad/sdk/crash/model/b;

    iget-object v0, v0, Lcom/kwad/sdk/crash/model/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/crash/d;->b:Lcom/kwad/sdk/crash/b;

    iget-object v0, v0, Lcom/kwad/sdk/crash/b;->g:Landroid/content/Context;

    return-object v0
.end method

.method public g()Lcom/kwad/sdk/crash/f;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/crash/d;->b:Lcom/kwad/sdk/crash/b;

    iget-object v0, v0, Lcom/kwad/sdk/crash/b;->c:Lcom/kwad/sdk/crash/f;

    return-object v0
.end method

.method public h()J
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kwad/sdk/crash/d;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/crash/d;->b:Lcom/kwad/sdk/crash/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/b;->b()Z

    move-result v0

    return v0
.end method
