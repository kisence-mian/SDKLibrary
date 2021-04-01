.class Lcom/ksad/lottie/LottieAnimationView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ksad/lottie/h",
        "<",
        "Lcom/ksad/lottie/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksad/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/ksad/lottie/LottieAnimationView;)V
    .registers 2

    iput-object p1, p0, Lcom/ksad/lottie/LottieAnimationView$a;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/d;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView$a;->a:Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/LottieAnimationView;->setComposition(Lcom/ksad/lottie/d;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/ksad/lottie/d;

    invoke-virtual {p0, p1}, Lcom/ksad/lottie/LottieAnimationView$a;->a(Lcom/ksad/lottie/d;)V

    return-void
.end method
