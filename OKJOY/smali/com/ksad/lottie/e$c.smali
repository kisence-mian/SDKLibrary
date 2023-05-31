.class final Lcom/ksad/lottie/e$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksad/lottie/e;->a(Landroid/content/Context;I)Lcom/ksad/lottie/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/ksad/lottie/j",
        "<",
        "Lcom/ksad/lottie/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 3

    iput-object p1, p0, Lcom/ksad/lottie/e$c;->a:Landroid/content/Context;

    iput p2, p0, Lcom/ksad/lottie/e$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/ksad/lottie/j;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/j",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/e$c;->a:Landroid/content/Context;

    iget v1, p0, Lcom/ksad/lottie/e$c;->b:I

    invoke-static {v0, v1}, Lcom/ksad/lottie/e;->b(Landroid/content/Context;I)Lcom/ksad/lottie/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ksad/lottie/e$c;->call()Lcom/ksad/lottie/j;

    move-result-object v0

    return-object v0
.end method
