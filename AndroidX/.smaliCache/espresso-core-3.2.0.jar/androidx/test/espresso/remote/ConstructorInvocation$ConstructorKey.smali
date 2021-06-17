.class final Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;
.super Ljava/lang/Object;
.source "ConstructorInvocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/remote/ConstructorInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConstructorKey"
.end annotation


# instance fields
.field private final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;->type:Ljava/lang/Class;

    .line 164
    iput-object p2, p0, Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;->parameterTypes:[Ljava/lang/Class;

    .line 165
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 169
    if-ne p0, p1, :cond_4

    .line 170
    const/4 p1, 0x1

    return p1

    .line 172
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_28

    .line 176
    :cond_12
    check-cast p1, Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;

    .line 178
    iget-object v1, p0, Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;->type:Ljava/lang/Class;

    iget-object v2, p1, Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 179
    return v0

    .line 181
    :cond_1f
    iget-object v0, p0, Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;->parameterTypes:[Ljava/lang/Class;

    iget-object p1, p1, Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;->parameterTypes:[Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 173
    :cond_28
    :goto_28
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 186
    iget-object v0, p0, Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 187
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;->parameterTypes:[Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    return v0
.end method
