.class Lcom/facebook/FacebookRequestError$Range;
.super Ljava/lang/Object;
.source "FacebookRequestError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field private final end:I

.field private final start:I


# direct methods
.method private constructor <init>(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/facebook/FacebookRequestError$Range;->start:I

    .line 76
    iput p2, p0, Lcom/facebook/FacebookRequestError$Range;->end:I

    .line 77
    return-void
.end method

.method synthetic constructor <init>(IILcom/facebook/FacebookRequestError$1;)V
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/facebook/FacebookRequestError$1;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/facebook/FacebookRequestError$Range;-><init>(II)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .registers 3
    .param p1, "value"    # I

    .line 80
    iget v0, p0, Lcom/facebook/FacebookRequestError$Range;->start:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Lcom/facebook/FacebookRequestError$Range;->end:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
