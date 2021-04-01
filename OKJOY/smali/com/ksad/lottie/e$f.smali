.class final Lcom/ksad/lottie/e$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksad/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/ksad/lottie/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ksad/lottie/e$f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/d;)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/e$f;->a:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/ksad/lottie/p/f;->a()Lcom/ksad/lottie/p/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/e$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ksad/lottie/p/f;->a(Ljava/lang/String;Lcom/ksad/lottie/d;)V

    :cond_d
    invoke-static {}, Lcom/ksad/lottie/e;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/e$f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/ksad/lottie/d;

    invoke-virtual {p0, p1}, Lcom/ksad/lottie/e$f;->a(Lcom/ksad/lottie/d;)V

    return-void
.end method
