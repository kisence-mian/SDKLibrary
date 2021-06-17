.class public final Landroidx/navigation/NavArgument;
.super Ljava/lang/Object;
.source "NavArgument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavArgument$Builder;
    }
.end annotation


# instance fields
.field private final mDefaultValue:Ljava/lang/Object;

.field private final mDefaultValuePresent:Z

.field private final mIsNullable:Z

.field private final mType:Landroidx/navigation/NavType;


# direct methods
.method constructor <init>(Landroidx/navigation/NavType;ZLjava/lang/Object;Z)V
    .registers 8
    .param p2, "isNullable"    # Z
    .param p3, "defaultValue"    # Ljava/lang/Object;
    .param p4, "defaultValuePresent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavType<",
            "*>;Z",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 41
    .local p1, "type":Landroidx/navigation/NavType;, "Landroidx/navigation/NavType<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroidx/navigation/NavType;->isNullableAllowed()Z

    move-result v0

    if-nez v0, :cond_29

    if-nez p2, :cond_c

    goto :goto_29

    .line 43
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not allow nullable values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_29
    :goto_29
    if-nez p2, :cond_53

    if-eqz p4, :cond_53

    if-eqz p3, :cond_30

    goto :goto_53

    .line 47
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has null value but is not nullable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_53
    :goto_53
    iput-object p1, p0, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    .line 52
    iput-boolean p2, p0, Landroidx/navigation/NavArgument;->mIsNullable:Z

    .line 53
    iput-object p3, p0, Landroidx/navigation/NavArgument;->mDefaultValue:Ljava/lang/Object;

    .line 54
    iput-boolean p4, p0, Landroidx/navigation/NavArgument;->mDefaultValuePresent:Z

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 116
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_40

    .line 118
    :cond_12
    move-object v2, p1

    check-cast v2, Landroidx/navigation/NavArgument;

    .line 120
    .local v2, "that":Landroidx/navigation/NavArgument;
    iget-boolean v3, p0, Landroidx/navigation/NavArgument;->mIsNullable:Z

    iget-boolean v4, v2, Landroidx/navigation/NavArgument;->mIsNullable:Z

    if-eq v3, v4, :cond_1c

    return v1

    .line 121
    :cond_1c
    iget-boolean v3, p0, Landroidx/navigation/NavArgument;->mDefaultValuePresent:Z

    iget-boolean v4, v2, Landroidx/navigation/NavArgument;->mDefaultValuePresent:Z

    if-eq v3, v4, :cond_23

    return v1

    .line 122
    :cond_23
    iget-object v3, p0, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    iget-object v4, v2, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v1

    .line 123
    :cond_2e
    iget-object v3, p0, Landroidx/navigation/NavArgument;->mDefaultValue:Ljava/lang/Object;

    if-eqz v3, :cond_39

    iget-object v0, v2, Landroidx/navigation/NavArgument;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3f

    :cond_39
    iget-object v3, v2, Landroidx/navigation/NavArgument;->mDefaultValue:Ljava/lang/Object;

    if-nez v3, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    return v0

    .line 116
    .end local v2    # "that":Landroidx/navigation/NavArgument;
    :cond_40
    :goto_40
    return v1
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 2

    .line 91
    iget-object v0, p0, Landroidx/navigation/NavArgument;->mDefaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Landroidx/navigation/NavType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "*>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 129
    iget-object v0, p0, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 130
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/navigation/NavArgument;->mIsNullable:Z

    add-int/2addr v1, v2

    .line 131
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/navigation/NavArgument;->mDefaultValuePresent:Z

    add-int/2addr v0, v2

    .line 132
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/navigation/NavArgument;->mDefaultValue:Ljava/lang/Object;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    add-int/2addr v1, v2

    .line 133
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isDefaultValuePresent()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Landroidx/navigation/NavArgument;->mDefaultValuePresent:Z

    return v0
.end method

.method public isNullable()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Landroidx/navigation/NavArgument;->mIsNullable:Z

    return v0
.end method

.method putDefaultValue(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 96
    iget-boolean v0, p0, Landroidx/navigation/NavArgument;->mDefaultValuePresent:Z

    if-eqz v0, :cond_b

    .line 97
    iget-object v0, p0, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    iget-object v1, p0, Landroidx/navigation/NavArgument;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {v0, p2, p1, v1}, Landroidx/navigation/NavType;->put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    :cond_b
    return-void
.end method

.method verify(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 102
    iget-boolean v0, p0, Landroidx/navigation/NavArgument;->mIsNullable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_12

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 103
    return v1

    .line 106
    :cond_12
    :try_start_12
    iget-object v0, p0, Landroidx/navigation/NavArgument;->mType:Landroidx/navigation/NavType;

    invoke-virtual {v0, p2, p1}, Landroidx/navigation/NavType;->get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_17} :catch_1a

    .line 109
    nop

    .line 110
    const/4 v0, 0x1

    return v0

    .line 107
    :catch_1a
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1
.end method
