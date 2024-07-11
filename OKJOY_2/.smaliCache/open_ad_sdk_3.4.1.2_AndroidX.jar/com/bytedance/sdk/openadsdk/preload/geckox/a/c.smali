.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;
.super Ljava/lang/Object;
.source "ChannelCleanHelper.java"


# direct methods
.method private static a([Ljava/io/File;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 151
    nop

    .line 152
    nop

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    array-length v2, p0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move v7, v3

    move-wide v8, v4

    :goto_13
    const-string v10, "--updating"

    if-ge v7, v2, :cond_53

    aget-object v11, p0, v7

    .line 156
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 157
    invoke-virtual {v12, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_27

    .line 159
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    goto :goto_50

    .line 161
    :cond_27
    const-string v10, "--pending-delete"

    invoke-virtual {v12, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 163
    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;->a(Ljava/io/File;)V

    .line 164
    goto :goto_50

    .line 167
    :cond_33
    :try_start_33
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_37} :catch_4c

    .line 168
    cmp-long v10, v12, v8

    if-lez v10, :cond_48

    .line 169
    nop

    .line 170
    if-eqz v6, :cond_45

    .line 171
    :try_start_3e
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_45

    .line 177
    :catch_42
    move-exception v8

    move-wide v8, v12

    goto :goto_4d

    .line 173
    :cond_45
    :goto_45
    move-object v6, v11

    move-wide v8, v12

    goto :goto_4b

    .line 175
    :cond_48
    :try_start_48
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 180
    :goto_4b
    goto :goto_50

    .line 177
    :catch_4c
    move-exception v10

    .line 179
    :goto_4d
    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;->a(Ljava/io/File;)V

    .line 155
    :goto_50
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 183
    :cond_53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_57
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 186
    const/4 v7, -0x1

    if-ne v6, v7, :cond_72

    .line 187
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;->a(Ljava/io/File;)V

    .line 188
    goto :goto_57

    .line 190
    :cond_72
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 191
    nop

    .line 193
    :try_start_77
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_7b} :catch_7c

    .line 196
    goto :goto_81

    .line 194
    :catch_7c
    move-exception v2

    .line 195
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move-wide v6, v4

    .line 197
    :goto_81
    cmp-long v2, v6, v8

    if-gtz v2, :cond_88

    .line 198
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;->a(Ljava/io/File;)V

    .line 200
    :cond_88
    goto :goto_57

    .line 201
    :cond_89
    return-object v1
.end method

.method private static a(Ljava/io/File;)V
    .registers 3

    .line 205
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c$3;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;->execute(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 5

    .line 60
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "update.lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_56

    .line 62
    const/4 v1, 0x1

    if-nez v0, :cond_21

    .line 63
    return v1

    .line 66
    :cond_21
    :try_start_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "select.lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;

    move-result-object v2
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_51

    .line 70
    :try_start_3e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->c(Ljava/io/File;)Z
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_47

    goto :goto_48

    .line 71
    :catchall_47
    move-exception p0

    .line 73
    :goto_48
    :try_start_48
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_51

    .line 74
    nop

    .line 76
    :try_start_4c
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a()V

    .line 77
    nop

    .line 78
    return v1

    .line 76
    :catchall_51
    move-exception p0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a()V

    .line 77
    throw p0
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_56

    .line 79
    :catchall_56
    move-exception p0

    .line 80
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "update.lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;

    move-result-object v0

    .line 34
    if-nez v0, :cond_20

    .line 35
    return-void

    .line 38
    :cond_20
    :try_start_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "select.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;

    move-result-object v1
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_90

    .line 42
    :try_start_3d
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 43
    if-eqz p0, :cond_84

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_84

    .line 46
    :cond_4a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "using.lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c;->c(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_3d .. :try_end_7a} :catchall_8b

    .line 49
    goto :goto_4e

    .line 51
    :cond_7b
    :try_start_7b
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_90

    .line 52
    nop

    .line 54
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a()V

    .line 55
    nop

    .line 56
    return-void

    .line 51
    :cond_84
    :goto_84
    :try_start_84
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_90

    .line 54
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a()V

    .line 44
    return-void

    .line 51
    :catchall_8b
    move-exception p0

    :try_start_8c
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a()V

    .line 52
    throw p0
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_90

    .line 54
    :catchall_90
    move-exception p0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a()V

    .line 55
    throw p0
.end method

.method private static e(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c$2;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c$2;-><init>()V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    .line 143
    if-eqz p0, :cond_1d

    array-length v0, p0

    if-eqz v0, :cond_1d

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    goto :goto_1d

    .line 147
    :cond_18
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;->a([Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 145
    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method
