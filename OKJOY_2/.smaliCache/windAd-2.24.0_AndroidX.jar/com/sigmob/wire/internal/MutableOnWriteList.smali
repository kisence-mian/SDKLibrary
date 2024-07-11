.class final Lcom/sigmob/wire/internal/MutableOnWriteList;
.super Ljava/util/AbstractList;

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
.field private final immutableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field mutableList:Ljava/util/List;
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

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    iput-object p1, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    if-ne v0, v1, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    :cond_f
    iget-object v0, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    if-ne v0, v1, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    :cond_f
    iget-object v0, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    if-ne v0, v1, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    :cond_f
    iget-object v0, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
