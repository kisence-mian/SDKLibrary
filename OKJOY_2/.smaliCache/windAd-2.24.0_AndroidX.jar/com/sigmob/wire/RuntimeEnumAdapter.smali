.class final Lcom/sigmob/wire/RuntimeEnumAdapter;
.super Lcom/sigmob/wire/EnumAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/sigmob/wire/WireEnum;",
        ">",
        "Lcom/sigmob/wire/EnumAdapter<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private fromValueMethod:Ljava/lang/reflect/Method;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sigmob/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/sigmob/wire/RuntimeEnumAdapter;->type:Ljava/lang/Class;

    return-void
.end method

.method private getFromValueMethod()Ljava/lang/reflect/Method;
    .registers 6

    iget-object v0, p0, Lcom/sigmob/wire/RuntimeEnumAdapter;->fromValueMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sigmob/wire/RuntimeEnumAdapter;->type:Ljava/lang/Class;

    const-string v1, "fromValue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/RuntimeEnumAdapter;->fromValueMethod:Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/sigmob/wire/RuntimeEnumAdapter;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/sigmob/wire/RuntimeEnumAdapter;

    iget-object p1, p1, Lcom/sigmob/wire/RuntimeEnumAdapter;->type:Ljava/lang/Class;

    iget-object v0, p0, Lcom/sigmob/wire/RuntimeEnumAdapter;->type:Ljava/lang/Class;

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method protected fromValue(I)Lcom/sigmob/wire/WireEnum;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/sigmob/wire/RuntimeEnumAdapter;->getFromValueMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/wire/WireEnum;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/RuntimeEnumAdapter;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
