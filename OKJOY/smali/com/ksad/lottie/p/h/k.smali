.class public Lcom/ksad/lottie/p/h/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/ksad/lottie/p/h/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lcom/ksad/lottie/p/h/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lcom/ksad/lottie/p/h/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lcom/ksad/lottie/p/h/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/p/h/a;Lcom/ksad/lottie/p/h/a;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V
    .registers 5
    .param p1    # Lcom/ksad/lottie/p/h/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/ksad/lottie/p/h/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/ksad/lottie/p/h/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/ksad/lottie/p/h/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/p/h/k;->a:Lcom/ksad/lottie/p/h/a;

    iput-object p2, p0, Lcom/ksad/lottie/p/h/k;->b:Lcom/ksad/lottie/p/h/a;

    iput-object p3, p0, Lcom/ksad/lottie/p/h/k;->c:Lcom/ksad/lottie/p/h/b;

    iput-object p4, p0, Lcom/ksad/lottie/p/h/k;->d:Lcom/ksad/lottie/p/h/b;

    return-void
.end method
