.class Lcom/tds/protobuf/LazyField$LazyEntry;
.super Ljava/lang/Object;
.source "LazyField.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/LazyField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazyEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/tds/protobuf/LazyField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/tds/protobuf/LazyField;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/tds/protobuf/LazyField$LazyEntry;, "Lcom/tds/protobuf/LazyField$LazyEntry<TK;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lcom/tds/protobuf/LazyField;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/tds/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map$Entry;Lcom/tds/protobuf/LazyField$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/Map$Entry;
    .param p2, "x1"    # Lcom/tds/protobuf/LazyField$1;

    .line 91
    .local p0, "this":Lcom/tds/protobuf/LazyField$LazyEntry;, "Lcom/tds/protobuf/LazyField$LazyEntry<TK;>;"
    invoke-direct {p0, p1}, Lcom/tds/protobuf/LazyField$LazyEntry;-><init>(Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public getField()Lcom/tds/protobuf/LazyField;
    .registers 2

    .line 113
    .local p0, "this":Lcom/tds/protobuf/LazyField$LazyEntry;, "Lcom/tds/protobuf/LazyField$LazyEntry<TK;>;"
    iget-object v0, p0, Lcom/tds/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/LazyField;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/tds/protobuf/LazyField$LazyEntry;, "Lcom/tds/protobuf/LazyField$LazyEntry<TK;>;"
    iget-object v0, p0, Lcom/tds/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    .line 105
    .local p0, "this":Lcom/tds/protobuf/LazyField$LazyEntry;, "Lcom/tds/protobuf/LazyField$LazyEntry<TK;>;"
    iget-object v0, p0, Lcom/tds/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/LazyField;

    .line 106
    .local v0, "field":Lcom/tds/protobuf/LazyField;
    if-nez v0, :cond_c

    .line 107
    const/4 v1, 0x0

    return-object v1

    .line 109
    :cond_c
    invoke-virtual {v0}, Lcom/tds/protobuf/LazyField;->getValue()Lcom/tds/protobuf/MessageLite;

    move-result-object v1

    return-object v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 118
    .local p0, "this":Lcom/tds/protobuf/LazyField$LazyEntry;, "Lcom/tds/protobuf/LazyField$LazyEntry<TK;>;"
    instance-of v0, p1, Lcom/tds/protobuf/MessageLite;

    if-eqz v0, :cond_14

    .line 123
    iget-object v0, p0, Lcom/tds/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/LazyField;

    move-object v1, p1

    check-cast v1, Lcom/tds/protobuf/MessageLite;

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/LazyField;->setValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0

    .line 119
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
