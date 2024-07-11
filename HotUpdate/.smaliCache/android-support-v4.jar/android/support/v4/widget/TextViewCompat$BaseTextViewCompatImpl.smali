.class Landroid/support/v4/widget/TextViewCompat$BaseTextViewCompatImpl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"

# interfaces
.implements Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseTextViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxLines(Landroid/widget/TextView;)I
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 76
    invoke-static {p1}, Landroid/support/v4/widget/TextViewCompatDonut;->getMaxLines(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getMinLines(Landroid/widget/TextView;)I
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 81
    invoke-static {p1}, Landroid/support/v4/widget/TextViewCompatDonut;->getMinLines(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "start"    # Landroid/graphics/drawable/Drawable;
    .param p3, "top"    # Landroid/graphics/drawable/Drawable;
    .param p4, "end"    # Landroid/graphics/drawable/Drawable;
    .param p5, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    .line 71
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 72
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "start"    # Landroid/graphics/drawable/Drawable;
    .param p3, "top"    # Landroid/graphics/drawable/Drawable;
    .param p4, "end"    # Landroid/graphics/drawable/Drawable;
    .param p5, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-void
.end method

.method public setTextAppearance(Landroid/widget/TextView;I)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "resId"    # I

    .line 86
    invoke-static {p1, p2}, Landroid/support/v4/widget/TextViewCompatDonut;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 87
    return-void
.end method
