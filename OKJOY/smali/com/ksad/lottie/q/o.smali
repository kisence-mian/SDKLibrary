.class public Lcom/ksad/lottie/q/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/q/j0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ksad/lottie/q/j0",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/ksad/lottie/q/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ksad/lottie/q/o;

    invoke-direct {v0}, Lcom/ksad/lottie/q/o;-><init>()V

    sput-object v0, Lcom/ksad/lottie/q/o;->a:Lcom/ksad/lottie/q/o;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Ljava/lang/Integer;
    .registers 4

    invoke-static {p1}, Lcom/ksad/lottie/q/p;->b(Landroid/util/JsonReader;)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/q/o;->a(Landroid/util/JsonReader;F)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
