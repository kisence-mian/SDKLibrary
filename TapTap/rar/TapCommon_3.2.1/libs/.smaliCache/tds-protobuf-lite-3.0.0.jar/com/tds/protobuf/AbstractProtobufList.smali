.class abstract Lcom/tds/protobuf/AbstractProtobufList;
.super Ljava/util/AbstractList;
.source "AbstractProtobufList.java"

# interfaces
.implements Lcom/tds/protobuf/Internal$ProtobufList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Lcom/tds/protobuf/Internal$ProtobufList<",
        "TE;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_CAPACITY:I = 0xa


# instance fields
.field private isMutable:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 59
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/protobuf/AbstractProtobufList;->isMutable:Z

    .line 61
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 110
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 111
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 104
    invoke-super {p0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 122
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 116
    invoke-super {p0, p1}, Ljava/util/AbstractList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 1

    .line 127
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 128
    invoke-super {p0}, Ljava/util/AbstractList;->clear()V

    .line 129
    return-void
.end method

.method protected ensureIsMutable()V
    .registers 2

    .line 176
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/AbstractProtobufList;->isMutable:Z

    if-eqz v0, :cond_5

    .line 179
    return-void

    .line 177
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 65
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 66
    return v0

    .line 68
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 69
    return v2

    .line 74
    :cond_a
    instance-of v1, p1, Ljava/util/RandomAccess;

    if-nez v1, :cond_13

    .line 75
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 78
    :cond_13
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 79
    .local v1, "other":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractProtobufList;->size()I

    move-result v3

    .line 80
    .local v3, "size":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_21

    .line 81
    return v2

    .line 83
    :cond_21
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    if-ge v4, v3, :cond_36

    .line 84
    invoke-virtual {p0, v4}, Lcom/tds/protobuf/AbstractProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 85
    return v2

    .line 83
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 88
    .end local v4    # "i":I
    :cond_36
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 93
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractProtobufList;->size()I

    move-result v0

    .line 94
    .local v0, "size":I
    const/4 v1, 0x1

    .line 95
    .local v1, "hashCode":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_17

    .line 96
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Lcom/tds/protobuf/AbstractProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 98
    .end local v2    # "i":I
    :cond_17
    return v1
.end method

.method public isModifiable()Z
    .registers 2

    .line 133
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/AbstractProtobufList;->isMutable:Z

    return v0
.end method

.method public final makeImmutable()V
    .registers 2

    .line 138
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/protobuf/AbstractProtobufList;->isMutable:Z

    .line 139
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 144
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 149
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 150
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 156
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 162
    invoke-super {p0, p1}, Ljava/util/AbstractList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/tds/protobuf/AbstractProtobufList;, "Lcom/tds/protobuf/AbstractProtobufList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 168
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
