.class public Lcom/ksad/lottie/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/lottie/l$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ksad/lottie/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/r/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksad/lottie/l;->a:Z

    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/l;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/l;->c:Ljava/util/Map;

    new-instance v0, Lcom/ksad/lottie/l$a;

    invoke-direct {v0, p0}, Lcom/ksad/lottie/l$a;-><init>(Lcom/ksad/lottie/l;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;F)V
    .registers 5

    iget-boolean v0, p0, Lcom/ksad/lottie/l;->a:Z

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/ksad/lottie/l;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/r/d;

    if-nez v0, :cond_19

    new-instance v0, Lcom/ksad/lottie/r/d;

    invoke-direct {v0}, Lcom/ksad/lottie/r/d;-><init>()V

    iget-object v1, p0, Lcom/ksad/lottie/l;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-virtual {v0, p2}, Lcom/ksad/lottie/r/d;->a(F)V

    const-string v0, "__container"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ksad/lottie/l;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/l$b;

    invoke-interface {v0, p2}, Lcom/ksad/lottie/l$b;->a(F)V

    goto :goto_2a
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ksad/lottie/l;->a:Z

    return-void
.end method
