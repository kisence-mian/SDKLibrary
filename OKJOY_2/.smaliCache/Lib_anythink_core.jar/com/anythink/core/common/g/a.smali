.class public abstract Lcom/anythink/core/common/g/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/g/a;)Z
    .registers 1

    .line 13
    iget-boolean p0, p0, Lcom/anythink/core/common/g/a;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/anythink/core/common/g/a;)Z
    .registers 2

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/g/a;->a:Z

    return v0
.end method

.method private c()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/anythink/core/common/g/a;->a:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/anythink/core/common/g/a;->b:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 37
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/common/g/a;->b:Ljava/util/Timer;

    .line 40
    :cond_a
    return-void
.end method

.method protected final a(J)V
    .registers 5

    .line 19
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/g/a;->b:Ljava/util/Timer;

    .line 20
    new-instance v0, Lcom/anythink/core/common/g/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/g/a$1;-><init>(Lcom/anythink/core/common/g/a;)V

    .line 32
    iget-object v1, p0, Lcom/anythink/core/common/g/a;->b:Ljava/util/Timer;

    invoke-virtual {v1, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 33
    return-void
.end method

.method protected abstract b()V
.end method
