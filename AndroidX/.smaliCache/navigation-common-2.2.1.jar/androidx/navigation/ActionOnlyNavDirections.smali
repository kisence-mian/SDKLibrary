.class public final Landroidx/navigation/ActionOnlyNavDirections;
.super Ljava/lang/Object;
.source "ActionOnlyNavDirections.java"

# interfaces
.implements Landroidx/navigation/NavDirections;


# instance fields
.field private final mActionId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "actionId"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroidx/navigation/ActionOnlyNavDirections;->mActionId:I

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 50
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 51
    return v0

    .line 54
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_21

    .line 58
    :cond_12
    move-object v2, p1

    check-cast v2, Landroidx/navigation/ActionOnlyNavDirections;

    .line 59
    .local v2, "that":Landroidx/navigation/ActionOnlyNavDirections;
    invoke-virtual {p0}, Landroidx/navigation/ActionOnlyNavDirections;->getActionId()I

    move-result v3

    invoke-virtual {v2}, Landroidx/navigation/ActionOnlyNavDirections;->getActionId()I

    move-result v4

    if-eq v3, v4, :cond_20

    .line 60
    return v1

    .line 63
    :cond_20
    return v0

    .line 55
    .end local v2    # "that":Landroidx/navigation/ActionOnlyNavDirections;
    :cond_21
    :goto_21
    return v1
.end method

.method public getActionId()I
    .registers 2

    .line 39
    iget v0, p0, Landroidx/navigation/ActionOnlyNavDirections;->mActionId:I

    return v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .registers 2

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 68
    const/4 v0, 0x1

    .line 69
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroidx/navigation/ActionOnlyNavDirections;->getActionId()I

    move-result v2

    add-int/2addr v1, v2

    .line 70
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionOnlyNavDirections(actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/navigation/ActionOnlyNavDirections;->getActionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method