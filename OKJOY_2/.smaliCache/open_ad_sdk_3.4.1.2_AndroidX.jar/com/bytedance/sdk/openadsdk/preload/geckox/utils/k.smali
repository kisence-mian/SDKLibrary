.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/k;
.super Ljava/lang/Object;
.source "ResVersionUtils.java"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/Long;
    .registers 8

    .line 58
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 59
    return-object v0

    .line 61
    :cond_4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/k$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/k$1;-><init>()V

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    .line 67
    if-eqz p0, :cond_41

    array-length v1, p0

    if-nez v1, :cond_13

    goto :goto_41

    .line 71
    :cond_13
    nop

    .line 72
    array-length v1, p0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_40

    aget-object v3, p0, v2

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 76
    :try_start_1e
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_26} :catch_3b

    .line 79
    nop

    .line 80
    if-nez v0, :cond_2e

    .line 81
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3d

    .line 82
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-lez v5, :cond_3d

    .line 83
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3d

    .line 77
    :catch_3b
    move-exception v3

    .line 78
    nop

    .line 72
    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 86
    :cond_40
    return-object v0

    .line 68
    :cond_41
    :goto_41
    return-object v0
.end method

.method public static b(Ljava/io/File;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 91
    return-object v0

    .line 93
    :cond_4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/k$2;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/k$2;-><init>()V

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    .line 99
    if-eqz p0, :cond_37

    array-length v1, p0

    if-nez v1, :cond_13

    goto :goto_37

    .line 103
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_36

    aget-object v3, p0, v2

    .line 106
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 107
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_31} :catch_32

    .line 109
    goto :goto_33

    .line 108
    :catch_32
    move-exception v3

    .line 104
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 111
    :cond_36
    return-object v0

    .line 100
    :cond_37
    :goto_37
    return-object v0
.end method
