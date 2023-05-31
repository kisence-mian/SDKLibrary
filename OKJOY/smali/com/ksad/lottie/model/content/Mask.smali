.class public Lcom/ksad/lottie/model/content/Mask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/lottie/model/content/Mask$MaskMode;
    }
.end annotation


# instance fields
.field private final a:Lcom/ksad/lottie/model/content/Mask$MaskMode;

.field private final b:Lcom/ksad/lottie/p/h/h;

.field private final c:Lcom/ksad/lottie/p/h/d;


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/model/content/Mask$MaskMode;Lcom/ksad/lottie/p/h/h;Lcom/ksad/lottie/p/h/d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/model/content/Mask;->a:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    iput-object p2, p0, Lcom/ksad/lottie/model/content/Mask;->b:Lcom/ksad/lottie/p/h/h;

    iput-object p3, p0, Lcom/ksad/lottie/model/content/Mask;->c:Lcom/ksad/lottie/p/h/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/ksad/lottie/model/content/Mask$MaskMode;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/Mask;->a:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    return-object v0
.end method

.method public b()Lcom/ksad/lottie/p/h/h;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/Mask;->b:Lcom/ksad/lottie/p/h/h;

    return-object v0
.end method

.method public c()Lcom/ksad/lottie/p/h/d;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/Mask;->c:Lcom/ksad/lottie/p/h/d;

    return-object v0
.end method
