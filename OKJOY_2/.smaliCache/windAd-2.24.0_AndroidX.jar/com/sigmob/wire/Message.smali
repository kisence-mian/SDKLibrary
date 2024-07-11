.class public abstract Lcom/sigmob/wire/Message;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/wire/Message$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/sigmob/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/sigmob/wire/Message$Builder<",
        "TM;TB;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient adapter:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation
.end field

.field transient cachedSerializedSize:I

.field protected transient hashCode:I

.field private final transient unknownFields:Lcom/sigmob/wire/okio/ByteString;


# direct methods
.method protected constructor <init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "TM;>;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/wire/Message;->cachedSerializedSize:I

    iput v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    if-eqz p1, :cond_19

    if-eqz p2, :cond_11

    iput-object p1, p0, Lcom/sigmob/wire/Message;->adapter:Lcom/sigmob/wire/ProtoAdapter;

    iput-object p2, p0, Lcom/sigmob/wire/Message;->unknownFields:Lcom/sigmob/wire/okio/ByteString;

    return-void

    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unknownFields == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "adapter == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final adapter()Lcom/sigmob/wire/ProtoAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/Message;->adapter:Lcom/sigmob/wire/ProtoAdapter;

    return-object v0
.end method

.method public final encode(Lcom/sigmob/wire/okio/BufferedSink;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/Message;->adapter:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/sigmob/wire/ProtoAdapter;->encode(Lcom/sigmob/wire/okio/BufferedSink;Ljava/lang/Object;)V

    return-void
.end method

.method public final encode(Ljava/io/OutputStream;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/Message;->adapter:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/sigmob/wire/ProtoAdapter;->encode(Ljava/io/OutputStream;Ljava/lang/Object;)V

    return-void
.end method

.method public final encode()[B
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/Message;->adapter:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p0}, Lcom/sigmob/wire/ProtoAdapter;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract newBuilder()Lcom/sigmob/wire/Message$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/Message;->adapter:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p0}, Lcom/sigmob/wire/ProtoAdapter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unknownFields()Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/Message;->unknownFields:Lcom/sigmob/wire/okio/ByteString;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    :goto_7
    return-object v0
.end method

.method public final withoutUnknownFields()Lcom/sigmob/wire/Message;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sigmob/wire/Message;->newBuilder()Lcom/sigmob/wire/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/Message$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/Message$Builder;->build()Lcom/sigmob/wire/Message;

    move-result-object v0

    return-object v0
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/sigmob/wire/MessageSerializedForm;

    invoke-virtual {p0}, Lcom/sigmob/wire/Message;->encode()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/MessageSerializedForm;-><init>([BLjava/lang/Class;)V

    return-object v0
.end method
