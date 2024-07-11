.class Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;
.super Lorg/junit/runner/manipulation/Filter;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShardingFilter"
.end annotation


# instance fields
.field private final numShards:I

.field private final shardIndex:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "numShards"    # I
    .param p2, "shardIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "numShards",
            "shardIndex"
        }
    .end annotation

    .line 321
    invoke-direct {p0}, Lorg/junit/runner/manipulation/Filter;-><init>()V

    .line 322
    iput p1, p0, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;->numShards:I

    .line 323
    iput p2, p0, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;->shardIndex:I

    .line 324
    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .registers 4

    .line 341
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;->shardIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;->numShards:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Shard %s of %s shards"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldRun(Lorg/junit/runner/Description;)Z
    .registers 5
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 328
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    .line 329
    invoke-virtual {p1}, Lorg/junit/runner/Description;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;->numShards:I

    rem-int/2addr v0, v2

    iget v2, p0, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;->shardIndex:I

    if-ne v0, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1

    .line 335
    :cond_19
    return v1
.end method
