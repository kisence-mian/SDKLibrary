.class public Lcom/tapjoy/TJImageButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    return-void
.end method


# virtual methods
.method public setDisableImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 37
    iput-object p1, p0, Lcom/tapjoy/TJImageButton;->b:Landroid/graphics/Bitmap;

    .line 38
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 42
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 43
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/tapjoy/TJImageButton;->a:Landroid/graphics/Bitmap;

    goto :goto_a

    :cond_8
    iget-object v0, p0, Lcom/tapjoy/TJImageButton;->b:Landroid/graphics/Bitmap;

    :goto_a
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    return-void
.end method

.method public setEnabledImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 33
    iput-object p1, p0, Lcom/tapjoy/TJImageButton;->a:Landroid/graphics/Bitmap;

    .line 34
    return-void
.end method
