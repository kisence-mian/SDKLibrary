.class public Lcom/ksad/lottie/q/c0;
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
        "Lcom/ksad/lottie/s/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/ksad/lottie/q/c0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ksad/lottie/q/c0;

    invoke-direct {v0}, Lcom/ksad/lottie/q/c0;-><init>()V

    sput-object v0, Lcom/ksad/lottie/q/c0;->a:Lcom/ksad/lottie/q/c0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Lcom/ksad/lottie/s/c;
    .registers 8

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_24

    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    :goto_1a
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1a

    :cond_24
    const/4 v0, 0x0

    goto :goto_b

    :cond_26
    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    :cond_2b
    new-instance v0, Lcom/ksad/lottie/s/c;

    div-float/2addr v1, v4

    mul-float/2addr v1, p2

    div-float/2addr v2, v4

    mul-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Lcom/ksad/lottie/s/c;-><init>(FF)V

    return-object v0
.end method

.method public bridge synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/q/c0;->a(Landroid/util/JsonReader;F)Lcom/ksad/lottie/s/c;

    move-result-object v0

    return-object v0
.end method
