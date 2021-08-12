.class public Lcom/kwai/filedownloader/a/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/kwai/filedownloader/a/b;Ljava/util/List;)Lcom/kwai/filedownloader/a/b;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/kwai/filedownloader/a/b;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kwai/filedownloader/a/b;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/kwai/filedownloader/a/b;->e()I

    move-result v0

    const-string v1, "Location"

    invoke-interface {p1, v1}, Lcom/kwai/filedownloader/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    invoke-static {v0}, Lcom/kwai/filedownloader/a/d;->a(I)Z

    move-result v6

    if-eqz v6, :cond_78

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_5e

    sget-boolean v8, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v8, :cond_33

    const-class v8, Lcom/kwai/filedownloader/a/d;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v7

    aput-object v3, v9, v6

    const-string v0, "redirect to %s with %d, %s"

    invoke-static {v8, v0, v9}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    invoke-interface {p1}, Lcom/kwai/filedownloader/a/b;->f()V

    invoke-static {p0, v2}, Lcom/kwai/filedownloader/a/d;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/kwai/filedownloader/a/b;

    move-result-object p1

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/kwai/filedownloader/a/b;->d()V

    invoke-interface {p1}, Lcom/kwai/filedownloader/a/b;->e()I

    move-result v0

    invoke-interface {p1, v1}, Lcom/kwai/filedownloader/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v5, v7

    const/16 v6, 0xa

    if-ge v5, v6, :cond_4e

    goto :goto_11

    :cond_4e
    new-instance p0, Ljava/lang/IllegalAccessException;

    new-array p1, v7, [Ljava/lang/Object;

    aput-object v3, p1, v4

    const-string p2, "redirect too many times! %s"

    invoke-static {p2, p1}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    new-instance p0, Ljava/lang/IllegalAccessException;

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-interface {p1}, Lcom/kwai/filedownloader/a/b;->c()Ljava/util/Map;

    move-result-object p1

    aput-object p1, p2, v7

    const-string p1, "receive %d (redirect) but the location is null with response [%s]"

    invoke-static {p1, p2}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_78
    if-eqz p2, :cond_7d

    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7d
    return-object p1
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Lcom/kwai/filedownloader/a/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kwai/filedownloader/a/b;"
        }
    .end annotation

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/b;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/a/b;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcom/kwai/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_3e
    return-object p1
.end method

.method private static a(I)Z
    .registers 2

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x133

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x134

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method
