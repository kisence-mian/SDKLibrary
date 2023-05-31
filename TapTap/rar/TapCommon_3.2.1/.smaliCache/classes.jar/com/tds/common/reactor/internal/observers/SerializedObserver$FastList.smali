.class final Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;
.super Ljava/lang/Object;
.source "SerializedObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/observers/SerializedObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FastList"
.end annotation


# instance fields
.field array:[Ljava/lang/Object;

.field size:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 22
    iget v0, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;->size:I

    .line 23
    .local v0, "s":I
    iget-object v1, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    .line 24
    .local v1, "a":[Ljava/lang/Object;
    if-nez v1, :cond_d

    .line 25
    const/16 v2, 0x10

    new-array v1, v2, [Ljava/lang/Object;

    .line 26
    iput-object v1, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    goto :goto_1c

    .line 27
    :cond_d
    array-length v2, v1

    if-ne v0, v2, :cond_1c

    .line 28
    shr-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    .local v2, "array2":[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    move-object v1, v2

    .line 31
    iput-object v1, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    .line 33
    .end local v2    # "array2":[Ljava/lang/Object;
    :cond_1c
    :goto_1c
    aput-object p1, v1, v0

    .line 34
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/tds/common/reactor/internal/observers/SerializedObserver$FastList;->size:I

    .line 35
    return-void
.end method
