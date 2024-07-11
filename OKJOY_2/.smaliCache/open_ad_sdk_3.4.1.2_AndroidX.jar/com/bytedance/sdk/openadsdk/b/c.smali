.class public Lcom/bytedance/sdk/openadsdk/b/c;
.super Lcom/bytedance/sdk/openadsdk/b/b;
.source "TotalCountLruDiskFile.java"


# instance fields
.field private a:I

.field private b:I

.field private volatile c:Z


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/b;-><init>()V

    .line 16
    const/16 v0, 0xf

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/b/c;->a:I

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/b/c;->b:I

    .line 21
    if-lez p1, :cond_11

    .line 24
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/b/c;->a:I

    .line 25
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/b/c;->b:I

    .line 26
    return-void

    .line 22
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max count must be positive number!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IIZ)V
    .registers 5

    .line 28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/b;-><init>()V

    .line 16
    const/16 v0, 0xf

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/b/c;->a:I

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/b/c;->b:I

    .line 29
    if-lez p1, :cond_13

    .line 32
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/b/c;->a:I

    .line 33
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/b/c;->b:I

    .line 34
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/b/c;->c:Z

    .line 35
    return-void

    .line 30
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max count must be positive number!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/c;->b(Ljava/util/List;)J

    move-result-wide v0

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 66
    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/c;->a(JI)Z

    move-result v3

    .line 67
    if-nez v3, :cond_6e

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 69
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    .line 71
    const-string v7, "TotalCountLruDiskFile"

    if-eqz v6, :cond_4a

    .line 72
    add-int/lit8 v2, v2, -0x1

    .line 73
    sub-long/2addr v0, v4

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is deleted because it exceeds cache limit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 76
    :cond_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error deleting file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for trimming cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_66
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Ljava/io/File;JI)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 80
    goto :goto_6e

    .line 82
    :cond_6d
    goto :goto_12

    .line 84
    :cond_6e
    :goto_6e
    return-void
.end method

.method private d(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 88
    if-eqz p1, :cond_10b

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_10b

    .line 91
    :cond_a
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/c;->b(Ljava/util/List;)J

    move-result-wide v0

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 93
    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/c;->a(JI)Z

    move-result v3
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_109

    .line 94
    const-string v4, "splashLoadAd"

    if-eqz v3, :cond_31

    .line 95
    :try_start_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0d\u6ee1\u8db3\u5220\u9664\u6761\u4ef6\uff0c\u4e0d\u6267\u884c\u5220\u9664\u64cd\u4f5c(true)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 100
    :cond_31
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 102
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    goto :goto_3a

    .line 104
    :cond_52
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_108

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 105
    if-nez v5, :cond_69

    .line 106
    goto :goto_5a

    .line 108
    :cond_69
    if-nez v3, :cond_106

    .line 109
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LRUDeleteFile deleting fileTime "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 112
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 113
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v8

    .line 114
    if-eqz v8, :cond_b5

    .line 115
    add-int/lit8 v2, v2, -0x1

    .line 116
    sub-long/2addr v0, v6

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5220\u9664 \u4e00\u4e2a Cache file \u5f53\u524d\u603b\u4e2a\u6570\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    .line 119
    :cond_b5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error deleting file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for trimming cache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_d1
    invoke-virtual {p0, v5, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Ljava/io/File;JI)Z

    move-result v5

    .line 122
    if-eqz v5, :cond_106

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u505c\u6b62\u5220\u9664 \u5f53\u524d\u603b\u4e2a\u6570 totalCount\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u6700\u5927\u503c\u5b58\u50a8\u4e0a\u9650\u4e2a\u6570 maxCount "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/b/c;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u6700\u5c0f\u4e2a\u6570 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/b/c;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_105
    .catchall {:try_start_1a .. :try_end_105} :catchall_109

    .line 125
    goto :goto_108

    .line 128
    :cond_106
    goto/16 :goto_5a

    .line 131
    :cond_108
    :goto_108
    goto :goto_10a

    .line 129
    :catchall_109
    move-exception p1

    .line 132
    :goto_10a
    return-void

    .line 89
    :cond_10b
    :goto_10b
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 55
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/c;->c:Z

    if-eqz v0, :cond_b

    .line 56
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/c;->d(Ljava/util/List;)V

    .line 57
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/b/c;->c:Z

    goto :goto_e

    .line 59
    :cond_b
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/c;->c(Ljava/util/List;)V

    .line 61
    :goto_e
    return-void
.end method

.method protected a(JI)Z
    .registers 4

    .line 46
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/b/c;->a:I

    if-gt p3, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method protected a(Ljava/io/File;JI)Z
    .registers 5

    .line 51
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/b/c;->b:I

    if-gt p4, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method
