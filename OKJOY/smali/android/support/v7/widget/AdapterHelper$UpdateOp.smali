.class Landroid/support/v7/widget/AdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateOp"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final MOVE:I = 0x8

.field static final POOL_SIZE:I = 0x1e

.field static final REMOVE:I = 0x2

.field static final UPDATE:I = 0x4


# instance fields
.field cmd:I

.field itemCount:I

.field payload:Ljava/lang/Object;

.field positionStart:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .registers 5
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput p1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 652
    iput p2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 653
    iput p3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 654
    iput-object p4, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 655
    return-void
.end method


# virtual methods
.method cmdToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 658
    iget v0, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_14

    .line 668
    :pswitch_5
    const-string v0, "??"

    :goto_7
    return-object v0

    .line 660
    :pswitch_8
    const-string v0, "add"

    goto :goto_7

    .line 662
    :pswitch_b
    const-string v0, "rm"

    goto :goto_7

    .line 664
    :pswitch_e
    const-string v0, "up"

    goto :goto_7

    .line 666
    :pswitch_11
    const-string v0, "mv"

    goto :goto_7

    .line 658
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_5
        :pswitch_e
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_11
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 680
    if-ne p0, p1, :cond_5

    .line 712
    :cond_4
    :goto_4
    return v1

    .line 683
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 684
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 687
    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 689
    .local v0, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v3, v4, :cond_1e

    move v1, v2

    .line 690
    goto :goto_4

    .line 692
    :cond_1e
    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3b

    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v3, v1, :cond_3b

    .line 694
    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v4, :cond_3b

    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_4

    .line 698
    :cond_3b
    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_43

    move v1, v2

    .line 699
    goto :goto_4

    .line 701
    :cond_43
    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v3, v4, :cond_4b

    move v1, v2

    .line 702
    goto :goto_4

    .line 704
    :cond_4b
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_5b

    .line 705
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 706
    goto :goto_4

    .line 708
    :cond_5b
    iget-object v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_4

    move v1, v2

    .line 709
    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 717
    iget v0, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 718
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int v0, v1, v2

    .line 719
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v0, v1, v2

    .line 720
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 674
    invoke-virtual {p0}, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmdToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
