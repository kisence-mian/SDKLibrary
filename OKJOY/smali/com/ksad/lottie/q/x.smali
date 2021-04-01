.class public Lcom/ksad/lottie/q/x;
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
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/ksad/lottie/q/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ksad/lottie/q/x;

    invoke-direct {v0}, Lcom/ksad/lottie/q/x;-><init>()V

    sput-object v0, Lcom/ksad/lottie/q/x;->a:Lcom/ksad/lottie/q/x;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .registers 4

    invoke-static {p1, p2}, Lcom/ksad/lottie/q/p;->d(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/q/x;->a(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
