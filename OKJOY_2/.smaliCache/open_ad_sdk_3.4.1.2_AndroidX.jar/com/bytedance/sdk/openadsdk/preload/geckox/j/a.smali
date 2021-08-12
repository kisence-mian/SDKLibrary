.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;
.super Ljava/lang/Object;
.source "GeckoPipeline.java"


# direct methods
.method private static a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
    .registers 2

    .line 335
    if-nez p0, :cond_4

    .line 336
    const/4 p0, 0x0

    return-object p0

    .line 338
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/b/b;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;",
            "Ljava/io/File;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/b;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/e;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 71
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->d()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const-class v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/e;

    .line 72
    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object v1

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const-class v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p4, v3, v6

    aput-object p5, v3, v2

    const/4 p4, 0x3

    aput-object p0, v3, p4

    const/4 p4, 0x4

    aput-object p6, v3, p4

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p4

    new-instance p5, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array p6, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 78
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->f(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v1

    aput-object v1, p6, v4

    const-class v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;

    .line 79
    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v1

    aput-object v1, p6, v6

    invoke-direct {p5, p6}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 78
    invoke-virtual {p4, p5}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p4

    .line 79
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p4

    .line 76
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p4

    const-class p5, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/f;

    invoke-virtual {p4, p5}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p4

    new-array p5, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->f()Ljava/util/concurrent/Executor;

    move-result-object p6

    aput-object p6, p5, v4

    invoke-virtual {p4, p5}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p4

    .line 83
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p4

    .line 82
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance p4, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;

    invoke-direct {p4}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;-><init>()V

    .line 87
    const-string p5, "branch_zip"

    invoke-virtual {p4, p5}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    move-result-object p5

    .line 88
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/h;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    move-result-object p5

    .line 89
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p6

    const-class v1, Lcom/bytedance/sdk/openadsdk/preload/b/f;

    invoke-virtual {p6, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p6

    invoke-virtual {p6}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/h;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    .line 91
    const-string p5, "branch_single_file"

    invoke-virtual {p4, p5}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    move-result-object p5

    .line 92
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/h;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    move-result-object p5

    .line 93
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p6

    const-class v1, Lcom/bytedance/sdk/openadsdk/preload/b/f;

    invoke-virtual {p6, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p6

    invoke-virtual {p6}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/h;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    .line 95
    const-string p5, "branch_myarchive_file"

    invoke-virtual {p4, p5}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    move-result-object p5

    .line 96
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->g(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/h;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    move-result-object p1

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p2

    const-class p3, Lcom/bytedance/sdk/openadsdk/preload/b/f;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/h;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    .line 99
    const-class p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a;

    invoke-virtual {p4, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/i;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->b(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/b/c;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/preload/b/e;)Lcom/bytedance/sdk/openadsdk/preload/b/b;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Lcom/bytedance/sdk/openadsdk/preload/b/h;
    .registers 7

    .line 153
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;-><init>()V

    .line 155
    const-string v1, "patch"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    move-result-object v1

    .line 156
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->c(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    .line 158
    const-string v1, "full"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    move-result-object v1

    .line 159
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->b(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    .line 161
    const-class p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;",
            "Ljava/io/File;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/b;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/b/h;",
            ">;"
        }
    .end annotation

    .line 327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
    .registers 2

    .line 348
    if-nez p0, :cond_4

    .line 349
    const/4 p0, 0x0

    return-object p0

    .line 351
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V

    return-object v0
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;",
            "Ljava/io/File;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/b;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/b/h;",
            ">;"
        }
    .end annotation

    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;",
            "Ljava/io/File;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/b;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/b/h;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/g;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/b;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v3, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 179
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->e(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v5

    aput-object v5, v3, v4

    const-class v5, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/b;

    .line 180
    invoke-virtual {p3, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v5

    aput-object v5, v3, p2

    invoke-direct {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 179
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 178
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/a;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v3, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 183
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v5

    aput-object v5, v3, v4

    const-class v5, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/a;

    .line 184
    invoke-virtual {p3, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v5

    aput-object v5, v3, p2

    invoke-direct {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 183
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 182
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/c;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v2, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 187
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->c(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object p0

    aput-object p0, v2, v4

    const-class p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/a/c;

    .line 188
    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object p0

    aput-object p0, v2, p2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 187
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p0

    .line 186
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-object v0
.end method

.method private static c(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
    .registers 2

    .line 363
    if-nez p0, :cond_4

    .line 364
    const/4 p0, 0x0

    return-object p0

    .line 366
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V

    return-object v0
.end method

.method private static c(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;",
            "Ljava/io/File;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/b;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/b/h;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/h;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/c;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v5, 0x1

    aput-object p1, v3, v5

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v3, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 209
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->e(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v6

    aput-object v6, v3, v4

    const-class v6, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/c;

    .line 210
    invoke-virtual {p3, v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-direct {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 209
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 208
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/b;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v3, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 213
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v6

    aput-object v6, v3, v4

    const-class v6, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/b;

    .line 214
    invoke-virtual {p3, v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-direct {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 213
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 212
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/d;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v1, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 217
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v3

    aput-object v3, v1, v4

    const-class v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/d;

    .line 218
    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 217
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 216
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/a;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v1, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 221
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v3

    aput-object v3, v1, v4

    const-class v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/a;

    .line 222
    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 221
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 220
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/e;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v1, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 225
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->c(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object p0

    aput-object p0, v1, v4

    const-class p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a/b/e;

    .line 226
    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 225
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p0

    .line 224
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-object v0
.end method

.method private static d(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
    .registers 2

    .line 380
    if-nez p0, :cond_4

    .line 381
    const/4 p0, 0x0

    return-object p0

    .line 383
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$4;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V

    return-object v0
.end method

.method private static d(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Lcom/bytedance/sdk/openadsdk/preload/b/h;
    .registers 7

    .line 233
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;-><init>()V

    .line 234
    const-string v1, "patch"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    move-result-object v1

    .line 235
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->f(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    .line 237
    const-string v1, "full"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    move-result-object v1

    .line 238
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->e(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    .line 240
    const-class p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
    .registers 2

    .line 392
    if-nez p0, :cond_4

    .line 393
    const/4 p0, 0x0

    return-object p0

    .line 395
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$5;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V

    return-object v0
.end method

.method private static e(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;",
            "Ljava/io/File;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/b;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/b/h;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/g;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/a/b;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v3, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 257
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->e(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v5

    aput-object v5, v3, v4

    const-class v5, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/a/b;

    .line 258
    invoke-virtual {p3, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v5

    aput-object v5, v3, p2

    invoke-direct {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 257
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 256
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/a/a;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v3, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 261
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v5

    aput-object v5, v3, v4

    const-class v5, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/a/a;

    .line 262
    invoke-virtual {p3, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v5

    aput-object v5, v3, p2

    invoke-direct {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 261
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 260
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/a/d;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v2, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 265
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v3

    aput-object v3, v2, v4

    const-class v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/a/d;

    .line 266
    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object p3

    aput-object p3, v2, p2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 265
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 264
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class p3, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/a/c;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance p3, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array p2, p2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 269
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->c(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object p0

    aput-object p0, p2, v4

    invoke-direct {p3, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p0

    .line 268
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-object v0
.end method

.method private static f(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
    .registers 2

    .line 441
    if-nez p0, :cond_4

    .line 442
    const/4 p0, 0x0

    return-object p0

    .line 444
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$6;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V

    return-object v0
.end method

.method private static f(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;",
            "Ljava/io/File;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/b;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/b/h;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/h;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/b/c;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v5, 0x1

    aput-object p1, v3, v5

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v3, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 288
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->e(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v6

    aput-object v6, v3, v4

    const-class v6, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/b/c;

    .line 289
    invoke-virtual {p3, v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-direct {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 288
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 287
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/b/b;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v3, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 292
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v6

    aput-object v6, v3, v4

    const-class v6, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/b/b;

    .line 293
    invoke-virtual {p3, v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-direct {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 292
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 291
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/b/d;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v1, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 296
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v3

    aput-object v3, v1, v4

    const-class v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/b/d;

    .line 297
    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 296
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 295
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/b/a;

    .line 300
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v1, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 301
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v3

    aput-object v3, v1, v4

    const-class v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/b/a;

    .line 302
    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 301
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 302
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 299
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/b/f;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array v1, v2, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 305
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v2

    aput-object v2, v1, v4

    const-class v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/b/f;

    .line 306
    invoke-virtual {p3, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object p3

    aput-object p3, v1, v5

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    .line 305
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 304
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const-class p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b/b/e;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;

    new-array p3, v5, [Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 309
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->c(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object p0

    aput-object p0, p3, v4

    invoke-direct {p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/b;-><init>([Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p0

    .line 308
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    return-object v0
.end method

.method private static g(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;)Lcom/bytedance/sdk/openadsdk/preload/b/h;
    .registers 6

    .line 317
    new-instance p3, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;

    invoke-direct {p3}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;-><init>()V

    .line 318
    const-string v0, "patch"

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    move-result-object v0

    .line 319
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->b(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    .line 321
    const-string v0, "full"

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    .line 323
    const-class p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/b;

    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p0

    return-object p0
.end method
