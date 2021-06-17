.class final Landroidx/test/espresso/remote/MethodInvocation$MethodKey;
.super Ljava/lang/Object;
.source "MethodInvocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/remote/MethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MethodKey"
.end annotation


# instance fields
.field private final methodName:Ljava/lang/String;

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
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "methodName",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->type:Ljava/lang/Class;

    .line 192
    iput-object p2, p0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->methodName:Ljava/lang/String;

    .line 193
    iput-object p3, p0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->parameterTypes:[Ljava/lang/Class;

    .line 194
    return-void
.end method

.method static synthetic access$000(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/Class;
    .registers 1

    .line 185
    iget-object p0, p0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->type:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)Ljava/lang/String;
    .registers 1

    .line 185
    iget-object p0, p0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->methodName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/test/espresso/remote/MethodInvocation$MethodKey;)[Ljava/lang/Class;
    .registers 1

    .line 185
    iget-object p0, p0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->parameterTypes:[Ljava/lang/Class;

    return-object p0
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

    .line 198
    if-ne p0, p1, :cond_4

    .line 199
    const/4 p1, 0x1

    return p1

    .line 201
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_33

    .line 205
    :cond_12
    check-cast p1, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;

    .line 207
    iget-object v1, p0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->type:Ljava/lang/Class;

    iget-object v2, p1, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 208
    return v0

    .line 210
    :cond_1f
    iget-object v1, p0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->methodName:Ljava/lang/String;

    iget-object v2, p1, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 211
    return v0

    .line 213
    :cond_2a
    iget-object v0, p0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->parameterTypes:[Ljava/lang/Class;

    iget-object p1, p1, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->parameterTypes:[Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 202
    :cond_33
    :goto_33
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 218
    iget-object v0, p0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 219
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->methodName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/test/espresso/remote/MethodInvocation$MethodKey;->parameterTypes:[Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    return v0
.end method
