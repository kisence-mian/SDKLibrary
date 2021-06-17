.class public Landroid/support/v7/internal/widget/TintSpinner;
.super Landroid/widget/Spinner;
.source "TintSpinner.java"


# static fields
.field private static final TINT_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/support/v7/internal/widget/TintSpinner;->TINT_ATTRS:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x10100d4
        0x1010176
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/TintSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/TintSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-object v0, Landroid/support/v7/internal/widget/TintSpinner;->TINT_ATTRS:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Landroid/support/v7/internal/widget/TintTypedArray;
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/TintSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 57
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_26

    .line 59
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/TintSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2f

    .line 60
    :cond_26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2f

    .line 61
    invoke-static {p0, v1}, Landroid/support/v7/internal/widget/TintSpinner;->setPopupBackgroundDrawableV11(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V

    .line 65
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2f
    :goto_2f
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 66
    return-void
.end method

.method private static setPopupBackgroundDrawableV11(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p0, "view"    # Landroid/widget/Spinner;
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 71
    :try_start_0
    const-class v0, Landroid/widget/Spinner;

    const-string v1, "mPopup"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 72
    .local v0, "popupField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 76
    .local v1, "popup":Ljava/lang/Object;
    instance-of v2, v1, Landroid/widget/ListPopupWindow;

    if-eqz v2, :cond_24

    .line 77
    move-object v2, v1

    check-cast v2, Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_1a} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_24

    .line 81
    .end local v0    # "popupField":Ljava/lang/reflect/Field;
    .end local v1    # "popup":Ljava/lang/Object;
    :catch_1b
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_25

    .line 79
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_20
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 83
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_24
    :goto_24
    nop

    .line 84
    :goto_25
    return-void
.end method
