.class final Lcom/tendcloud/tenddata/game/bx;
.super Ljava/lang/Object;
.source "td"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:I

.field private d:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/bx;->d:Z

    .line 33
    if-eqz p1, :cond_2a

    .line 36
    if-eqz p2, :cond_22

    .line 40
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bx;->a:Ljava/lang/Object;

    .line 41
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/reflect/Method;

    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    nop

    .line 47
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->hashCode()I

    move-result p2

    add-int/lit8 p2, p2, 0x1f

    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/tendcloud/tenddata/game/bx;->c:I

    .line 48
    return-void

    .line 37
    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "EventHandler method cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_2a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "EventHandler target cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/bx;->d:Z

    return v0
.end method

.method public b()V
    .registers 2

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/bx;->d:Z

    .line 61
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 93
    return v0

    .line 96
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 97
    return v1

    .line 100
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 101
    return v1

    .line 104
    :cond_13
    check-cast p1, Lcom/tendcloud/tenddata/game/bx;

    .line 106
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bx;->a:Ljava/lang/Object;

    iget-object p1, p1, Lcom/tendcloud/tenddata/game/bx;->a:Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    if-ne v2, p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    .line 107
    :catchall_28
    move-exception p1

    .line 108
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 110
    return v1
.end method

.method public handleEvent(Ljava/lang/Object;)V
    .registers 7

    .line 72
    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/bx;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_24

    .line 73
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/bx;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been invalidated and can no longer handle events."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForInternal([Ljava/lang/String;)V

    .line 76
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/bx;->a:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_30

    .line 79
    goto :goto_31

    .line 77
    :catchall_30
    move-exception p1

    .line 80
    :goto_31
    return-void
.end method

.method public hashCode()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/tendcloud/tenddata/game/bx;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EventHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
