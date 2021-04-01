.class public Lcom/ksad/lottie/model/content/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/model/content/b;


# instance fields
.field private final a:Lcom/ksad/lottie/model/content/GradientType;

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Lcom/ksad/lottie/p/h/c;

.field private final d:Lcom/ksad/lottie/p/h/d;

.field private final e:Lcom/ksad/lottie/p/h/f;

.field private final f:Lcom/ksad/lottie/p/h/f;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ksad/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/ksad/lottie/p/h/c;Lcom/ksad/lottie/p/h/d;Lcom/ksad/lottie/p/h/f;Lcom/ksad/lottie/p/h/f;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ksad/lottie/model/content/d;->a:Lcom/ksad/lottie/model/content/GradientType;

    iput-object p3, p0, Lcom/ksad/lottie/model/content/d;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lcom/ksad/lottie/model/content/d;->c:Lcom/ksad/lottie/p/h/c;

    iput-object p5, p0, Lcom/ksad/lottie/model/content/d;->d:Lcom/ksad/lottie/p/h/d;

    iput-object p6, p0, Lcom/ksad/lottie/model/content/d;->e:Lcom/ksad/lottie/p/h/f;

    iput-object p7, p0, Lcom/ksad/lottie/model/content/d;->f:Lcom/ksad/lottie/p/h/f;

    iput-object p1, p0, Lcom/ksad/lottie/model/content/d;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;)Lcom/ksad/lottie/n/a/b;
    .registers 4

    new-instance v0, Lcom/ksad/lottie/n/a/g;

    invoke-direct {v0, p1, p2, p0}, Lcom/ksad/lottie/n/a/g;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/d;)V

    return-object v0
.end method

.method public a()Lcom/ksad/lottie/p/h/f;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/d;->f:Lcom/ksad/lottie/p/h/f;

    return-object v0
.end method

.method public b()Landroid/graphics/Path$FillType;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/d;->b:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public c()Lcom/ksad/lottie/p/h/c;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/d;->c:Lcom/ksad/lottie/p/h/c;

    return-object v0
.end method

.method public d()Lcom/ksad/lottie/model/content/GradientType;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/d;->a:Lcom/ksad/lottie/model/content/GradientType;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/ksad/lottie/p/h/d;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/d;->d:Lcom/ksad/lottie/p/h/d;

    return-object v0
.end method

.method public g()Lcom/ksad/lottie/p/h/f;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/d;->e:Lcom/ksad/lottie/p/h/f;

    return-object v0
.end method
