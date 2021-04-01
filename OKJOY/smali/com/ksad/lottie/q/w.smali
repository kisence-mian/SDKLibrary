.class Lcom/ksad/lottie/q/w;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/n/b/h;
    .registers 5

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_9
    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v1

    sget-object v2, Lcom/ksad/lottie/q/x;->a:Lcom/ksad/lottie/q/x;

    invoke-static {p0, p1, v1, v2, v0}, Lcom/ksad/lottie/q/q;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;FLcom/ksad/lottie/q/j0;Z)Lcom/ksad/lottie/s/a;

    move-result-object v0

    new-instance v1, Lcom/ksad/lottie/n/b/h;

    invoke-direct {v1, p1, v0}, Lcom/ksad/lottie/n/b/h;-><init>(Lcom/ksad/lottie/d;Lcom/ksad/lottie/s/a;)V

    return-object v1

    :cond_19
    const/4 v0, 0x0

    goto :goto_9
.end method
