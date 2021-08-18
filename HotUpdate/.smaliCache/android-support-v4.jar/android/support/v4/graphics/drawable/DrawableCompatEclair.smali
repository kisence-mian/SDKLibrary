.class Landroid/support/v4/graphics/drawable/DrawableCompatEclair;
.super Ljava/lang/Object;
.source "DrawableCompatEclair.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 26
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperEclair;

    if-nez v0, :cond_a

    .line 27
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperEclair;

    invoke-direct {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperEclair;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 29
    :cond_a
    return-object p0
.end method
