.class public abstract Lcom/tds/xxhash/StreamingXXHash32;
.super Ljava/lang/Object;
.source "StreamingXXHash32.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/xxhash/StreamingXXHash32$Factory;
    }
.end annotation


# instance fields
.field final seed:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "seed"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/tds/xxhash/StreamingXXHash32;->seed:I

    .line 54
    return-void
.end method


# virtual methods
.method public final asChecksum()Ljava/util/zip/Checksum;
    .registers 2

    .line 100
    new-instance v0, Lcom/tds/xxhash/StreamingXXHash32$1;

    invoke-direct {v0, p0}, Lcom/tds/xxhash/StreamingXXHash32$1;-><init>(Lcom/tds/xxhash/StreamingXXHash32;)V

    return-object v0
.end method

.method public close()V
    .registers 1

    .line 86
    return-void
.end method

.method public abstract getValue()I
.end method

.method public abstract reset()V
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(seed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tds/xxhash/StreamingXXHash32;->seed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract update([BII)V
.end method
