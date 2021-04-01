.class public Lcom/bytedance/sdk/openadsdk/b/c;
.super Lcom/bytedance/sdk/openadsdk/b/b;
.source "TotalCountLruDiskFile.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/b;-><init>()V

    .line 14
    const/16 v0, 0xf

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/b/c;->a:I

    .line 15
    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/b/c;->b:I

    .line 18
    if-gtz p1, :cond_14

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max count must be positive number!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_14
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/b/c;->a:I

    .line 22
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/b/c;->b:I

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/c;->b(Ljava/util/List;)J

    move-result-wide v2

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 45
    invoke-virtual {p0, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/b/c;->a(JI)Z

    move-result v1

    .line 46
    if-nez v1, :cond_50

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    .line 50
    if-eqz v5, :cond_51

    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    sub-long/2addr v2, v6

    .line 53
    const-string v5, "TotalCountLruDiskFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cache file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is deleted because it exceeds cache limit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_4a
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Ljava/io/File;JI)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 63
    :cond_50
    return-void

    .line 55
    :cond_51
    const-string v5, "TotalCountLruDiskFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error deleting file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for trimming cache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a
.end method

.method protected a(JI)Z
    .registers 5

    .prologue
    .line 34
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/b/c;->a:I

    if-gt p3, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected a(Ljava/io/File;JI)Z
    .registers 6

    .prologue
    .line 39
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/b/c;->b:I

    if-gt p4, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
