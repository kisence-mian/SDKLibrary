.class final Lcom/ksad/lottie/n/a/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/n/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/ksad/lottie/n/a/s;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ksad/lottie/n/a/s;)V
    .registers 3
    .param p1    # Lcom/ksad/lottie/n/a/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/a$b;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/ksad/lottie/n/a/a$b;->b:Lcom/ksad/lottie/n/a/s;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksad/lottie/n/a/s;Lcom/ksad/lottie/n/a/a$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ksad/lottie/n/a/a$b;-><init>(Lcom/ksad/lottie/n/a/s;)V

    return-void
.end method

.method static synthetic a(Lcom/ksad/lottie/n/a/a$b;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a$b;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/ksad/lottie/n/a/a$b;)Lcom/ksad/lottie/n/a/s;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a$b;->b:Lcom/ksad/lottie/n/a/s;

    return-object v0
.end method
