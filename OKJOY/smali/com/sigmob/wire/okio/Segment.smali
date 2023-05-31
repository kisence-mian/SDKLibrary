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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iput p2, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iput p3, p0, Lcom/sigmob/wire/okio/Segment;->limit:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/wire/okio/Segment;->owner:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/wire/okio/Segment;->shared:Z

    return-void
.end method


# virtual methods
.method public compact()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    if-ne v0, p0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget-boolean v0, v0, Lcom/sigmob/wire/okio/Segment;->owner:Z

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget v0, p0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v0, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v2, v0, 0x2000

    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget-boolean v0, v0, Lcom/sigmob/wire/okio/Segment;->shared:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    :goto_24
    add-int/2addr v0, v2

    if-gt v1, v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Segment;->writeTo(Lcom/sigmob/wire/okio/Segment;I)V

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    invoke-static {p0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_10

    :cond_33
    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v0, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    goto :goto_24
.end method

.method public pop()Lcom/sigmob/wire/okio/Segment;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    if-eq v0, p0, :cond_18

    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    :goto_7
    iget-object v2, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget-object v3, p0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iput-object v3, v2, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object v2, p0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object v3, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object v3, v2, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object v1, p0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iput-object v1, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    return-object v0

    :cond_18
    move-object v0, v1

    goto :goto_7
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

    if-lez p1, :cond_9

    iget v0, p0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_f

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_f
    const/16 v0, 0x400

    if-lt p1, v0, :cond_28

    new-instance v0, Lcom/sigmob/wire/okio/Segment;

    invoke-direct {v0, p0}, Lcom/sigmob/wire/okio/Segment;-><init>(Lcom/sigmob/wire/okio/Segment;)V

    :goto_18
    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-object v1, p0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/okio/Segment;->push(Lcom/sigmob/wire/okio/Segment;)Lcom/sigmob/wire/okio/Segment;

    return-object v0

    :cond_28
    invoke-static {}, Lcom/sigmob/wire/okio/SegmentPool;->take()Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-object v3, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_18
.end method

.method public writeTo(Lcom/sigmob/wire/okio/Segment;I)V
    .registers 9

    const/16 v2, 0x2000

    const/4 v5, 0x0

    iget-boolean v0, p1, Lcom/sigmob/wire/okio/Segment;->owner:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    iget v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_41

    iget-boolean v0, p1, Lcom/sigmob/wire/okio/Segment;->shared:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1c
    iget v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iget v1, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2a
    iget-object v0, p1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v1, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v3, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iput v5, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    :cond_41
    iget-object v0, p0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v1, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v3, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v0, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sigmob/wire/okio/Segment;->pos:I

    return-void
.end method
