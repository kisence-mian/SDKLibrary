.class public interface abstract Lcom/tds/protobuf/LazyStringList;
.super Ljava/lang/Object;
.source "LazyStringList.java"

# interfaces
.implements Lcom/tds/protobuf/ProtocolStringList;


# virtual methods
.method public abstract add(Lcom/tds/protobuf/ByteString;)V
.end method

.method public abstract add([B)V
.end method

.method public abstract addAllByteArray(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation
.end method

.method public abstract addAllByteString(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/tds/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract asByteArrayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getByteArray(I)[B
.end method

.method public abstract getByteString(I)Lcom/tds/protobuf/ByteString;
.end method

.method public abstract getRaw(I)Ljava/lang/Object;
.end method

.method public abstract getUnderlyingElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getUnmodifiableView()Lcom/tds/protobuf/LazyStringList;
.end method

.method public abstract mergeFrom(Lcom/tds/protobuf/LazyStringList;)V
.end method

.method public abstract set(ILcom/tds/protobuf/ByteString;)V
.end method

.method public abstract set(I[B)V
.end method
