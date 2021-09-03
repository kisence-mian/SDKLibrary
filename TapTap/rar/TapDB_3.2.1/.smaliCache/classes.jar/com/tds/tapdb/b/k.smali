.class public Lcom/tds/tapdb/b/k;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(ITT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string v0, "string is empty"

    invoke-static {p1, v0}, Lcom/tds/tapdb/b/k;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v0, p0, :cond_c

    return-object p1

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(ZTT;TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    return-object p2
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_22

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is empty"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must not be null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Z)V
    .registers 1

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a(ZLjava/lang/Object;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(ILjava/lang/CharSequence;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(ITT;)Z"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-le p1, p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static b(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {v0, p0, p1}, Lcom/tds/tapdb/b/k;->a(ILjava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/CharSequence;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)Z"
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {v0, p0}, Lcom/tds/tapdb/b/k;->a(ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x100

    invoke-static {v0, p0, p1}, Lcom/tds/tapdb/b/k;->a(ILjava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/CharSequence;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)Z"
        }
    .end annotation

    const/16 v0, 0x100

    invoke-static {v0, p0}, Lcom/tds/tapdb/b/k;->a(ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x40

    invoke-static {v0, p0, p1}, Lcom/tds/tapdb/b/k;->a(ILjava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/CharSequence;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)Z"
        }
    .end annotation

    const/16 v0, 0x40

    invoke-static {v0, p0}, Lcom/tds/tapdb/b/k;->a(ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lcom/tds/tapdb/b/k;->a(ILjava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/CharSequence;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)Z"
        }
    .end annotation

    const/16 v0, 0x40

    invoke-static {v0, p0}, Lcom/tds/tapdb/b/k;->a(ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
