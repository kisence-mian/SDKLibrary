.class public Lcom/ksad/lottie/model/content/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/model/content/b;


# instance fields
.field private final a:Z

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/ksad/lottie/p/h/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/ksad/lottie/p/h/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/ksad/lottie/p/h/a;Lcom/ksad/lottie/p/h/d;)V
    .registers 6
    .param p4    # Lcom/ksad/lottie/p/h/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/ksad/lottie/p/h/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/model/content/i;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/ksad/lottie/model/content/i;->a:Z

    iput-object p3, p0, Lcom/ksad/lottie/model/content/i;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lcom/ksad/lottie/model/content/i;->d:Lcom/ksad/lottie/p/h/a;

    iput-object p5, p0, Lcom/ksad/lottie/model/content/i;->e:Lcom/ksad/lottie/p/h/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;)Lcom/ksad/lottie/n/a/b;
    .registers 4

    new-instance v0, Lcom/ksad/lottie/n/a/f;

    invoke-direct {v0, p1, p2, p0}, Lcom/ksad/lottie/n/a/f;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/i;)V

    return-object v0
.end method

.method public a()Lcom/ksad/lottie/p/h/a;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/content/i;->d:Lcom/ksad/lottie/p/h/a;

    return-object v0
.end method

.method public b()Landroid/graphics/Path$FillType;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/i;->b:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/ksad/lottie/p/h/d;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/content/i;->e:Lcom/ksad/lottie/p/h/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ksad/lottie/model/content/i;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
