.class Lcom/pgl/sys/ces/a/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pgl/sys/ces/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/net/wifi/ScanResult;

    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    check-cast p2, Landroid/net/wifi/ScanResult;

    iget p2, p2, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p1, p2, :cond_14

    const/4 p1, 0x1

    goto :goto_19

    :cond_14
    if-ne p1, p2, :cond_18

    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    const/4 p1, -0x1

    :goto_19
    return p1
.end method
