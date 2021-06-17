.class final Lcom/tapjoy/internal/eq;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/tapjoy/internal/eq;->b:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/tapjoy/internal/eq;->a:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/tapjoy/internal/eq;, "Lcom/tapjoy/internal/eq<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tapjoy/internal/eq;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/tapjoy/internal/eq;->b:Ljava/util/List;

    if-ne v0, v1, :cond_f

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/eq;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/eq;->a:Ljava/util/List;

    .line 54
    :cond_f
    iget-object v0, p0, Lcom/tapjoy/internal/eq;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/tapjoy/internal/eq;, "Lcom/tapjoy/internal/eq<TT;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/eq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/tapjoy/internal/eq;, "Lcom/tapjoy/internal/eq<TT;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/eq;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/tapjoy/internal/eq;->b:Ljava/util/List;

    if-ne v0, v1, :cond_f

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/eq;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/eq;->a:Ljava/util/List;

    .line 61
    :cond_f
    iget-object v0, p0, Lcom/tapjoy/internal/eq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/tapjoy/internal/eq;, "Lcom/tapjoy/internal/eq<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tapjoy/internal/eq;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/tapjoy/internal/eq;->b:Ljava/util/List;

    if-ne v0, v1, :cond_f

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/eq;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/eq;->a:Ljava/util/List;

    .line 47
    :cond_f
    iget-object v0, p0, Lcom/tapjoy/internal/eq;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/tapjoy/internal/eq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
