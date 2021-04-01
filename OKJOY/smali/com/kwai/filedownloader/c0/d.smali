.class public Lcom/kwai/filedownloader/c0/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/kwai/filedownloader/c0/b;Ljava/util/List;)Lcom/kwai/filedownloader/c0/b;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/kwai/filedownloader/c0/b;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kwai/filedownloader/c0/b;"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/kwai/filedownloader/c0/b;->f()I

    move-result v2

    const-string v0, "Location"

    invoke-interface {p1, v0}, Lcom/kwai/filedownloader/c0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    move-object v2, v0

    move v0, v1

    :cond_15
    invoke-static {v3}, Lcom/kwai/filedownloader/c0/d;->a(I)Z

    move-result v5

    if-eqz v5, :cond_7c

    if-eqz v2, :cond_62

    sget-boolean v5, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v5, :cond_35

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    aput-object v4, v5, v8

    const-class v3, Lcom/kwai/filedownloader/c0/d;

    const-string v6, "redirect to %s with %d, %s"

    invoke-static {v3, v6, v5}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_35
    invoke-interface {p1}, Lcom/kwai/filedownloader/c0/b;->c()V

    invoke-static {p0, v2}, Lcom/kwai/filedownloader/c0/d;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/kwai/filedownloader/c0/b;

    move-result-object p1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/kwai/filedownloader/c0/b;->e()V

    invoke-interface {p1}, Lcom/kwai/filedownloader/c0/b;->f()I

    move-result v3

    const-string v2, "Location"

    invoke-interface {p1, v2}, Lcom/kwai/filedownloader/c0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0xa

    if-lt v0, v5, :cond_15

    new-instance v0, Ljava/lang/IllegalAccessException;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v4, v2, v1

    const-string v1, "redirect too many times! %s"

    invoke-static {v1, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    new-instance v0, Ljava/lang/IllegalAccessException;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-interface {p1}, Lcom/kwai/filedownloader/c0/b;->d()Ljava/util/Map;

    move-result-object v1

    aput-object v1, v2, v7

    const-string v1, "receive %d (redirect) but the location is null with response [%s]"

    invoke-static {v1, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    if-eqz p2, :cond_81

    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_81
    return-object p1
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Lcom/kwai/filedownloader/c0/b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kwai/filedownloader/c0/b;"
        }
    .end annotation

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/b;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/c0/b;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/kwai/filedownloader/c0/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_3e
    return-object v2
.end method

.method private static a(I)Z
    .registers 2

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_18

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_18

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_18

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_18

    const/16 v0, 0x133

    if-eq p0, v0, :cond_18

    const/16 v0, 0x134

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
