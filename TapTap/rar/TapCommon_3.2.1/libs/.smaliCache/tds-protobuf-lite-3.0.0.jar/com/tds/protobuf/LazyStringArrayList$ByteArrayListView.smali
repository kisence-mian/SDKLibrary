.class Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;
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
    name = "ByteArrayListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "[B>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final list:Lcom/tds/protobuf/LazyStringArrayList;


# direct methods
.method constructor <init>(Lcom/tds/protobuf/LazyStringArrayList;)V
    .registers 2
    .param p1, "list"    # Lcom/tds/protobuf/LazyStringArrayList;

    .line 331
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/tds/protobuf/LazyStringArrayList;

    .line 333
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 327
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->add(I[B)V

    return-void
.end method

.method public add(I[B)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .line 354
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/tds/protobuf/LazyStringArrayList;

    # invokes: Lcom/tds/protobuf/LazyStringArrayList;->add(I[B)V
    invoke-static {v0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList;->access$200(Lcom/tds/protobuf/LazyStringArrayList;I[B)V

    .line 355
    iget v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 356
    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 327
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->get(I)[B

    move-result-object p1

    return-object p1
.end method

.method public get(I)[B
    .registers 3
    .param p1, "index"    # I

    .line 337
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/tds/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/LazyStringArrayList;->getByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 327
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->remove(I)[B

    move-result-object p1

    return-object p1
.end method

.method public remove(I)[B
    .registers 4
    .param p1, "index"    # I

    .line 360
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/tds/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 362
    # invokes: Lcom/tds/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B
    invoke-static {v0}, Lcom/tds/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)[B

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 327
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->set(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public set(I[B)[B
    .registers 5
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .line 347
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/tds/protobuf/LazyStringArrayList;

    # invokes: Lcom/tds/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList;->access$000(Lcom/tds/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;

    move-result-object v0

    .line 348
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 349
    # invokes: Lcom/tds/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B
    invoke-static {v0}, Lcom/tds/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)[B

    move-result-object v1

    return-object v1
.end method

.method public size()I
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/tds/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/tds/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0
.end method
