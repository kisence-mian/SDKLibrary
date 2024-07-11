.class public Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;
    }
.end annotation


# instance fields
.field protected a:[B

.field b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

.field protected final c:Z

.field d:I

.field e:I

.field public final f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/util/zip/Inflater;

.field private final k:Z

.field private l:Lcom/kwad/sdk/pngencrypt/d;

.field private m:J

.field private n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIILjava/util/zip/Inflater;[B)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->WAITING_FOR_INPUT:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->m:J

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->n:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->d:I

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->e:I

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->f:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->c:Z

    iput p3, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->h:I

    const/4 p1, 0x1

    if-lt p3, p1, :cond_45

    if-lt p4, p3, :cond_45

    if-eqz p5, :cond_23

    iput-object p5, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->j:Ljava/util/zip/Inflater;

    const/4 p1, 0x0

    goto :goto_2a

    :cond_23
    new-instance p2, Ljava/util/zip/Inflater;

    invoke-direct {p2}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->j:Ljava/util/zip/Inflater;

    :goto_2a
    iput-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->k:Z

    if-eqz p6, :cond_32

    array-length p1, p6

    if-lt p1, p3, :cond_32

    goto :goto_34

    :cond_32
    new-array p6, p4, [B

    :goto_34
    iput-object p6, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->a:[B

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->i:I

    sget-object p1, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->WAITING_FOR_INPUT:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    :try_start_3c
    invoke-virtual {p0, p3}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->a(I)V
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p1

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->f()V

    throw p1

    :cond_45
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bad inital row len "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i()Z
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    sget-object v1, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->ROW_READY:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    if-ne v0, v1, :cond_10

    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v1, "invalid state"

    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_10
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->a:[B

    if-eqz v0, :cond_23

    array-length v0, v0

    iget v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->h:I

    if-ge v0, v2, :cond_29

    :cond_23
    iget v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->h:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->a:[B

    :cond_29
    iget v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->g:I

    iget v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->h:I

    if-ge v0, v2, :cond_5c

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->j:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_35} :catch_83

    if-nez v0, :cond_5c

    :try_start_37
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->j:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->a:[B

    iget v3, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->g:I

    iget v4, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->h:I

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0
    :try_end_44
    .catch Ljava/util/zip/DataFormatException; {:try_start_37 .. :try_end_44} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_44} :catch_83

    goto :goto_51

    :catch_45
    move-exception v0

    :try_start_46
    new-instance v2, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v3, "error decompressing zlib stream "

    invoke-direct {v2, v3, v0}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    move v0, v1

    :goto_51
    iget v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->g:I

    iget-wide v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->n:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->n:J

    :cond_5c
    iget v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->g:I

    iget v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->h:I

    if-ne v0, v2, :cond_65

    :goto_62
    sget-object v0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->ROW_READY:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    goto :goto_77

    :cond_65
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->j:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_70

    sget-object v0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->WAITING_FOR_INPUT:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    goto :goto_77

    :cond_70
    iget v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->g:I

    if-lez v0, :cond_75

    goto :goto_62

    :cond_75
    sget-object v0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->DONE:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    :goto_77
    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    sget-object v2, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->ROW_READY:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    if-ne v0, v2, :cond_82

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->a()V
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_80} :catch_83

    const/4 v0, 0x1

    return v0

    :cond_82
    return v1

    :catch_83
    move-exception v0

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->f()V

    throw v0
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->g:I

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->i:I

    if-ge p1, v2, :cond_11

    :goto_b
    iput v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->h:I

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->g()V

    goto :goto_27

    :cond_11
    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->j:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_b

    :cond_1a
    sget-object v0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->WAITING_FOR_INPUT:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->h:I

    iget-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->c:Z

    if-nez p1, :cond_27

    invoke-direct {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->i()Z

    :cond_27
    :goto_27
    return-void
.end method

.method protected a(Lcom/kwad/sdk/pngencrypt/d;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kwad/sdk/pngencrypt/d;->a()Lcom/kwad/sdk/pngencrypt/chunk/d;

    move-result-object v1

    iget-object v1, v1, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad chunk inside IdatSet, id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kwad/sdk/pngencrypt/d;->a()Lcom/kwad/sdk/pngencrypt/chunk/d;

    move-result-object v2

    iget-object v2, v2, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_3b
    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->l:Lcom/kwad/sdk/pngencrypt/d;

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->d:I

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->e:I

    if-ltz v1, :cond_4b

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/pngencrypt/d;->a(I)V

    :cond_4b
    return-void
.end method

.method protected a([BII)V
    .registers 8

    iget-wide v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->m:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->m:J

    const/4 v0, 0x1

    if-lt p3, v0, :cond_5e

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->isDone()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_5e

    :cond_12
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    sget-object v1, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->ROW_READY:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    if-ne v0, v1, :cond_22

    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v1, "this should only be called if waitingForMoreInput"

    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_22
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->j:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->j:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->j:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    iget-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->c:Z

    if-eqz p1, :cond_52

    :cond_3b
    :goto_3b
    invoke-direct {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->i()Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->a(I)V

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->d()Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->c()V

    goto :goto_3b

    :cond_52
    invoke-direct {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->i()Z

    :cond_55
    return-void

    :cond_56
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "should not happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    :goto_5e
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    return v2

    :cond_14
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object p1, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    invoke-virtual {p1}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->f()V

    :cond_2d
    return v1

    :cond_2e
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " while "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " set is not done"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    return v2
.end method

.method protected b()I
    .registers 3

    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected c()V
    .registers 1

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->isDone()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->isClosed()Z

    move-result v0

    return v0
.end method

.method public f()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->CLOSED:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    :cond_c
    iget-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->k:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->j:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->j:Ljava/util/zip/Inflater;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    move-exception v0

    :cond_1c
    :goto_1c
    return-void
.end method

.method public g()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->d()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;->DONE:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    :cond_a
    return-void
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->i:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idatSet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->l:Lcom/kwad/sdk/pngencrypt/d;

    invoke-virtual {v2}, Lcom/kwad/sdk/pngencrypt/d;->a()Lcom/kwad/sdk/pngencrypt/chunk/d;

    move-result-object v2

    iget-object v2, v2, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->b:Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
