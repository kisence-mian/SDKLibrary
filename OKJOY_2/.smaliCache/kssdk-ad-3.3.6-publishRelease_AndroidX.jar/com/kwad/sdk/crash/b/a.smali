.class public Lcom/kwad/sdk/crash/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Throwable;)Z
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1a

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    :goto_1a
    invoke-static {v0}, Lcom/kwad/sdk/crash/b/a;->a(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-static {v0}, Lcom/kwad/sdk/crash/b/a;->a([Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static a([Ljava/lang/StackTraceElement;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_44

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_44

    :cond_7
    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/crash/d;->b()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    array-length v2, v1

    if-nez v2, :cond_15

    goto :goto_42

    :cond_15
    array-length v2, v1

    move v3, v0

    move v4, v3

    :goto_18
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    invoke-static {p0, v4}, Lcom/kwad/sdk/crash/b/a;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_26

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_26
    :goto_26
    if-eqz v4, :cond_40

    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/crash/d;->c()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_32
    if-ge v3, v2, :cond_40

    aget-object v5, v1, v3

    invoke-static {p0, v5}, Lcom/kwad/sdk/crash/b/a;->b([Ljava/lang/StackTraceElement;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    goto :goto_41

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_40
    move v0, v4

    :goto_41
    return v0

    :cond_42
    :goto_42
    const/4 p0, 0x1

    return p0

    :cond_44
    :goto_44
    return v0
.end method

.method private static a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Z
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_3e

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CrashFilter filterTags element className="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " filter tag="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExceptionCollector"

    invoke-static {p1, p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3e
    return v1
.end method

.method private static b([Ljava/lang/StackTraceElement;Ljava/lang/String;)Z
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_3e

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CrashFilter excludeTags element className="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " exclude tag="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExceptionCollector"

    invoke-static {p1, p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3e
    return v1
.end method
