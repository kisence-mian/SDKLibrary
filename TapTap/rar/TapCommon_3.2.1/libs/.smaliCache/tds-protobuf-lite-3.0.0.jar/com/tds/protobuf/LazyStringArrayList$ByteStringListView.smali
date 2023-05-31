.class Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/LazyStringArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteStringListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/tds/protobuf/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final list:Lcom/tds/protobuf/LazyStringArrayList;


# direct methods
.method constructor <init>(Lcom/tds/protobuf/LazyStringArrayList;)V
    .registers 2
    .param p1, "list"    # Lcom/tds/protobuf/LazyStringArrayList;

    .line 375
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/tds/protobuf/LazyStringArrayList;

    .line 377
    return-void
.end method


# virtual methods
.method public add(ILcom/tds/protobuf/ByteString;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/tds/protobuf/ByteString;

    .line 398
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/tds/protobuf/LazyStringArrayList;

    # invokes: Lcom/tds/protobuf/LazyStringArrayList;->add(ILcom/tds/protobuf/ByteString;)V
    invoke-static {v0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList;->access$500(Lcom/tds/protobuf/LazyStringArrayList;ILcom/tds/protobuf/ByteString;)V

    .line 399
    iget v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 400
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 371
    check-cast p2, Lcom/tds/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->add(ILcom/tds/protobuf/ByteString;)V

    return-void
.end method

.method public get(I)Lcom/tds/protobuf/ByteString;
    .registers 3
    .param p1, "index"    # I

    .line 381
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/tds/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/LazyStringArrayList;->getByteString(I)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 371
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->get(I)Lcom/tds/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lcom/tds/protobuf/ByteString;
    .registers 4
    .param p1, "index"    # I

    .line 404
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/tds/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 406
    # invokes: Lcom/tds/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/tds/protobuf/ByteString;
    invoke-static {v0}, Lcom/tds/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Lcom/tds/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 371
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->remove(I)Lcom/tds/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public set(ILcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;
    .registers 5
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/tds/protobuf/ByteString;

    .line 391
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/tds/protobuf/LazyStringArrayList;

    # invokes: Lcom/tds/protobuf/LazyStringArrayList;->setAndReturn(ILcom/tds/protobuf/ByteString;)Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList;->access$300(Lcom/tds/protobuf/LazyStringArrayList;ILcom/tds/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    .line 392
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 393
    # invokes: Lcom/tds/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/tds/protobuf/ByteString;
    invoke-static {v0}, Lcom/tds/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Lcom/tds/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 371
    check-cast p2, Lcom/tds/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->set(ILcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 386
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/tds/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/tds/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0
.end method
