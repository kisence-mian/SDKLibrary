.class final Lcom/tds/protobuf/ProtobufArrayList;
.super Lcom/tds/protobuf/AbstractProtobufList;
.source "ProtobufArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/protobuf/AbstractProtobufList<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/tds/protobuf/ProtobufArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/ProtobufArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lcom/tds/protobuf/ProtobufArrayList;

    invoke-direct {v0}, Lcom/tds/protobuf/ProtobufArrayList;-><init>()V

    sput-object v0, Lcom/tds/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/tds/protobuf/ProtobufArrayList;

    .line 45
    invoke-virtual {v0}, Lcom/tds/protobuf/ProtobufArrayList;->makeImmutable()V

    .line 46
    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 56
    .local p0, "this":Lcom/tds/protobuf/ProtobufArrayList;, "Lcom/tds/protobuf/ProtobufArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/tds/protobuf/ProtobufArrayList;-><init>(Ljava/util/List;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/tds/protobuf/ProtobufArrayList;, "Lcom/tds/protobuf/ProtobufArrayList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/AbstractProtobufList;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/tds/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    .line 61
    return-void
.end method

.method public static emptyList()Lcom/tds/protobuf/ProtobufArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tds/protobuf/ProtobufArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/tds/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/tds/protobuf/ProtobufArrayList;

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/tds/protobuf/ProtobufArrayList;, "Lcom/tds/protobuf/ProtobufArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/tds/protobuf/ProtobufArrayList;->ensureIsMutable()V

    .line 76
    iget-object v0, p0, Lcom/tds/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 77
    iget v0, p0, Lcom/tds/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/ProtobufArrayList;->modCount:I

    .line 78
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/tds/protobuf/ProtobufArrayList;, "Lcom/tds/protobuf/ProtobufArrayList<TE;>;"
    iget-object v0, p0, Lcom/tds/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$ProtobufList;
    .registers 2

    .line 41
    .local p0, "this":Lcom/tds/protobuf/ProtobufArrayList;, "Lcom/tds/protobuf/ProtobufArrayList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/ProtobufArrayList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/ProtobufArrayList;

    move-result-object p1

    return-object p1
.end method

.method public mutableCopyWithCapacity(I)Lcom/tds/protobuf/ProtobufArrayList;
    .registers 4
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/tds/protobuf/ProtobufArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/tds/protobuf/ProtobufArrayList;, "Lcom/tds/protobuf/ProtobufArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/ProtobufArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v1, p0, Lcom/tds/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    new-instance v1, Lcom/tds/protobuf/ProtobufArrayList;

    invoke-direct {v1, v0}, Lcom/tds/protobuf/ProtobufArrayList;-><init>(Ljava/util/List;)V

    return-object v1

    .line 66
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/tds/protobuf/ProtobufArrayList;, "Lcom/tds/protobuf/ProtobufArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/ProtobufArrayList;->ensureIsMutable()V

    .line 88
    iget-object v0, p0, Lcom/tds/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "toReturn":Ljava/lang/Object;, "TE;"
    iget v1, p0, Lcom/tds/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tds/protobuf/ProtobufArrayList;->modCount:I

    .line 90
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/tds/protobuf/ProtobufArrayList;, "Lcom/tds/protobuf/ProtobufArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/tds/protobuf/ProtobufArrayList;->ensureIsMutable()V

    .line 96
    iget-object v0, p0, Lcom/tds/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "toReturn":Ljava/lang/Object;, "TE;"
    iget v1, p0, Lcom/tds/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tds/protobuf/ProtobufArrayList;->modCount:I

    .line 98
    return-object v0
.end method

.method public size()I
    .registers 2

    .line 103
    .local p0, "this":Lcom/tds/protobuf/ProtobufArrayList;, "Lcom/tds/protobuf/ProtobufArrayList<TE;>;"
    iget-object v0, p0, Lcom/tds/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
