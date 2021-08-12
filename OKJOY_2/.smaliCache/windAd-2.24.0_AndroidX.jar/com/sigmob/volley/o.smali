.class public Lcom/sigmob/volley/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/volley/o$a;,
        Lcom/sigmob/volley/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/sigmob/volley/b$a;

.field public final c:Lcom/sigmob/volley/t;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/sigmob/volley/t;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/volley/o;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/volley/o;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sigmob/volley/o;->b:Lcom/sigmob/volley/b$a;

    iput-object p1, p0, Lcom/sigmob/volley/o;->c:Lcom/sigmob/volley/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/sigmob/volley/b$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/volley/b$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/volley/o;->d:Z

    iput-object p1, p0, Lcom/sigmob/volley/o;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sigmob/volley/o;->b:Lcom/sigmob/volley/b$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/volley/o;->c:Lcom/sigmob/volley/t;

    return-void
.end method

.method public static a(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sigmob/volley/t;",
            ")",
            "Lcom/sigmob/volley/o<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sigmob/volley/o;

    invoke-direct {v0, p0}, Lcom/sigmob/volley/o;-><init>(Lcom/sigmob/volley/t;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/sigmob/volley/b$a;",
            ")",
            "Lcom/sigmob/volley/o<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sigmob/volley/o;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/volley/o;-><init>(Ljava/lang/Object;Lcom/sigmob/volley/b$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/o;->c:Lcom/sigmob/volley/t;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
