.class Lcom/tds/protobuf/Internal$MapAdapter$SetAdapter;
.super Ljava/util/AbstractSet;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/Internal$MapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final realSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tds/protobuf/Internal$MapAdapter;


# direct methods
.method public constructor <init>(Lcom/tds/protobuf/Internal$MapAdapter;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;>;)V"
        }
    .end annotation

    .line 509
    .local p0, "this":Lcom/tds/protobuf/Internal$MapAdapter$SetAdapter;, "Lcom/tds/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.SetAdapter;"
    .local p2, "realSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TRealValue;>;>;"
    iput-object p1, p0, Lcom/tds/protobuf/Internal$MapAdapter$SetAdapter;->this$0:Lcom/tds/protobuf/Internal$MapAdapter;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 510
    iput-object p2, p0, Lcom/tds/protobuf/Internal$MapAdapter$SetAdapter;->realSet:Ljava/util/Set;

    .line 511
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 515
    .local p0, "this":Lcom/tds/protobuf/Internal$MapAdapter$SetAdapter;, "Lcom/tds/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.SetAdapter;"
    new-instance v0, Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;

    iget-object v1, p0, Lcom/tds/protobuf/Internal$MapAdapter$SetAdapter;->this$0:Lcom/tds/protobuf/Internal$MapAdapter;

    iget-object v2, p0, Lcom/tds/protobuf/Internal$MapAdapter$SetAdapter;->realSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;-><init>(Lcom/tds/protobuf/Internal$MapAdapter;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 520
    .local p0, "this":Lcom/tds/protobuf/Internal$MapAdapter$SetAdapter;, "Lcom/tds/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.SetAdapter;"
    iget-object v0, p0, Lcom/tds/protobuf/Internal$MapAdapter$SetAdapter;->realSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
