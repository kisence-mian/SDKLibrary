.class public Lcom/tds/common/utils/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkArgument(Z)V
    .registers 2
    .param p0, "expression"    # Z

    .line 13
    if-eqz p0, :cond_3

    .line 16
    return-void

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/Object;)V
    .registers 4
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;

    .line 19
    if-eqz p0, :cond_3

    .line 22
    return-void

    .line 20
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .registers 5
    .param p1, "valueName"    # Ljava/lang/String;
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

    .line 97
    .local p0, "value":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_22

    .line 100
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 103
    return-object p0

    .line 101
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 82
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 85
    return-object p0

    .line 83
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 89
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 92
    return-object p0

    .line 90
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkStringAndReplace(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "expression"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(ZTT;TT;)TT;"
        }
    .end annotation

    .line 75
    .local p1, "string":Ljava/lang/CharSequence;, "TT;"
    .local p2, "newString":Ljava/lang/CharSequence;, "TT;"
    if-nez p0, :cond_3

    .line 76
    return-object p1

    .line 78
    :cond_3
    return-object p2
.end method

.method public static checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 25
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 28
    return-object p0

    .line 26
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 33
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 36
    return-object p0

    .line 34
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkStringNotExceed(ILjava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "upperLimit"    # I
    .param p2, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(ITT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 63
    .local p1, "string":Ljava/lang/CharSequence;, "TT;"
    const-string v0, "string is empty"

    invoke-static {p1, v0}, Lcom/tds/common/utils/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 65
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v0, p0, :cond_c

    .line 66
    return-object p1

    .line 68
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkStringNotExceed128(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 47
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    const/16 v0, 0x80

    invoke-static {v0, p0, p1}, Lcom/tds/common/utils/Preconditions;->checkStringNotExceed(ILjava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static checkStringNotExceed256(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 41
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    const/16 v0, 0x100

    invoke-static {v0, p0, p1}, Lcom/tds/common/utils/Preconditions;->checkStringNotExceed(ILjava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static checkStringNotExceed64(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 52
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    const/16 v0, 0x40

    invoke-static {v0, p0, p1}, Lcom/tds/common/utils/Preconditions;->checkStringNotExceed(ILjava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static checkStringNotExceed8(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 57
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lcom/tds/common/utils/Preconditions;->checkStringNotExceed(ILjava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static isEmptyOrExceed(ILjava/lang/CharSequence;)Z
    .registers 4
    .param p0, "upperLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(ITT;)Z"
        }
    .end annotation

    .line 124
    .local p1, "string":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 125
    return v1

    .line 127
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static isEmptyOrExceed128(Ljava/lang/CharSequence;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)Z"
        }
    .end annotation

    .line 115
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    const/16 v0, 0x80

    invoke-static {v0, p0}, Lcom/tds/common/utils/Preconditions;->isEmptyOrExceed(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isEmptyOrExceed256(Ljava/lang/CharSequence;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)Z"
        }
    .end annotation

    .line 119
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    const/16 v0, 0x100

    invoke-static {v0, p0}, Lcom/tds/common/utils/Preconditions;->isEmptyOrExceed(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isEmptyOrExceed64(Ljava/lang/CharSequence;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)Z"
        }
    .end annotation

    .line 111
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    const/16 v0, 0x40

    invoke-static {v0, p0}, Lcom/tds/common/utils/Preconditions;->isEmptyOrExceed(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isEmptyOrExceed8(Ljava/lang/CharSequence;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)Z"
        }
    .end annotation

    .line 107
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    const/16 v0, 0x40

    invoke-static {v0, p0}, Lcom/tds/common/utils/Preconditions;->isEmptyOrExceed(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
