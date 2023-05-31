.class Lcom/ksad/lottie/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v4/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ksad/lottie/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/util/Pair;Landroid/support/v4/util/Pair;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    cmpl-float v0, v1, v0

    if-lez v0, :cond_1c

    const/4 v0, -0x1

    goto :goto_15

    :cond_1c
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/support/v4/util/Pair;

    check-cast p2, Landroid/support/v4/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/l$a;->a(Landroid/support/v4/util/Pair;Landroid/support/v4/util/Pair;)I

    move-result v0

    return v0
.end method
