.class public Lcom/bytedance/sdk/openadsdk/b/d;
.super Lcom/bytedance/sdk/openadsdk/b/b;
.source "TotalSizeLruDiskUsage.java"


# instance fields
.field protected a:J

.field private volatile b:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/b;-><init>()V

    .line 25
    const-wide/32 v0, 0x5000000

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:J

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->b:Z

    .line 27
    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 6

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/b;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:J

    .line 39
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_10

    .line 40
    const-wide/32 p1, 0x5000000

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:J

    .line 42
    :cond_10
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/b/d;->b:Z

    .line 43
    return-void
.end method

.method private c(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 71
    if-eqz p1, :cond_100

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_100

    .line 74
    :cond_a
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/d;->b(Ljava/util/List;)J

    move-result-wide v0

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u7f13\u5b58\u6587\u4ef6\u7684\u603bsize\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x400

    div-long v5, v0, v3

    div-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "MB"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "TotalSizeLruDiskUsage"

    invoke-static {v6, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 77
    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d;->a(JI)Z

    move-result v7

    .line 78
    if-eqz v7, :cond_52

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u4e0d\u6ee1\u8db3\u5220\u9664\u6761\u4ef6\uff0c\u4e0d\u6267\u884c\u5220\u9664\u64cd\u4f5c(true)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 81
    :cond_52
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6ee1\u8db3\u5220\u9664\u6761\u4ef6\uff0c\u5f00\u59cb\u6267\u884c\u5220\u9664\u64cd\u4f5c(false)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ff

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 84
    if-nez v7, :cond_fd

    .line 85
    const-string v9, "\u6ee1\u8db3\u5220\u9664\u6761\u4ef6\u5f00\u59cb\u5220\u9664\u6587\u4ef6......................"

    invoke-static {v6, v9}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 87
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v11

    .line 88
    if-eqz v11, :cond_aa

    .line 89
    add-int/lit8 v2, v2, -0x1

    .line 90
    sub-long/2addr v0, v9

    .line 91
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5220\u9664 \u4e00\u4e2a Cache file \u5f53\u524d\u603b\u5927\u5c0ftotalSize\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    div-long v10, v0, v3

    div-long/2addr v10, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c6

    .line 93
    :cond_aa
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error deleting file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for trimming cache"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_c6
    invoke-virtual {p0, v8, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d;->a(Ljava/io/File;JI)Z

    move-result v8

    .line 96
    if-eqz v8, :cond_fd

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u603b\u5927\u5c0ftotalSize\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    div-long/2addr v0, v3

    div-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "MB\uff0c\u6700\u5927\u503c\u5b58\u50a8\u4e0a\u9650maxSize="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:J

    div-long/2addr v0, v3

    div-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "MB\uff0c\u5f53\u524d\u6587\u4ef6\u7684\u603b\u5927\u5c0ftotalSize\u5df2\u5c0f\u4e8e\u7b49\u4e8emaxSize\u4e00\u534a\uff0c\u505c\u6b62\u5220\u9664\u64cd\u4f5c\uff1aminStopDeleteCondition="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    goto :goto_ff

    .line 101
    :cond_fd
    goto/16 :goto_6c

    .line 102
    :cond_ff
    :goto_ff
    return-void

    .line 72
    :cond_100
    :goto_100
    return-void
.end method

.method private d(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 106
    if-eqz p1, :cond_119

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_119

    .line 109
    :cond_a
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/d;->b(Ljava/util/List;)J

    move-result-wide v0

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 111
    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d;->a(JI)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_117

    .line 112
    const-string v3, "splashLoadAd"

    if-eqz v2, :cond_31

    .line 113
    :try_start_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0d\u6ee1\u8db3\u5220\u9664\u6761\u4ef6\uff0c\u4e0d\u6267\u884c\u5220\u9664\u64cd\u4f5c(true)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 118
    :cond_31
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 120
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    goto :goto_3a

    .line 122
    :cond_52
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_116

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 123
    if-nez v4, :cond_69

    .line 124
    goto :goto_5a

    .line 126
    :cond_69
    if-nez v2, :cond_114

    .line 127
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 128
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lruDeleteFile deleting fileTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 130
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 131
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v7

    .line 132
    const/high16 v8, 0x44800000    # 1024.0f

    if-eqz v7, :cond_bf

    .line 133
    nop

    .line 134
    sub-long/2addr v0, v5

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5220\u9664 \u4e00\u4e2a Cache file \u5f53\u524d\u603b\u5927\u5c0ftotalSize\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    long-to-float v5, v0

    div-float/2addr v5, v8

    div-float/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_db

    .line 137
    :cond_bf
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error deleting file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for trimming cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_db
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/b/d;->a(J)Z

    move-result v4

    .line 140
    if-eqz v4, :cond_114

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u603b\u5927\u5c0ftotalSize\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    long-to-float v0, v0

    div-float/2addr v0, v8

    div-float/2addr v0, v8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "MB\uff0c\u6700\u5927\u503c\u5b58\u50a8\u4e0a\u9650maxSize="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:J

    long-to-float v0, v0

    div-float/2addr v0, v8

    div-float/2addr v0, v8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "MB\uff0c\u5f53\u524d\u6587\u4ef6\u7684\u603b\u5927\u5c0ftotalSize\u5df2\u5c0f\u4e8e\u7b49\u4e8emaxSize\u768480%\uff0c\u505c\u6b62\u5220\u9664\u64cd\u4f5c\uff1aminStopDeleteCondition="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_113
    .catchall {:try_start_1a .. :try_end_113} :catchall_117

    .line 142
    goto :goto_116

    .line 145
    :cond_114
    goto/16 :goto_5a

    .line 148
    :cond_116
    :goto_116
    goto :goto_118

    .line 146
    :catchall_117
    move-exception p1

    .line 149
    :goto_118
    return-void

    .line 107
    :cond_119
    :goto_119
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->b:Z

    if-eqz v0, :cond_8

    .line 63
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/d;->d(Ljava/util/List;)V

    goto :goto_b

    .line 65
    :cond_8
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/d;->c(Ljava/util/List;)V

    .line 68
    :goto_b
    return-void
.end method

.method protected a(J)Z
    .registers 7

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7f13\u5b58\u7684\u6700\u5927\u5185\u5b58 maxSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6700\u5c0f\u5185\u5b58 minSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/32 v1, 0x1200000

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "splashLoadAd"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    cmp-long p1, p1, v1

    if-gtz p1, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    return p1
.end method

.method protected a(JI)Z
    .registers 6

    .line 47
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method protected a(Ljava/io/File;JI)Z
    .registers 9

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u7f13\u5b58\u7684\u6700\u5927\u5185\u5b58 maxSize "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "splashLoadAd"

    invoke-static {p4, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/b/d;->a:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    cmp-long p1, p2, v0

    if-gez p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    return p1
.end method
