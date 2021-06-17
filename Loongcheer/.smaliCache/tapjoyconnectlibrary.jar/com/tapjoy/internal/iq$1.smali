.class final Lcom/tapjoy/internal/iq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/iq;->a(Lcom/tapjoy/internal/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ii;

.field final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic c:Lcom/tapjoy/internal/ii;

.field final synthetic d:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic e:Lcom/tapjoy/internal/iq;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/iq;Lcom/tapjoy/internal/ii;Landroid/graphics/drawable/BitmapDrawable;Lcom/tapjoy/internal/ii;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 6

    .line 222
    iput-object p1, p0, Lcom/tapjoy/internal/iq$1;->e:Lcom/tapjoy/internal/iq;

    iput-object p2, p0, Lcom/tapjoy/internal/iq$1;->a:Lcom/tapjoy/internal/ii;

    iput-object p3, p0, Lcom/tapjoy/internal/iq$1;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Lcom/tapjoy/internal/iq$1;->c:Lcom/tapjoy/internal/ii;

    iput-object p5, p0, Lcom/tapjoy/internal/iq$1;->d:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_36

    .line 227
    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->a:Lcom/tapjoy/internal/ii;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_20

    .line 228
    :cond_11
    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->c:Lcom/tapjoy/internal/ii;

    if-eqz v0, :cond_1d

    .line 229
    invoke-virtual {v0}, Lcom/tapjoy/internal/ii;->b()V

    .line 230
    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->c:Lcom/tapjoy/internal/ii;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ii;->setVisibility(I)V

    .line 232
    :cond_1d
    invoke-static {p1, v2}, Lcom/tapjoy/internal/aa;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 236
    :cond_20
    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_29

    .line 237
    invoke-static {p1, v0}, Lcom/tapjoy/internal/aa;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_98

    .line 239
    :cond_29
    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->a:Lcom/tapjoy/internal/ii;

    if-eqz v0, :cond_98

    .line 240
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/ii;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->a:Lcom/tapjoy/internal/ii;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ii;->a()V

    goto :goto_98

    .line 243
    :cond_36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_98

    .line 244
    nop

    .line 245
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 248
    const/4 v6, 0x0

    cmpg-float v7, v0, v6

    if-ltz v7, :cond_64

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-gez v0, :cond_64

    cmpg-float v0, v5, v6

    if-ltz v0, :cond_64

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_62

    goto :goto_64

    :cond_62
    const/4 v4, 0x0

    goto :goto_65

    .line 250
    :cond_64
    :goto_64
    nop

    .line 253
    :goto_65
    if-eqz v4, :cond_76

    .line 254
    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->d:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_6f

    .line 255
    invoke-static {p1, v0}, Lcom/tapjoy/internal/aa;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_76

    .line 257
    :cond_6f
    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_76

    .line 258
    invoke-static {p1, v2}, Lcom/tapjoy/internal/aa;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 262
    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->a:Lcom/tapjoy/internal/ii;

    if-eqz v0, :cond_82

    .line 263
    invoke-virtual {v0}, Lcom/tapjoy/internal/ii;->b()V

    .line 264
    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->a:Lcom/tapjoy/internal/ii;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ii;->setVisibility(I)V

    .line 267
    :cond_82
    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->a:Lcom/tapjoy/internal/ii;

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_98

    .line 269
    :cond_8a
    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->c:Lcom/tapjoy/internal/ii;

    if-eqz v0, :cond_98

    if-eqz v4, :cond_98

    .line 270
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/ii;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/tapjoy/internal/iq$1;->c:Lcom/tapjoy/internal/ii;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ii;->a()V

    .line 275
    :cond_98
    :goto_98
    return v3
.end method
