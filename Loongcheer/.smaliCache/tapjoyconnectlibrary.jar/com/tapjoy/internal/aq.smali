.class public final Lcom/tapjoy/internal/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/as;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/as<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/tapjoy/internal/aq;, "Lcom/tapjoy/internal/aq<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/tapjoy/internal/aq;, "Lcom/tapjoy/internal/aq<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final b(I)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/ar;->a(Ljava/util/List;I)V

    .line 150
    return-void
.end method

.method public final clear()V
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 41
    .local p0, "this":Lcom/tapjoy/internal/aq;, "Lcom/tapjoy/internal/aq<TE;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/tapjoy/internal/aq;, "Lcom/tapjoy/internal/aq<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/tapjoy/internal/aq;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_7

    .line 132
    return-object v0

    .line 134
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 51
    .local p0, "this":Lcom/tapjoy/internal/aq;, "Lcom/tapjoy/internal/aq<TE;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/tapjoy/internal/aq;, "Lcom/tapjoy/internal/aq<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/tapjoy/internal/aq;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_7

    .line 117
    return-object v0

    .line 119
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 76
    .local p0, "this":Lcom/tapjoy/internal/aq;, "Lcom/tapjoy/internal/aq<TE;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/tapjoy/internal/aq;, "Lcom/tapjoy/internal/aq<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/tapjoy/internal/aq;, "Lcom/tapjoy/internal/aq<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/tapjoy/internal/aq;, "Lcom/tapjoy/internal/aq<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/tapjoy/internal/aq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
