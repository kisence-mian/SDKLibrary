.class final Lcom/sigmob/wire/okio/Segment;
.super Ljava/lang/Object;


# static fields
.field static final SHARE_MINIMUM:I = 0x400

.field static final SIZE:I = 0x2000


# instance fields
.field final data:[B

.field limit:I

.field next:Lcom/sigmob/wire/okio/Segment;

.field owner:Z

.field pos:I

.field prev:Lcom/sigmob/wire/okio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sigmob/wire/okio/Segment;->data:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/wire/okio/Segment;->owner:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/wire/okio/Segment;->shared:Z

    return-void
.end method

.method constructor <init>(Lcom/sigmob/wire/okio/Segment;)V
    .registers 5

    iget-object v0, p1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v1, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v2, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/wire/okio/Segment;-><init>([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sigmob/wire/okio/Segment;->shared:Z

    return-void
.end method

.method constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iput p2, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iput p3, p0, Lcom/sigmob/wire/okio/Segment;->limit:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/wire/okio/Segment;->owner:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/wire/okio/Segment;->shared:Z

    return-void
.end method


# virtual methods
.method public compact()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    if-eq v0, p0, :cond_28

    iget-boolean v1, v0, Lcom/sigmob/wire/okio/Segment;->owner:Z

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget v1, p0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    iget-boolean v3, v0, Lcom/sigmob/wire/okio/Segment;->shared:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_1a

    :cond_18
    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    :goto_1a
    add-int/2addr v2, v3

    if-le v1, v2, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Segment;->writeTo(Lcom/sigmob/wire/okio/Segment;I)V

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    invoke-static {p0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    return-void

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public pop()Lcom/sigmob/wire/okio/Segment;
    .registers 5

    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_7

    move-object v2, v0

    goto :goto_8

    :cond_7
    move-object v2, v1

    :goto_8
    iget-object v3, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object v0, v3, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iput-object v3, v0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object v1, p0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iput-object v1, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    return-object v2
.end method

.method public push(Lcom/sigmob/wire/okio/Segment;)Lcom/sigmob/wire/okio/Segment;
    .registers 3

    iput-object p0, p1, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iput-object v0, p1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iput-object p1, v0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object p1, p0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    return-object p1
.end method

.method public split(I)Lcom/sigmob/wire/okio/Segment;
    .registers 7

    if-lez p1, :cond_31

    iget v0, p0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_31

    const/16 v0, 0x400

    if-lt p1, v0, :cond_13

    new-instance v0, Lcom/sigmob/wire/okio/Segment;

    invoke-direct {v0, p0}, Lcom/sigmob/wire/okio/Segment;-><init>(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_21

    :cond_13
    invoke-static {}, Lcom/sigmob/wire/okio/SegmentPool;->take()Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-object v3, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_21
    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-object p1, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/okio/Segment;->push(Lcom/sigmob/wire/okio/Segment;)Lcom/sigmob/wire/okio/Segment;

    return-object v0

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public writeTo(Lcom/sigmob/wire/okio/Segment;I)V
    .registers 7

    iget-boolean v0, p1, Lcom/sigmob/wire/okio/Segment;->owner:Z

    if-eqz v0, :cond_4a

    iget v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_34

    iget-boolean v1, p1, Lcom/sigmob/wire/okio/Segment;->shared:Z

    if-nez v1, :cond_2e

    add-int v1, v0, p2

    iget v3, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_28

    iget-object v1, p1, Lcom/sigmob/wire/okio/Segment;->data:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iput v2, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    goto :goto_34

    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v1, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v3, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget p1, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    return-void

    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
