.class public final Landroidx/appcompat/resources/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/resources/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AnimatedStateListDrawableCompat:[I

.field public static final AnimatedStateListDrawableCompat_android_constantSize:I = 0x3

.field public static final AnimatedStateListDrawableCompat_android_dither:I = 0x0

.field public static final AnimatedStateListDrawableCompat_android_enterFadeDuration:I = 0x4

.field public static final AnimatedStateListDrawableCompat_android_exitFadeDuration:I = 0x5

.field public static final AnimatedStateListDrawableCompat_android_variablePadding:I = 0x2

.field public static final AnimatedStateListDrawableCompat_android_visible:I = 0x1

.field public static final AnimatedStateListDrawableItem:[I

.field public static final AnimatedStateListDrawableItem_android_drawable:I = 0x1

.field public static final AnimatedStateListDrawableItem_android_id:I = 0x0

.field public static final AnimatedStateListDrawableTransition:[I

.field public static final AnimatedStateListDrawableTransition_android_drawable:I = 0x0

.field public static final AnimatedStateListDrawableTransition_android_fromId:I = 0x2

.field public static final AnimatedStateListDrawableTransition_android_reversible:I = 0x3

.field public static final AnimatedStateListDrawableTransition_android_toId:I = 0x1

.field public static final StateListDrawable:[I

.field public static final StateListDrawableItem:[I

.field public static final StateListDrawableItem_android_drawable:I = 0x0

.field public static final StateListDrawable_android_constantSize:I = 0x3

.field public static final StateListDrawable_android_dither:I = 0x0

.field public static final StateListDrawable_android_enterFadeDuration:I = 0x4

.field public static final StateListDrawable_android_exitFadeDuration:I = 0x5

.field public static final StateListDrawable_android_variablePadding:I = 0x2

.field public static final StateListDrawable_android_visible:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 44
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_2c

    sput-object v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat:[I

    .line 124
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_3c

    sput-object v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem:[I

    .line 162
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_44

    sput-object v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition:[I

    .line 229
    new-array v0, v0, [I

    fill-array-data v0, :array_50

    sput-object v0, Landroidx/appcompat/resources/R$styleable;->StateListDrawable:[I

    .line 307
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010199

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/resources/R$styleable;->StateListDrawableItem:[I

    return-void

    nop

    :array_2c
    .array-data 4
        0x101011c
        0x1010194
        0x1010195
        0x1010196
        0x101030c
        0x101030d
    .end array-data

    :array_3c
    .array-data 4
        0x10100d0
        0x1010199
    .end array-data

    :array_44
    .array-data 4
        0x1010199
        0x1010449
        0x101044a
        0x101044b
    .end array-data

    :array_50
    .array-data 4
        0x101011c
        0x1010194
        0x1010195
        0x1010196
        0x101030c
        0x101030d
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
