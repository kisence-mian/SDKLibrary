.class final Lcom/anythink/basead/d/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/d/f$b;->a:Landroid/graphics/Rect;

    return-void
.end method

.method private static a(JI)Z
    .registers 5

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    int-to-long p0, p2

    cmp-long p0, v0, p0

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z
    .registers 12

    .line 326
    const/4 v0, 0x0

    if-eqz p2, :cond_59

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_59

    .line 330
    :cond_10
    iget-object p1, p0, Lcom/anythink/basead/d/f$b;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 332
    return v0

    .line 336
    :cond_19
    iget-object p1, p0, Lcom/anythink/basead/d/f$b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-long v1, p1

    iget-object p1, p0, Lcom/anythink/basead/d/f$b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-long v3, p1

    mul-long/2addr v1, v3

    .line 337
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-long p1, p1

    mul-long/2addr v3, p1

    .line 339
    const-wide/16 p1, 0x0

    cmp-long p1, v3, p1

    if-gtz p1, :cond_3a

    .line 340
    return v0

    .line 343
    :cond_3a
    const/4 p1, 0x1

    if-eqz p4, :cond_4e

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_4e

    .line 344
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    cmp-long p2, v1, p2

    if-ltz p2, :cond_4d

    return p1

    :cond_4d
    return v0

    .line 347
    :cond_4e
    const-wide/16 v5, 0x64

    mul-long/2addr v1, v5

    int-to-long p2, p3

    mul-long/2addr p2, v3

    cmp-long p2, v1, p2

    if-ltz p2, :cond_58

    return p1

    :cond_58
    return v0

    .line 327
    :cond_59
    :goto_59
    return v0
.end method
