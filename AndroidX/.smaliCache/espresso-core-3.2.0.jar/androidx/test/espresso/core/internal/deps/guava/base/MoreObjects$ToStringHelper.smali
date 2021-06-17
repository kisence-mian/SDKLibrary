.class public final Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final holderHead:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

.field private holderTail:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;-><init>(Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$1;)V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->holderHead:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 143
    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->holderTail:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 148
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$1;)V
    .registers 3

    .line 140
    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;
    .registers 3

    .line 361
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;-><init>(Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$1;)V

    .line 362
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->holderTail:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->next:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->holderTail:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 363
    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 367
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder()Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 368
    iput-object p1, v0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 369
    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 373
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder()Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 374
    iput-object p2, v0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 375
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    .line 376
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;F)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 211
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;I)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 221
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;J)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 231
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 181
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 242
    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public omitNullValues()Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .registers 2

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 161
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 334
    iget-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 335
    nop

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->holderHead:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    iget-object v2, v2, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->next:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    const-string v3, ""

    .line 338
    :goto_1c
    if-eqz v2, :cond_5e

    .line 340
    iget-object v4, v2, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 341
    if-eqz v0, :cond_24

    if-eqz v4, :cond_5b

    .line 342
    :cond_24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    nop

    .line 345
    iget-object v3, v2, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v3, :cond_37

    .line 346
    iget-object v3, v2, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    :cond_37
    if-eqz v4, :cond_56

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 349
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 350
    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 351
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 352
    goto :goto_59

    .line 353
    :cond_56
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    :goto_59
    const-string v3, ", "

    :cond_5b
    iget-object v2, v2, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;->next:Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper$ValueHolder;

    goto :goto_1c

    .line 357
    :cond_5e
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
