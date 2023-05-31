.class public final Lcom/sigmob/volley/toolbox/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/volley/j;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/volley/j;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sigmob/volley/toolbox/l;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/volley/j;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/volley/toolbox/l;->a:I

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/l;->b:Ljava/util/List;

    iput p3, p0, Lcom/sigmob/volley/toolbox/l;->c:I

    iput-object p4, p0, Lcom/sigmob/volley/toolbox/l;->d:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/toolbox/l;->a:I

    return v0
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/volley/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/l;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/toolbox/l;->c:I

    return v0
.end method

.method public final d()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/l;->d:Ljava/io/InputStream;

    return-object v0
.end method
