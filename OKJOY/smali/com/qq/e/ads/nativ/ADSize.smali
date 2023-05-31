.class public Lcom/qq/e/ads/nativ/ADSize;
.super Ljava/lang/Object;


# static fields
.field public static final AUTO_HEIGHT:I = -0x2

.field public static final FULL_WIDTH:I = -0x1


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/qq/e/ads/nativ/ADSize;->b:I

    iput p1, p0, Lcom/qq/e/ads/nativ/ADSize;->a:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/nativ/ADSize;->b:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/nativ/ADSize;->a:I

    return v0
.end method
