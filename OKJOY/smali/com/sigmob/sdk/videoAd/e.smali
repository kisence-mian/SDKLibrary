.class public Lcom/sigmob/sdk/videoAd/e;
.super Lcom/sigmob/sdk/base/common/j;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/base/common/j;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sigmob/sdk/videoAd/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:F


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/k;Ljava/lang/String;F)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sigmob/sdk/base/common/j;-><init>(Lcom/sigmob/sdk/base/common/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Z)Z

    iput p3, p0, Lcom/sigmob/sdk/videoAd/e;->a:F

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method constructor <init>(Lcom/sigmob/sdk/base/common/k;Ljava/lang/String;FLjava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/sigmob/sdk/base/common/j;-><init>(Lcom/sigmob/sdk/base/common/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Z)Z

    iput p3, p0, Lcom/sigmob/sdk/videoAd/e;->a:F

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method constructor <init>(Ljava/lang/String;F)V
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/k;->b:Lcom/sigmob/sdk/base/common/k;

    invoke-direct {p0, v0, p1, p2}, Lcom/sigmob/sdk/videoAd/e;-><init>(Lcom/sigmob/sdk/base/common/k;Ljava/lang/String;F)V

    return-void
.end method

.method private m()F
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/e;->a:F

    return v0
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/videoAd/e;)I
    .registers 6

    invoke-direct {p1}, Lcom/sigmob/sdk/videoAd/e;->m()F

    move-result v0

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/e;->m()F

    move-result v1

    float-to-double v2, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/sdk/videoAd/e;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/e;->a(Lcom/sigmob/sdk/videoAd/e;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%2f: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sigmob/sdk/videoAd/e;->a:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/e;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
