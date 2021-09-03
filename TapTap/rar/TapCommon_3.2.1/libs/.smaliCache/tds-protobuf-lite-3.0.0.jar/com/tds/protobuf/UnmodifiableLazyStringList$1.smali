.class Lcom/tds/protobuf/UnmodifiableLazyStringList$1;
.super Ljava/lang/Object;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/protobuf/UnmodifiableLazyStringList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field iter:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tds/protobuf/UnmodifiableLazyStringList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/tds/protobuf/UnmodifiableLazyStringList;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/tds/protobuf/UnmodifiableLazyStringList;

    .line 113
    iput-object p1, p0, Lcom/tds/protobuf/UnmodifiableLazyStringList$1;->this$0:Lcom/tds/protobuf/UnmodifiableLazyStringList;

    iput p2, p0, Lcom/tds/protobuf/UnmodifiableLazyStringList$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    # getter for: Lcom/tds/protobuf/UnmodifiableLazyStringList;->list:Lcom/tds/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/tds/protobuf/UnmodifiableLazyStringList;->access$000(Lcom/tds/protobuf/UnmodifiableLazyStringList;)Lcom/tds/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/tds/protobuf/LazyStringList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    iput-object p2, p0, Lcom/tds/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2

    .line 113
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tds/protobuf/UnmodifiableLazyStringList$1;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/tds/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/tds/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 113
    invoke-virtual {p0}, Lcom/tds/protobuf/UnmodifiableLazyStringList$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/tds/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/tds/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .registers 2

    .line 113
    invoke-virtual {p0}, Lcom/tds/protobuf/UnmodifiableLazyStringList$1;->previous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/tds/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/tds/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .registers 2

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2

    .line 113
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tds/protobuf/UnmodifiableLazyStringList$1;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
