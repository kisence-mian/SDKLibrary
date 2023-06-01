.class Lcom/ssjj/fnsdk/core/stat/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/stat/k;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/stat/k;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/m;->a:Lcom/ssjj/fnsdk/core/stat/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ssjj/fnsdk/core/stat/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
