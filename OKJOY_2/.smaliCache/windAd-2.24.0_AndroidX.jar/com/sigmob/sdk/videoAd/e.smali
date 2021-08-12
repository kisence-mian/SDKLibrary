.class public Lcom/sigmob/sdk/videoAd/e;
.super Lcom/sigmob/sdk/base/common/e;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/base/common/e;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/sigmob/sdk/videoAd/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:F


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/e$a;Ljava/lang/String;F)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sigmob/sdk/base/common/e;-><init>(Lcom/sigmob/sdk/base/common/e$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Z)Z

    iput p3, p0, Lcom/sigmob/sdk/videoAd/e;->a:F

    return-void
.end method

.method constructor <init>(Ljava/lang/String;F)V
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/e$a;->b:Lcom/sigmob/sdk/base/common/e$a;

    invoke-direct {p0, v0, p1, p2}, Lcom/sigmob/sdk/videoAd/e;-><init>(Lcom/sigmob/sdk/base/common/e$a;Ljava/lang/String;F)V

    return-void
.end method

.method private l()F
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/e;->a:F

    return v0
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/videoAd/e;)I
    .registers 6

    invoke-direct {p1}, Lcom/sigmob/sdk/videoAd/e;->l()F

    move-result p1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/e;->l()F

    move-result v0

    float-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/videoAd/e;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/e;->a(Lcom/sigmob/sdk/videoAd/e;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sigmob/sdk/videoAd/e;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/e;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%2f: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
