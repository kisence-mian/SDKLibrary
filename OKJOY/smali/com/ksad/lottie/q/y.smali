.class public Lcom/ksad/lottie/q/y;
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
.field public static final a:Lcom/ksad/lottie/q/y;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ksad/lottie/q/y;

    invoke-direct {v0}, Lcom/ksad/lottie/q/y;-><init>()V

    sput-object v0, Lcom/ksad/lottie/q/y;->a:Lcom/ksad/lottie/q/y;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .registers 7

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_d

    invoke-static {p1, p2}, Lcom/ksad/lottie/q/p;->d(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_16

    invoke-static {p1, p2}, Lcom/ksad/lottie/q/p;->d(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_c

    :cond_16
    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_35

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_2b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2b

    :cond_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot convert json to point. Next token is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/q/y;->a(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
