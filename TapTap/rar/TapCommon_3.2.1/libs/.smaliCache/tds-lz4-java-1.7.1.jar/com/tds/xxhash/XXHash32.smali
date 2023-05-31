.class public abstract Lcom/tds/xxhash/XXHash32;
.super Ljava/lang/Object;
.source "XXHash32.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hash(Ljava/nio/ByteBuffer;I)I
    .registers 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "seed"    # I

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/tds/xxhash/XXHash32;->hash(Ljava/nio/ByteBuffer;III)I

    move-result v0

    .line 62
    .local v0, "hash":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 63
    return v0
.end method

.method public abstract hash(Ljava/nio/ByteBuffer;III)I
.end method

.method public abstract hash([BIII)I
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
