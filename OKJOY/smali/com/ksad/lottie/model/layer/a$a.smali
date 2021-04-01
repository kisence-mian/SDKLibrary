.class Lcom/ksad/lottie/model/layer/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/n/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksad/lottie/model/layer/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksad/lottie/n/b/c;

.field final synthetic b:Lcom/ksad/lottie/model/layer/a;


# direct methods
.method constructor <init>(Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/n/b/c;)V
    .registers 3

    iput-object p1, p0, Lcom/ksad/lottie/model/layer/a$a;->b:Lcom/ksad/lottie/model/layer/a;

    iput-object p2, p0, Lcom/ksad/lottie/model/layer/a$a;->a:Lcom/ksad/lottie/n/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a$a;->b:Lcom/ksad/lottie/model/layer/a;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a$a;->a:Lcom/ksad/lottie/n/b/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_15
    invoke-static {v1, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/model/layer/a;Z)V

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method
