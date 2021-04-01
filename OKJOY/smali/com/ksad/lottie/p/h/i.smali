.class public Lcom/ksad/lottie/p/h/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/p/h/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ksad/lottie/p/h/m",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/ksad/lottie/p/h/b;

.field private final b:Lcom/ksad/lottie/p/h/b;


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/p/h/i;->a:Lcom/ksad/lottie/p/h/b;

    iput-object p2, p0, Lcom/ksad/lottie/p/h/i;->b:Lcom/ksad/lottie/p/h/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/ksad/lottie/n/b/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ksad/lottie/n/b/m;

    iget-object v1, p0, Lcom/ksad/lottie/p/h/i;->a:Lcom/ksad/lottie/p/h/b;

    invoke-virtual {v1}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ksad/lottie/p/h/i;->b:Lcom/ksad/lottie/p/h/b;

    invoke-virtual {v2}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ksad/lottie/n/b/m;-><init>(Lcom/ksad/lottie/n/b/a;Lcom/ksad/lottie/n/b/a;)V

    return-object v0
.end method
