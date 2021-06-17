.class public final Lcom/tapjoy/internal/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;I)V"
        }
    .end annotation

    .line 39
    if-ltz p1, :cond_21

    .line 42
    if-lez p1, :cond_20

    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 44
    if-gt p1, v0, :cond_1a

    .line 47
    if-ne p1, v0, :cond_10

    .line 48
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 50
    :cond_10
    :goto_10
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_20

    .line 51
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move p1, v0

    goto :goto_10

    .line 45
    :cond_1a
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 55
    :cond_20
    return-void

    .line 40
    :cond_21
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_28

    :goto_27
    throw p0

    :goto_28
    goto :goto_27
.end method
