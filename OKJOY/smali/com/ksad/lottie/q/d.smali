.class public Lcom/ksad/lottie/q/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/a;
    .registers 4

    new-instance v0, Lcom/ksad/lottie/p/h/a;

    sget-object v1, Lcom/ksad/lottie/q/f;->a:Lcom/ksad/lottie/q/f;

    invoke-static {p0, p1, v1}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Lcom/ksad/lottie/q/j0;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksad/lottie/p/h/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;
    .registers 6

    new-instance v1, Lcom/ksad/lottie/p/h/b;

    if-eqz p2, :cond_12

    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v0

    :goto_8
    sget-object v2, Lcom/ksad/lottie/q/i;->a:Lcom/ksad/lottie/q/i;

    invoke-static {p0, v0, p1, v2}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;FLcom/ksad/lottie/d;Lcom/ksad/lottie/q/j0;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ksad/lottie/p/h/b;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_12
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8
.end method

.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;I)Lcom/ksad/lottie/p/h/c;
    .registers 5

    new-instance v0, Lcom/ksad/lottie/p/h/c;

    new-instance v1, Lcom/ksad/lottie/q/l;

    invoke-direct {v1, p2}, Lcom/ksad/lottie/q/l;-><init>(I)V

    invoke-static {p0, p1, v1}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Lcom/ksad/lottie/q/j0;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksad/lottie/p/h/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Landroid/util/JsonReader;FLcom/ksad/lottie/d;Lcom/ksad/lottie/q/j0;)Ljava/util/List;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/ksad/lottie/d;",
            "Lcom/ksad/lottie/q/j0",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<TT;>;>;"
        }
    .end annotation

    invoke-static {p0, p2, p1, p3}, Lcom/ksad/lottie/q/r;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;FLcom/ksad/lottie/q/j0;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Lcom/ksad/lottie/q/j0;)Ljava/util/List;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/ksad/lottie/d;",
            "Lcom/ksad/lottie/q/j0",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<TT;>;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0, p2}, Lcom/ksad/lottie/q/r;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;FLcom/ksad/lottie/q/j0;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/j;
    .registers 4

    new-instance v0, Lcom/ksad/lottie/p/h/j;

    sget-object v1, Lcom/ksad/lottie/q/h;->a:Lcom/ksad/lottie/q/h;

    invoke-static {p0, p1, v1}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Lcom/ksad/lottie/q/j0;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksad/lottie/p/h/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static c(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/b;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    return-object v0
.end method

.method static d(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/d;
    .registers 4

    new-instance v0, Lcom/ksad/lottie/p/h/d;

    sget-object v1, Lcom/ksad/lottie/q/o;->a:Lcom/ksad/lottie/q/o;

    invoke-static {p0, p1, v1}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Lcom/ksad/lottie/q/j0;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksad/lottie/p/h/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static e(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/f;
    .registers 5

    new-instance v0, Lcom/ksad/lottie/p/h/f;

    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v1

    sget-object v2, Lcom/ksad/lottie/q/y;->a:Lcom/ksad/lottie/q/y;

    invoke-static {p0, v1, p1, v2}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;FLcom/ksad/lottie/d;Lcom/ksad/lottie/q/j0;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksad/lottie/p/h/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static f(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/g;
    .registers 4

    new-instance v0, Lcom/ksad/lottie/p/h/g;

    sget-object v1, Lcom/ksad/lottie/q/c0;->a:Lcom/ksad/lottie/q/c0;

    invoke-static {p0, p1, v1}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Lcom/ksad/lottie/q/j0;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksad/lottie/p/h/g;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static g(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/h;
    .registers 5

    new-instance v0, Lcom/ksad/lottie/p/h/h;

    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v1

    sget-object v2, Lcom/ksad/lottie/q/d0;->a:Lcom/ksad/lottie/q/d0;

    invoke-static {p0, v1, p1, v2}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;FLcom/ksad/lottie/d;Lcom/ksad/lottie/q/j0;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksad/lottie/p/h/h;-><init>(Ljava/util/List;)V

    return-object v0
.end method
