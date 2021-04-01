.class public final Lcom/sigmob/wire/okio/Options;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/sigmob/wire/okio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lcom/sigmob/wire/okio/ByteString;


# direct methods
.method private constructor <init>([Lcom/sigmob/wire/okio/ByteString;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/sigmob/wire/okio/Options;->byteStrings:[Lcom/sigmob/wire/okio/ByteString;

    return-void
.end method

.method public static varargs of([Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/okio/Options;
    .registers 3

    new-instance v1, Lcom/sigmob/wire/okio/Options;

    invoke-virtual {p0}, [Lcom/sigmob/wire/okio/ByteString;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {v1, v0}, Lcom/sigmob/wire/okio/Options;-><init>([Lcom/sigmob/wire/okio/ByteString;)V

    return-object v1
.end method


# virtual methods
.method public get(I)Lcom/sigmob/wire/okio/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/okio/Options;->byteStrings:[Lcom/sigmob/wire/okio/ByteString;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Options;->get(I)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/Options;->byteStrings:[Lcom/sigmob/wire/okio/ByteString;

    array-length v0, v0

    return v0
.end method
