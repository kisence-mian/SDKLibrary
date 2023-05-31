.class public Lcom/bytedance/sdk/openadsdk/b/d;
.super Lcom/bytedance/sdk/openadsdk/b/b;
.source "TotalSizeLruDiskUsage.java"


# instance fields
.field protected a:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/b;-><init>()V

    .line 21
    const-wide/32 v0, 0x5000000

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:J

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .registers 14
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
    const-wide/16 v10, 0x400

    .line 47
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/d;->b(Ljava/util/List;)J

    move-result-wide v2

    .line 48
    const-string v0, "TotalSizeLruDiskUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u7f13\u5b58\u6587\u4ef6\u7684\u603bsize\uff1a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v4, v2, v10

    div-long/2addr v4, v10

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 50
    invoke-virtual {p0, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/b/d;->a(JI)Z

    move-result v4

    .line 51
    if-eqz v4, :cond_ca

    .line 52
    const-string v1, "TotalSizeLruDiskUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0d\u6ee1\u8db3\u5220\u9664\u6761\u4ef6\uff0c\u4e0d\u6267\u884c\u5220\u9664\u64cd\u4f5c(true)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 57
    if-nez v4, :cond_103

    .line 58
    const-string v6, "TotalSizeLruDiskUsage"

    const-string v7, "\u6ee1\u8db3\u5220\u9664\u6761\u4ef6\u5f00\u59cb\u5220\u9664\u6587\u4ef6......................"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v8

    .line 61
    if-eqz v8, :cond_e4

    .line 62
    add-int/lit8 v1, v1, -0x1

    .line 63
    sub-long/2addr v2, v6

    .line 64
    const-string v6, "TotalSizeLruDiskUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5220\u9664 \u4e00\u4e2a Cache file \u5f53\u524d\u603b\u5927\u5c0ftotalSize\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    div-long v8, v2, v10

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_91
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/b/d;->a(Ljava/io/File;JI)Z

    move-result v0

    .line 69
    if-eqz v0, :cond_103

    .line 70
    const-string v1, "TotalSizeLruDiskUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f53\u524d\u603b\u5927\u5c0ftotalSize\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-long/2addr v2, v10

    div-long/2addr v2, v10

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB\uff0c\u6700\u5927\u503c\u5b58\u50a8\u4e0a\u9650maxSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:J

    div-long/2addr v4, v10

    div-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB\uff0c\u5f53\u524d\u6587\u4ef6\u7684\u603b\u5927\u5c0ftotalSize\u5df2\u5c0f\u4e8e\u7b49\u4e8emaxSize\u4e00\u534a\uff0c\u505c\u6b62\u5220\u9664\u64cd\u4f5c\uff1aminStopDeleteCondition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_c9
    return-void

    .line 54
    :cond_ca
    const-string v1, "TotalSizeLruDiskUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6ee1\u8db3\u5220\u9664\u6761\u4ef6\uff0c\u5f00\u59cb\u6267\u884c\u5220\u9664\u64cd\u4f5c(false)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49

    .line 66
    :cond_e4
    const-string v6, "TotalSizeLruDiskUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error deleting file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for trimming cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    :cond_103
    move v0, v1

    move v1, v0

    .line 74
    goto/16 :goto_4e
.end method

.method protected a(JI)Z
    .registers 7

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected a(Ljava/io/File;JI)Z
    .registers 9

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    cmp-long v0, p2, v0

    if-gez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
