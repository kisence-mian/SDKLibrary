.class public Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/TbsCoreLoadStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TbsSequenceQueue"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

.field private b:I

.field private c:I

.field private d:[I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/TbsCoreLoadStat;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->a:Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->b:I

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->b:I

    iput v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->c:I

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->c:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/smtt/sdk/TbsCoreLoadStat;II)V
    .registers 6

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->a:Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->b:I

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    iput p3, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->c:I

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->c:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    aput p2, v0, v1

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 5

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    iget v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->c:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_10

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "sequeue is full"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    iget v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    aput p1, v0, v1

    return-void
.end method

.method public clear()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    return-void
.end method

.method public element()I
    .registers 3

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->empty()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "sequeue is null"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    iget v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    aget v0, v0, v1

    return v0
.end method

.method public empty()Z
    .registers 3

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    iget v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public length()I
    .registers 3

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    iget v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()I
    .registers 5

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->empty()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "sequeue is null"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    iget v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    iget v2, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    const/4 v3, 0x0

    aput v3, v1, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->empty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    :goto_12
    iget v2, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    if-ge v0, v2, :cond_37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
