.class public final Lcom/tapjoy/internal/ap;
.super Lcom/tapjoy/internal/ao;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/as;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tapjoy/internal/ao<",
        "TE;>;",
        "Lcom/tapjoy/internal/as<",
        "TE;>;",
        "Ljava/io/Closeable;",
        "Ljava/io/Flushable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tapjoy/internal/as;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/as<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/as;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/as<",
            "TE;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/tapjoy/internal/ao;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    .line 25
    invoke-interface {p1}, Lcom/tapjoy/internal/as;->size()I

    move-result p1

    iput p1, p0, Lcom/tapjoy/internal/ap;->d:I

    .line 26
    if-nez p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    iput-boolean p1, p0, Lcom/tapjoy/internal/ap;->e:Z

    .line 27
    return-void
.end method

.method public static a(Lcom/tapjoy/internal/as;)Lcom/tapjoy/internal/ap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tapjoy/internal/as<",
            "TE;>;)",
            "Lcom/tapjoy/internal/ap<",
            "TE;>;"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/tapjoy/internal/ap;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ap;-><init>(Lcom/tapjoy/internal/as;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 111
    if-ltz p1, :cond_59

    iget v0, p0, Lcom/tapjoy/internal/ap;->d:I

    if-ge p1, v0, :cond_59

    .line 114
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 115
    if-ge p1, v0, :cond_15

    .line 116
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 117
    :cond_15
    iget-boolean v1, p0, Lcom/tapjoy/internal/ap;->e:Z

    if-eqz v1, :cond_21

    .line 118
    iget-object v1, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 119
    :cond_21
    iget-object v1, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    invoke-interface {v1}, Lcom/tapjoy/internal/as;->size()I

    move-result v1

    if-ge p1, v1, :cond_4b

    .line 120
    const/4 v1, 0x0

    .line 121
    nop

    :goto_2b
    if-gt v0, p1, :cond_3b

    .line 122
    iget-object v1, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    invoke-interface {v1, v0}, Lcom/tapjoy/internal/as;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 125
    :cond_3b
    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v2, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/2addr p1, v2

    iget v2, p0, Lcom/tapjoy/internal/ap;->d:I

    if-ne p1, v2, :cond_4a

    .line 126
    iput-boolean v0, p0, Lcom/tapjoy/internal/ap;->e:Z

    .line 128
    :cond_4a
    return-object v1

    .line 130
    :cond_4b
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    invoke-interface {v1}, Lcom/tapjoy/internal/as;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 112
    :cond_59
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_60

    :goto_5f
    throw p1

    :goto_60
    goto :goto_5f
.end method

.method public final b(I)V
    .registers 4

    .line 136
    if-lez p1, :cond_45

    iget v0, p0, Lcom/tapjoy/internal/ap;->d:I

    if-gt p1, v0, :cond_45

    .line 140
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 141
    if-gt p1, v0, :cond_19

    .line 142
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/ar;->a(Ljava/util/List;I)V

    .line 143
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/as;->b(I)V

    goto :goto_3f

    .line 145
    :cond_19
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 146
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/tapjoy/internal/ap;->d:I

    sub-int/2addr v0, v1

    .line 147
    if-gez v0, :cond_30

    .line 148
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/as;->b(I)V

    goto :goto_3f

    .line 150
    :cond_30
    iget-object v1, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    invoke-interface {v1}, Lcom/tapjoy/internal/as;->clear()V

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/internal/ap;->e:Z

    .line 152
    if-lez v0, :cond_3f

    .line 153
    iget-object v1, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    invoke-static {v1, v0}, Lcom/tapjoy/internal/ar;->a(Ljava/util/List;I)V

    .line 157
    :cond_3f
    :goto_3f
    iget v0, p0, Lcom/tapjoy/internal/ap;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tapjoy/internal/ap;->d:I

    .line 158
    return-void

    .line 137
    :cond_45
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final close()V
    .registers 3

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/ap;->flush()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_10

    .line 40
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_f

    .line 41
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void

    .line 44
    :cond_f
    return-void

    .line 40
    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_1e

    .line 41
    iget-object v1, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 43
    :cond_1e
    throw v0
.end method

.method protected final finalize()V
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/tapjoy/internal/ap;->close()V

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 33
    return-void
.end method

.method public final flush()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 49
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    iget-object v1, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/as;->addAll(Ljava/util/Collection;)Z

    .line 50
    iget-boolean v0, p0, Lcom/tapjoy/internal/ap;->e:Z

    if-eqz v0, :cond_1a

    .line 51
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_1a
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 55
    :cond_1f
    return-void
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/tapjoy/internal/ap;, "Lcom/tapjoy/internal/ap<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    iget v0, p0, Lcom/tapjoy/internal/ap;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/ap;->d:I

    .line 66
    return v1
.end method

.method public final peek()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 92
    iget v0, p0, Lcom/tapjoy/internal/ap;->d:I

    if-gtz v0, :cond_6

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 96
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 97
    :cond_15
    iget-boolean v0, p0, Lcom/tapjoy/internal/ap;->e:Z

    if-eqz v0, :cond_20

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 100
    :cond_20
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    invoke-interface {v0}, Lcom/tapjoy/internal/as;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    iget v1, p0, Lcom/tapjoy/internal/ap;->d:I

    iget-object v2, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_3f

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/internal/ap;->e:Z

    .line 105
    :cond_3f
    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 71
    iget v0, p0, Lcom/tapjoy/internal/ap;->d:I

    if-gtz v0, :cond_6

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_6
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    .line 76
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 77
    iget-object v2, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    invoke-interface {v2, v1}, Lcom/tapjoy/internal/as;->b(I)V

    goto :goto_39

    .line 78
    :cond_1b
    iget-boolean v0, p0, Lcom/tapjoy/internal/ap;->e:Z

    if-eqz v0, :cond_26

    .line 79
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    goto :goto_39

    .line 81
    :cond_26
    iget-object v0, p0, Lcom/tapjoy/internal/ap;->a:Lcom/tapjoy/internal/as;

    invoke-interface {v0}, Lcom/tapjoy/internal/as;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 82
    iget v2, p0, Lcom/tapjoy/internal/ap;->d:I

    iget-object v3, p0, Lcom/tapjoy/internal/ap;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/2addr v3, v1

    if-ne v2, v3, :cond_39

    .line 83
    iput-boolean v1, p0, Lcom/tapjoy/internal/ap;->e:Z

    .line 86
    :cond_39
    :goto_39
    iget v2, p0, Lcom/tapjoy/internal/ap;->d:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/tapjoy/internal/ap;->d:I

    .line 87
    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/tapjoy/internal/ap;->d:I

    return v0
.end method
