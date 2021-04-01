.class public Lcom/ksad/lottie/model/content/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/model/content/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ksad/lottie/p/h/b;

.field private final c:Lcom/ksad/lottie/p/h/b;

.field private final d:Lcom/ksad/lottie/p/h/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/l;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/model/content/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ksad/lottie/model/content/g;->b:Lcom/ksad/lottie/p/h/b;

    iput-object p3, p0, Lcom/ksad/lottie/model/content/g;->c:Lcom/ksad/lottie/p/h/b;

    iput-object p4, p0, Lcom/ksad/lottie/model/content/g;->d:Lcom/ksad/lottie/p/h/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;)Lcom/ksad/lottie/n/a/b;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/ksad/lottie/n/a/p;

    invoke-direct {v0, p1, p2, p0}, Lcom/ksad/lottie/n/a/p;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/g;)V

    return-object v0
.end method

.method public a()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/g;->b:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/g;->c:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public d()Lcom/ksad/lottie/p/h/l;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/g;->d:Lcom/ksad/lottie/p/h/l;

    return-object v0
.end method
