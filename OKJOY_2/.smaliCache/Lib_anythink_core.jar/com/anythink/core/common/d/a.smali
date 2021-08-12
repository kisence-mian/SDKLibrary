.class public final Lcom/anythink/core/common/d/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J

.field public f:J

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public i:J

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/anythink/core/common/d/a;
    .registers 6

    .line 30
    new-instance v0, Lcom/anythink/core/common/d/a;

    invoke-direct {v0}, Lcom/anythink/core/common/d/a;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/anythink/core/common/d/a;->a:Landroid/content/Context;

    iput-object v1, v0, Lcom/anythink/core/common/d/a;->a:Landroid/content/Context;

    .line 32
    iget-object v1, p0, Lcom/anythink/core/common/d/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/d/a;->b:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/anythink/core/common/d/a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/d/a;->c:Ljava/lang/String;

    .line 34
    iget v1, p0, Lcom/anythink/core/common/d/a;->d:I

    iput v1, v0, Lcom/anythink/core/common/d/a;->d:I

    .line 35
    iget-wide v1, p0, Lcom/anythink/core/common/d/a;->f:J

    iput-wide v1, v0, Lcom/anythink/core/common/d/a;->f:J

    .line 36
    iget-object v1, p0, Lcom/anythink/core/common/d/a;->h:Ljava/util/List;

    iput-object v1, v0, Lcom/anythink/core/common/d/a;->h:Ljava/util/List;

    .line 37
    iget-wide v1, p0, Lcom/anythink/core/common/d/a;->e:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_2a

    .line 38
    const-wide/16 v1, 0x2710

    iput-wide v1, v0, Lcom/anythink/core/common/d/a;->e:J

    goto :goto_2c

    .line 40
    :cond_2a
    iput-wide v1, v0, Lcom/anythink/core/common/d/a;->e:J

    .line 43
    :goto_2c
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/anythink/core/common/d/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)",
            "Lcom/anythink/core/common/d/a;"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/anythink/core/common/d/a;->a()Lcom/anythink/core/common/d/a;

    move-result-object v0

    .line 48
    iput-object p1, v0, Lcom/anythink/core/common/d/a;->g:Ljava/util/List;

    .line 50
    iget-object p1, p0, Lcom/anythink/core/common/d/a;->j:Ljava/lang/String;

    iput-object p1, v0, Lcom/anythink/core/common/d/a;->j:Ljava/lang/String;

    .line 52
    return-object v0
.end method

.method public final b(Ljava/util/List;)Lcom/anythink/core/common/d/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)",
            "Lcom/anythink/core/common/d/a;"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/anythink/core/common/d/a;->a()Lcom/anythink/core/common/d/a;

    move-result-object v0

    .line 57
    iput-object p1, v0, Lcom/anythink/core/common/d/a;->g:Ljava/util/List;

    .line 59
    return-object v0
.end method
