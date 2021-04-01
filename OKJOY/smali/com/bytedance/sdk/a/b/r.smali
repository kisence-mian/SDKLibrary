.class public final Lcom/bytedance/sdk/a/b/r;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/r$a;
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/r$a;)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/r;->a:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 209
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    :goto_3
    if-ltz v0, :cond_15

    .line 210
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 211
    add-int/lit8 v0, v0, 0x1

    aget-object v0, p0, v0

    .line 214
    :goto_11
    return-object v0

    .line 209
    :cond_12
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    .line 214
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/r;->a:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/r;->a:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/r;->a:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/a/b/r;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/bytedance/sdk/a/b/r$a;
    .registers 4

    .prologue
    .line 143
    new-instance v0, Lcom/bytedance/sdk/a/b/r$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/r$a;-><init>()V

    .line 144
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/r;->a:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 145
    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/r;->a:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v2

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_9
    if-ge v1, v2, :cond_27

    .line 115
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 116
    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    :cond_1d
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 120
    :cond_27
    if-eqz v0, :cond_2e

    .line 121
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 120
    :goto_2d
    return-object v0

    .line 122
    :cond_2e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 176
    instance-of v0, p1, Lcom/bytedance/sdk/a/b/r;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/bytedance/sdk/a/b/r;

    iget-object v0, p1, Lcom/bytedance/sdk/a/b/r;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/r;->a:[Ljava/lang/String;

    .line 177
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 176
    :goto_11
    return v0

    .line 177
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/r;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v2

    :goto_a
    if-ge v0, v2, :cond_2a

    .line 189
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 191
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
