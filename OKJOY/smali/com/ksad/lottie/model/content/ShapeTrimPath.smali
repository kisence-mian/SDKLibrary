.class public Lcom/ksad/lottie/model/content/ShapeTrimPath;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/model/content/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

.field private final c:Lcom/ksad/lottie/p/h/b;

.field private final d:Lcom/ksad/lottie/p/h/b;

.field private final e:Lcom/ksad/lottie/p/h/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/model/content/ShapeTrimPath;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ksad/lottie/model/content/ShapeTrimPath;->b:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    iput-object p3, p0, Lcom/ksad/lottie/model/content/ShapeTrimPath;->c:Lcom/ksad/lottie/p/h/b;

    iput-object p4, p0, Lcom/ksad/lottie/model/content/ShapeTrimPath;->d:Lcom/ksad/lottie/p/h/b;

    iput-object p5, p0, Lcom/ksad/lottie/model/content/ShapeTrimPath;->e:Lcom/ksad/lottie/p/h/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;)Lcom/ksad/lottie/n/a/b;
    .registers 4

    new-instance v0, Lcom/ksad/lottie/n/a/s;

    invoke-direct {v0, p2, p0}, Lcom/ksad/lottie/n/a/s;-><init>(Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/ShapeTrimPath;)V

    return-object v0
.end method

.method public a()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/ShapeTrimPath;->d:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/ShapeTrimPath;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/ShapeTrimPath;->e:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public d()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/ShapeTrimPath;->c:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public e()Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/ShapeTrimPath;->b:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/model/content/ShapeTrimPath;->c:Lcom/ksad/lottie/p/h/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/model/content/ShapeTrimPath;->d:Lcom/ksad/lottie/p/h/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/model/content/ShapeTrimPath;->e:Lcom/ksad/lottie/p/h/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
