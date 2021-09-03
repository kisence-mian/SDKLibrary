.class public Lcom/tds/protobuf/LazyStringArrayList;
.super Lcom/tds/protobuf/AbstractProtobufList;
.source "LazyStringArrayList.java"

# interfaces
.implements Lcom/tds/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;,
        Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/protobuf/AbstractProtobufList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/tds/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/tds/protobuf/LazyStringList;

.field private static final EMPTY_LIST:Lcom/tds/protobuf/LazyStringArrayList;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Lcom/tds/protobuf/LazyStringArrayList;

    invoke-direct {v0}, Lcom/tds/protobuf/LazyStringArrayList;-><init>()V

    sput-object v0, Lcom/tds/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/tds/protobuf/LazyStringArrayList;

    .line 70
    invoke-virtual {v0}, Lcom/tds/protobuf/LazyStringArrayList;->makeImmutable()V

    .line 78
    sput-object v0, Lcom/tds/protobuf/LazyStringArrayList;->EMPTY:Lcom/tds/protobuf/LazyStringList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 83
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tds/protobuf/LazyStringArrayList;-><init>(I)V

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "intialCapacity"    # I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/tds/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/tds/protobuf/LazyStringList;)V
    .registers 4
    .param p1, "from"    # Lcom/tds/protobuf/LazyStringList;

    .line 90
    invoke-direct {p0}, Lcom/tds/protobuf/AbstractProtobufList;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/tds/protobuf/LazyStringList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 92
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    .line 93
    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/AbstractProtobufList;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "from":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/tds/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/tds/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/tds/protobuf/LazyStringArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)[B
    .registers 2
    .param p0, "x0"    # Ljava/lang/Object;

    .line 65
    invoke-static {p0}, Lcom/tds/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/tds/protobuf/LazyStringArrayList;I[B)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/protobuf/LazyStringArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList;->add(I[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/tds/protobuf/LazyStringArrayList;ILcom/tds/protobuf/ByteString;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/tds/protobuf/LazyStringArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/protobuf/ByteString;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList;->setAndReturn(ILcom/tds/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Object;)Lcom/tds/protobuf/ByteString;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Object;

    .line 65
    invoke-static {p0}, Lcom/tds/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/tds/protobuf/LazyStringArrayList;ILcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/protobuf/LazyStringArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tds/protobuf/ByteString;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList;->add(ILcom/tds/protobuf/ByteString;)V

    return-void
.end method

.method private add(ILcom/tds/protobuf/ByteString;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Lcom/tds/protobuf/ByteString;

    .line 155
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 156
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    iget v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    .line 158
    return-void
.end method

.method private add(I[B)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # [B

    .line 161
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 162
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 163
    iget v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    .line 164
    return-void
.end method

.method private static asByteArray(Ljava/lang/Object;)[B
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 298
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    .line 299
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0

    .line 300
    :cond_a
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 301
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tds/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 303
    :cond_16
    move-object v0, p0

    check-cast v0, Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/tds/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static asByteString(Ljava/lang/Object;)Lcom/tds/protobuf/ByteString;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 288
    instance-of v0, p0, Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_8

    .line 289
    move-object v0, p0

    check-cast v0, Lcom/tds/protobuf/ByteString;

    return-object v0

    .line 290
    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 291
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 293
    :cond_14
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->copyFrom([B)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private static asString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 278
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 279
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 280
    :cond_8
    instance-of v0, p0, Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_14

    .line 281
    move-object v0, p0

    check-cast v0, Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/tds/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 283
    :cond_14
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/tds/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static emptyList()Lcom/tds/protobuf/LazyStringArrayList;
    .registers 1

    .line 74
    sget-object v0, Lcom/tds/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/tds/protobuf/LazyStringArrayList;

    return-object v0
.end method

.method private setAndReturn(ILcom/tds/protobuf/ByteString;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/tds/protobuf/ByteString;

    .line 263
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 264
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private setAndReturn(I[B)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .line 273
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 274
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 65
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList;->add(ILjava/lang/String;)V

    return-void
.end method

.method public add(ILjava/lang/String;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 150
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 151
    iget v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    .line 152
    return-void
.end method

.method public add(Lcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p1, "element"    # Lcom/tds/protobuf/ByteString;

    .line 220
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 221
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    .line 223
    return-void
.end method

.method public add([B)V
    .registers 3
    .param p1, "element"    # [B

    .line 227
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 228
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    .line 230
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 177
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 180
    instance-of v0, p2, Lcom/tds/protobuf/LazyStringList;

    if-eqz v0, :cond_f

    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/LazyStringList;

    .line 181
    invoke-interface {v0}, Lcom/tds/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    goto :goto_10

    :cond_f
    move-object v0, p2

    .line 182
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_10
    iget-object v1, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    .line 183
    .local v1, "ret":Z
    iget v2, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    .line 184
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 172
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/tds/protobuf/LazyStringArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAllByteArray(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation

    .line 197
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 198
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 199
    .local v0, "ret":Z
    iget v1, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    .line 200
    return v0
.end method

.method public addAllByteString(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/tds/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation

    .line 189
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/tds/protobuf/ByteString;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 190
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 191
    .local v0, "ret":Z
    iget v1, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    .line 192
    return v0
.end method

.method public asByteArrayList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 368
    new-instance v0, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/LazyStringArrayList$ByteArrayListView;-><init>(Lcom/tds/protobuf/LazyStringArrayList;)V

    return-object v0
.end method

.method public asByteStringList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/LazyStringArrayList$ByteStringListView;-><init>(Lcom/tds/protobuf/LazyStringArrayList;)V

    return-object v0
.end method

.method public clear()V
    .registers 2

    .line 213
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 214
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    iget v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    .line 216
    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 2

    .line 65
    invoke-super {p0, p1}, Lcom/tds/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/LazyStringArrayList;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I

    .line 115
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 117
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 118
    :cond_e
    instance-of v1, v0, Lcom/tds/protobuf/ByteString;

    if-eqz v1, :cond_25

    .line 119
    move-object v1, v0

    check-cast v1, Lcom/tds/protobuf/ByteString;

    .line 120
    .local v1, "bs":Lcom/tds/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/tds/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/tds/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 122
    iget-object v3, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_24
    return-object v2

    .line 126
    .end local v1    # "bs":Lcom/tds/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_25
    move-object v1, v0

    check-cast v1, [B

    check-cast v1, [B

    .line 127
    .local v1, "ba":[B
    invoke-static {v1}, Lcom/tds/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 128
    .restart local v2    # "s":Ljava/lang/String;
    invoke-static {v1}, Lcom/tds/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 129
    iget-object v3, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_39
    return-object v2
.end method

.method public getByteArray(I)[B
    .registers 5
    .param p1, "index"    # I

    .line 249
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lcom/tds/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    .line 251
    .local v1, "b":[B
    if-eq v1, v0, :cond_11

    .line 252
    iget-object v2, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_11
    return-object v1
.end method

.method public getByteString(I)Lcom/tds/protobuf/ByteString;
    .registers 5
    .param p1, "index"    # I

    .line 239
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lcom/tds/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/tds/protobuf/ByteString;

    move-result-object v1

    .line 241
    .local v1, "b":Lcom/tds/protobuf/ByteString;
    if-eq v1, v0, :cond_11

    .line 242
    iget-object v2, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_11
    return-object v1
.end method

.method public getRaw(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 234
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlyingElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnmodifiableView()Lcom/tds/protobuf/LazyStringList;
    .registers 2

    .line 417
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->isModifiable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 418
    new-instance v0, Lcom/tds/protobuf/UnmodifiableLazyStringList;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/tds/protobuf/LazyStringList;)V

    return-object v0

    .line 420
    :cond_c
    return-object p0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .line 65
    invoke-super {p0}, Lcom/tds/protobuf/AbstractProtobufList;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isModifiable()Z
    .registers 2

    .line 65
    invoke-super {p0}, Lcom/tds/protobuf/AbstractProtobufList;->isModifiable()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/tds/protobuf/LazyStringList;)V
    .registers 7
    .param p1, "other"    # Lcom/tds/protobuf/LazyStringList;

    .line 314
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 315
    invoke-interface {p1}, Lcom/tds/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 316
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, [B

    if-eqz v2, :cond_29

    .line 317
    move-object v2, v1

    check-cast v2, [B

    check-cast v2, [B

    .line 320
    .local v2, "b":[B
    iget-object v3, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v2    # "b":[B
    goto :goto_2e

    .line 322
    :cond_29
    iget-object v2, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v1    # "o":Ljava/lang/Object;
    :goto_2e
    goto :goto_b

    .line 325
    :cond_2f
    return-void
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$ProtobufList;
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/LazyStringArrayList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/LazyStringArrayList;

    move-result-object p1

    return-object p1
.end method

.method public mutableCopyWithCapacity(I)Lcom/tds/protobuf/LazyStringArrayList;
    .registers 4
    .param p1, "capacity"    # I

    .line 105
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .local v0, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    new-instance v1, Lcom/tds/protobuf/LazyStringArrayList;

    invoke-direct {v1, v0}, Lcom/tds/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    return-object v1

    .line 106
    .end local v0    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 205
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 206
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tds/protobuf/LazyStringArrayList;->modCount:I

    .line 208
    invoke-static {v0}, Lcom/tds/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .registers 2

    .line 65
    invoke-super {p0, p1}, Lcom/tds/protobuf/AbstractProtobufList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .registers 2

    .line 65
    invoke-super {p0, p1}, Lcom/tds/protobuf/AbstractProtobufList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .registers 2

    .line 65
    invoke-super {p0, p1}, Lcom/tds/protobuf/AbstractProtobufList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 65
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 143
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lcom/tds/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public set(ILcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/tds/protobuf/ByteString;

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList;->setAndReturn(ILcom/tds/protobuf/ByteString;)Ljava/lang/Object;

    .line 260
    return-void
.end method

.method public set(I[B)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/tds/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;

    .line 270
    return-void
.end method

.method public size()I
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/tds/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
