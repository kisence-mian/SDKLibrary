.class public Lcom/sigmob/volley/x;
.super Ljava/lang/Object;


# annotations
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

.field public final b:Lcom/sigmob/volley/c;

.field public final c:Lcom/sigmob/volley/ae;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/sigmob/volley/ae;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/volley/x;->d:Z

    iput-object v1, p0, Lcom/sigmob/volley/x;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sigmob/volley/x;->b:Lcom/sigmob/volley/c;

    iput-object p1, p0, Lcom/sigmob/volley/x;->c:Lcom/sigmob/volley/ae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/sigmob/volley/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/volley/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/volley/x;->d:Z

    iput-object p1, p0, Lcom/sigmob/volley/x;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sigmob/volley/x;->b:Lcom/sigmob/volley/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/volley/x;->c:Lcom/sigmob/volley/ae;

    return-void
.end method

.method public static a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sigmob/volley/ae;",
            ")",
            "Lcom/sigmob/volley/x",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sigmob/volley/x;

    invoke-direct {v0, p0}, Lcom/sigmob/volley/x;-><init>(Lcom/sigmob/volley/ae;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/sigmob/volley/c;)Lcom/sigmob/volley/x;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/sigmob/volley/c;",
            ")",
            "Lcom/sigmob/volley/x",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sigmob/volley/x;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/volley/x;-><init>(Ljava/lang/Object;Lcom/sigmob/volley/c;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/x;->c:Lcom/sigmob/volley/ae;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
