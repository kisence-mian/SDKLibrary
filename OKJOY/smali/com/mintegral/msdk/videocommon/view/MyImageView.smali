.class public Lcom/mintegral/msdk/videocommon/view/MyImageView;
.super Lcom/mintegral/msdk/widget/MTGImageView;
.source "MyImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/widget/MTGImageView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/widget/MTGImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/widget/MTGImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 30
    :try_start_0
    invoke-super {p0, p1}, Lcom/mintegral/msdk/widget/MTGImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 34
    :goto_3
    return-void

    .line 32
    :catch_4
    move-exception v0

    const-string v0, ""

    const-string v1, "MyImageView  -> onDraw() Canvas: trying to use a recycled bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
