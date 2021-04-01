.class public Lcom/ksad/lottie/q/f;
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
.field public static final a:Lcom/ksad/lottie/q/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ksad/lottie/q/f;

    invoke-direct {v0}, Lcom/ksad/lottie/q/f;-><init>()V

    sput-object v0, Lcom/ksad/lottie/q/f;->a:Lcom/ksad/lottie/q/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Ljava/lang/Integer;
    .registers 13

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_61

    const/4 v0, 0x1

    move v8, v0

    :goto_a
    if-eqz v8, :cond_f

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :cond_f
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    if-eqz v8, :cond_24

    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    :cond_24
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v6, v8

    if-gtz v8, :cond_54

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v4, v8

    if-gtz v8, :cond_54

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v2, v8

    if-gtz v8, :cond_54

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v0, v8

    if-gtz v8, :cond_54

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v6, v8

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v8

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v8

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v8

    :cond_54
    double-to-int v0, v0

    double-to-int v1, v6

    double-to-int v4, v4

    double-to-int v2, v2

    invoke-static {v0, v1, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_61
    const/4 v0, 0x0

    move v8, v0

    goto :goto_a
.end method

.method public bridge synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/q/f;->a(Landroid/util/JsonReader;F)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
