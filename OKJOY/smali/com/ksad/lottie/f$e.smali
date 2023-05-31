.class Lcom/ksad/lottie/f$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/f$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksad/lottie/f;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ksad/lottie/f;


# direct methods
.method constructor <init>(Lcom/ksad/lottie/f;I)V
    .registers 3

    iput-object p1, p0, Lcom/ksad/lottie/f$e;->b:Lcom/ksad/lottie/f;

    iput p2, p0, Lcom/ksad/lottie/f$e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/d;)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/f$e;->b:Lcom/ksad/lottie/f;

    iget v1, p0, Lcom/ksad/lottie/f$e;->a:I

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/f;->c(I)V

    return-void
.end method
