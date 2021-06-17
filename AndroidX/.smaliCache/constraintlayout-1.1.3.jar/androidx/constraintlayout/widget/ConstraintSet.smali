.class public Landroidx/constraintlayout/widget/ConstraintSet;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x2b

.field private static final BARRIER_ALLOWS_GONE_WIDGETS:I = 0x4a

.field private static final BARRIER_DIRECTION:I = 0x48

.field private static final BARRIER_TYPE:I = 0x1

.field public static final BASELINE:I = 0x5

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field public static final BOTTOM:I = 0x4

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field private static final CHAIN_USE_RTL:I = 0x47

.field private static final CIRCLE:I = 0x3d

.field private static final CIRCLE_ANGLE:I = 0x3f

.field private static final CIRCLE_RADIUS:I = 0x3e

.field private static final CONSTRAINT_REFERENCED_IDS:I = 0x49

.field private static final DEBUG:Z = false

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field private static final ELEVATION:I = 0x2c

.field public static final END:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field public static final GONE:I = 0x8

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field private static final HEIGHT_DEFAULT:I = 0x37

.field private static final HEIGHT_MAX:I = 0x39

.field private static final HEIGHT_MIN:I = 0x3b

.field private static final HEIGHT_PERCENT:I = 0x46

.field public static final HORIZONTAL:I = 0x0

.field private static final HORIZONTAL_BIAS:I = 0x14

.field public static final HORIZONTAL_GUIDELINE:I = 0x0

.field private static final HORIZONTAL_STYLE:I = 0x29

.field private static final HORIZONTAL_WEIGHT:I = 0x27

.field public static final INVISIBLE:I = 0x4

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_VISIBILITY:I = 0x16

.field private static final LAYOUT_WIDTH:I = 0x17

.field public static final LEFT:I = 0x1

.field private static final LEFT_MARGIN:I = 0x18

.field private static final LEFT_TO_LEFT:I = 0x19

.field private static final LEFT_TO_RIGHT:I = 0x1a

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field private static final ORIENTATION:I = 0x1b

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final RIGHT_MARGIN:I = 0x1c

.field private static final RIGHT_TO_LEFT:I = 0x1d

.field private static final RIGHT_TO_RIGHT:I = 0x1e

.field private static final ROTATION:I = 0x3c

.field private static final ROTATION_X:I = 0x2d

.field private static final ROTATION_Y:I = 0x2e

.field private static final SCALE_X:I = 0x2f

.field private static final SCALE_Y:I = 0x30

.field public static final START:I = 0x6

.field private static final START_MARGIN:I = 0x1f

.field private static final START_TO_END:I = 0x20

.field private static final START_TO_START:I = 0x21

.field private static final TAG:Ljava/lang/String; = "ConstraintSet"

.field public static final TOP:I = 0x3

.field private static final TOP_MARGIN:I = 0x22

.field private static final TOP_TO_BOTTOM:I = 0x23

.field private static final TOP_TO_TOP:I = 0x24

.field private static final TRANSFORM_PIVOT_X:I = 0x31

.field private static final TRANSFORM_PIVOT_Y:I = 0x32

.field private static final TRANSLATION_X:I = 0x33

.field private static final TRANSLATION_Y:I = 0x34

.field private static final TRANSLATION_Z:I = 0x35

.field public static final UNSET:I = -0x1

.field private static final UNUSED:I = 0x4b

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_BIAS:I = 0x25

.field public static final VERTICAL_GUIDELINE:I = 0x1

.field private static final VERTICAL_STYLE:I = 0x2a

.field private static final VERTICAL_WEIGHT:I = 0x28

.field private static final VIEW_ID:I = 0x26

.field private static final VISIBILITY_FLAGS:[I

.field public static final VISIBLE:I = 0x0

.field private static final WIDTH_DEFAULT:I = 0x36

.field private static final WIDTH_MAX:I = 0x38

.field private static final WIDTH_MIN:I = 0x3a

.field private static final WIDTH_PERCENT:I = 0x45

.field public static final WRAP_CONTENT:I = -0x2

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field private mConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 195
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_298

    sput-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 200
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    .line 274
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 275
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 276
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 277
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 278
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 279
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 281
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 282
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 284
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 285
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 286
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 287
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 288
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 289
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 290
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 291
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 292
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 293
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 294
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 295
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 296
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 297
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 298
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 299
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 300
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 301
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 302
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 303
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 305
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 306
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 307
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 308
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintLeft_creator:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 309
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 310
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 311
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 312
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 314
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 315
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 316
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 318
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 319
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 320
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 321
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 322
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 324
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 326
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 329
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 331
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 335
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 336
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 337
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 338
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 339
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 341
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 342
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 343
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 345
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 346
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 348
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 349
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 350
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_constraint_referenced_ids:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 352
    return-void

    :array_298
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    return-void
.end method

.method private convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "referenceIdString"    # Ljava/lang/String;

    .line 2443
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2444
    .local v0, "split":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2445
    .local v1, "context":Landroid/content/Context;
    array-length v2, v0

    new-array v2, v2, [I

    .line 2446
    .local v2, "tags":[I
    const/4 v3, 0x0

    .line 2447
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    array-length v5, v0

    if-ge v4, v5, :cond_67

    .line 2448
    aget-object v5, v0, v4

    .line 2449
    .local v5, "idString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2450
    const/4 v6, 0x0

    .line 2452
    .local v6, "tag":I
    :try_start_19
    const-class v7, Landroidx/constraintlayout/widget/R$id;

    .line 2453
    .local v7, "res":Ljava/lang/Class;
    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 2454
    .local v8, "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_26

    move v6, v9

    .line 2458
    .end local v7    # "res":Ljava/lang/Class;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    goto :goto_27

    .line 2456
    :catch_26
    move-exception v7

    .line 2459
    :goto_27
    if-nez v6, :cond_37

    .line 2460
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2461
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 2460
    const-string v9, "id"

    invoke-virtual {v7, v5, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2464
    :cond_37
    if-nez v6, :cond_5f

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_5f

    .line 2465
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2466
    .local v7, "constraintLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 2467
    .local v8, "value":Ljava/lang/Object;
    if-eqz v8, :cond_5f

    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_5f

    .line 2468
    move-object v9, v8

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2471
    .end local v7    # "constraintLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_5f
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "count":I
    .local v7, "count":I
    aput v6, v2, v3

    .line 2447
    .end local v5    # "idString":Ljava/lang/String;
    .end local v6    # "tag":I
    add-int/lit8 v4, v4, 0x1

    move v3, v7

    goto :goto_f

    .line 2473
    .end local v4    # "i":I
    .end local v7    # "count":I
    .restart local v3    # "count":I
    :cond_67
    array-length v4, v0

    if-eq v3, v4, :cond_6e

    .line 2474
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 2476
    :cond_6e
    return-object v2
.end method

.method private createHorizontalChain(IIII[I[FIII)V
    .registers 22
    .param p1, "leftId"    # I
    .param p2, "leftSide"    # I
    .param p3, "rightId"    # I
    .param p4, "rightSide"    # I
    .param p5, "chainIds"    # [I
    .param p6, "weights"    # [F
    .param p7, "style"    # I
    .param p8, "left"    # I
    .param p9, "right"    # I

    .line 1071
    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    array-length v0, v7

    const-string v1, "must have 2 or more widgets in a chain"

    const/4 v2, 0x2

    if-lt v0, v2, :cond_7d

    .line 1074
    if-eqz v8, :cond_18

    array-length v0, v8

    array-length v2, v7

    if-ne v0, v2, :cond_12

    goto :goto_18

    .line 1075
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_18
    :goto_18
    const/4 v0, 0x0

    if-eqz v8, :cond_25

    .line 1078
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    aget v2, v8, v0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    .line 1080
    :cond_25
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    move/from16 v9, p7

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 1081
    aget v1, v7, v0

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v2, p8

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1082
    const/4 v0, 0x1

    move v10, v0

    .local v10, "i":I
    :goto_3c
    array-length v0, v7

    if-ge v10, v0, :cond_6d

    .line 1083
    aget v11, v7, v10

    .line 1084
    .local v11, "chainId":I
    aget v1, v7, v10

    add-int/lit8 v0, v10, -0x1

    aget v3, v7, v0

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v2, p8

    move/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1085
    add-int/lit8 v0, v10, -0x1

    aget v1, v7, v0

    aget v3, v7, v10

    move-object v0, p0

    move/from16 v2, p9

    move/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1086
    if-eqz v8, :cond_6a

    .line 1087
    aget v0, v7, v10

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    aget v1, v8, v10

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    .line 1082
    .end local v11    # "chainId":I
    :cond_6a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3c

    .line 1091
    .end local v10    # "i":I
    :cond_6d
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget v1, v7, v0

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v2, p9

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1094
    return-void

    .line 1072
    :cond_7d
    move/from16 v9, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_86

    :goto_85
    throw v0

    :goto_86
    goto :goto_85
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2189
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    .line 2190
    .local v0, "c":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2191
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->populateConstraint(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    .line 2192
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2193
    return-object v0
.end method

.method private get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .registers 6
    .param p1, "id"    # I

    .line 2110
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2111
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    :cond_1b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    return-object v0
.end method

.method private static lookupID(Landroid/content/res/TypedArray;II)I
    .registers 5
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "def"    # I

    .line 2181
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2182
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 2183
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 2185
    :cond_b
    return v0
.end method

.method private populateConstraint(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V
    .registers 10
    .param p1, "c"    # Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .line 2197
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 2198
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2dc

    .line 2199
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 2238
    .local v2, "attr":I
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "   "

    const-string v6, "ConstraintSet"

    packed-switch v3, :pswitch_data_2de

    .line 2436
    :pswitch_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2437
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2436
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d8

    .line 2432
    :pswitch_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unused attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2433
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2432
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    goto/16 :goto_2d8

    .line 2429
    :pswitch_6e
    iget-boolean v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    .line 2430
    goto/16 :goto_2d8

    .line 2426
    :pswitch_78
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    .line 2427
    goto/16 :goto_2d8

    .line 2423
    :pswitch_80
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    .line 2424
    goto/16 :goto_2d8

    .line 2419
    :pswitch_8a
    const-string v3, "CURRENTLY UNSUPPORTED"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    goto/16 :goto_2d8

    .line 2416
    :pswitch_91
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    .line 2417
    goto/16 :goto_2d8

    .line 2413
    :pswitch_99
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    .line 2414
    goto/16 :goto_2d8

    .line 2303
    :pswitch_a1
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    .line 2304
    goto/16 :goto_2d8

    .line 2300
    :pswitch_ab
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    .line 2301
    goto/16 :goto_2d8

    .line 2297
    :pswitch_b5
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    .line 2298
    goto/16 :goto_2d8

    .line 2365
    :pswitch_bf
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    .line 2366
    goto/16 :goto_2d8

    .line 2392
    :pswitch_c9
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    .line 2393
    goto/16 :goto_2d8

    .line 2389
    :pswitch_d3
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    .line 2390
    goto/16 :goto_2d8

    .line 2386
    :pswitch_dd
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    .line 2387
    goto/16 :goto_2d8

    .line 2383
    :pswitch_e7
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    .line 2384
    goto/16 :goto_2d8

    .line 2380
    :pswitch_f1
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    .line 2381
    goto/16 :goto_2d8

    .line 2377
    :pswitch_fb
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    .line 2378
    goto/16 :goto_2d8

    .line 2374
    :pswitch_105
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    .line 2375
    goto/16 :goto_2d8

    .line 2371
    :pswitch_10f
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    .line 2372
    goto/16 :goto_2d8

    .line 2368
    :pswitch_119
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    .line 2369
    goto/16 :goto_2d8

    .line 2361
    :pswitch_123
    const/4 v3, 0x1

    iput-boolean v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    .line 2362
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    .line 2363
    goto/16 :goto_2d8

    .line 2358
    :pswitch_130
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    .line 2359
    goto/16 :goto_2d8

    .line 2401
    :pswitch_13a
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 2402
    goto/16 :goto_2d8

    .line 2404
    :pswitch_144
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 2405
    goto/16 :goto_2d8

    .line 2395
    :pswitch_14e
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    .line 2396
    goto/16 :goto_2d8

    .line 2398
    :pswitch_158
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    .line 2399
    goto/16 :goto_2d8

    .line 2407
    :pswitch_162
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 2408
    goto/16 :goto_2d8

    .line 2327
    :pswitch_16c
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    .line 2328
    goto/16 :goto_2d8

    .line 2252
    :pswitch_176
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 2253
    goto/16 :goto_2d8

    .line 2255
    :pswitch_180
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 2256
    goto/16 :goto_2d8

    .line 2342
    :pswitch_18a
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    .line 2343
    goto/16 :goto_2d8

    .line 2288
    :pswitch_194
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    .line 2289
    goto/16 :goto_2d8

    .line 2285
    :pswitch_19e
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 2286
    goto/16 :goto_2d8

    .line 2336
    :pswitch_1a8
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    .line 2337
    goto/16 :goto_2d8

    .line 2249
    :pswitch_1b2
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    .line 2250
    goto/16 :goto_2d8

    .line 2246
    :pswitch_1bc
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 2247
    goto/16 :goto_2d8

    .line 2333
    :pswitch_1c6
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    .line 2334
    goto/16 :goto_2d8

    .line 2282
    :pswitch_1d0
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    .line 2283
    goto/16 :goto_2d8

    .line 2243
    :pswitch_1da
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 2244
    goto/16 :goto_2d8

    .line 2240
    :pswitch_1e4
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 2241
    goto/16 :goto_2d8

    .line 2330
    :pswitch_1ee
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    .line 2331
    goto/16 :goto_2d8

    .line 2348
    :pswitch_1f8
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    .line 2349
    goto/16 :goto_2d8

    .line 2354
    :pswitch_202
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    .line 2355
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    iget v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    aget v3, v3, v4

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    .line 2356
    goto/16 :goto_2d8

    .line 2351
    :pswitch_214
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    .line 2352
    goto/16 :goto_2d8

    .line 2324
    :pswitch_21e
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 2325
    goto/16 :goto_2d8

    .line 2279
    :pswitch_228
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    .line 2280
    goto/16 :goto_2d8

    .line 2276
    :pswitch_232
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    .line 2277
    goto/16 :goto_2d8

    .line 2273
    :pswitch_23c
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    .line 2274
    goto/16 :goto_2d8

    .line 2309
    :pswitch_246
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    .line 2310
    goto/16 :goto_2d8

    .line 2318
    :pswitch_250
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    .line 2319
    goto/16 :goto_2d8

    .line 2312
    :pswitch_25a
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    .line 2313
    goto/16 :goto_2d8

    .line 2306
    :pswitch_264
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 2307
    goto/16 :goto_2d8

    .line 2321
    :pswitch_26e
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    .line 2322
    goto :goto_2d8

    .line 2315
    :pswitch_277
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 2316
    goto :goto_2d8

    .line 2291
    :pswitch_280
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 2292
    goto :goto_2d8

    .line 2294
    :pswitch_289
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    .line 2295
    goto :goto_2d8

    .line 2339
    :pswitch_292
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    .line 2340
    goto :goto_2d8

    .line 2270
    :pswitch_29b
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    .line 2271
    goto :goto_2d8

    .line 2267
    :pswitch_2a4
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    .line 2268
    goto :goto_2d8

    .line 2410
    :pswitch_2ad
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 2411
    goto :goto_2d8

    .line 2258
    :pswitch_2b4
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 2259
    goto :goto_2d8

    .line 2261
    :pswitch_2bd
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 2262
    goto :goto_2d8

    .line 2345
    :pswitch_2c6
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    .line 2346
    goto :goto_2d8

    .line 2264
    :pswitch_2cf
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 2265
    nop

    .line 2198
    .end local v2    # "attr":I
    :goto_2d8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 2440
    .end local v1    # "i":I
    :cond_2dc
    return-void

    nop

    :pswitch_data_2de
    .packed-switch 0x1
        :pswitch_2cf
        :pswitch_2c6
        :pswitch_2bd
        :pswitch_2b4
        :pswitch_2ad
        :pswitch_2a4
        :pswitch_29b
        :pswitch_292
        :pswitch_289
        :pswitch_280
        :pswitch_277
        :pswitch_26e
        :pswitch_264
        :pswitch_25a
        :pswitch_250
        :pswitch_246
        :pswitch_23c
        :pswitch_232
        :pswitch_228
        :pswitch_21e
        :pswitch_214
        :pswitch_202
        :pswitch_1f8
        :pswitch_1ee
        :pswitch_1e4
        :pswitch_1da
        :pswitch_1d0
        :pswitch_1c6
        :pswitch_1bc
        :pswitch_1b2
        :pswitch_1a8
        :pswitch_19e
        :pswitch_194
        :pswitch_18a
        :pswitch_180
        :pswitch_176
        :pswitch_16c
        :pswitch_162
        :pswitch_158
        :pswitch_14e
        :pswitch_144
        :pswitch_13a
        :pswitch_130
        :pswitch_123
        :pswitch_119
        :pswitch_10f
        :pswitch_105
        :pswitch_fb
        :pswitch_f1
        :pswitch_e7
        :pswitch_dd
        :pswitch_d3
        :pswitch_c9
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_bf
        :pswitch_b5
        :pswitch_ab
        :pswitch_a1
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_99
        :pswitch_91
        :pswitch_8a
        :pswitch_80
        :pswitch_78
        :pswitch_6e
        :pswitch_44
    .end packed-switch
.end method

.method private sideToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "side"    # I

    .line 2117
    packed-switch p1, :pswitch_data_1c

    .line 2133
    const-string v0, "undefined"

    return-object v0

    .line 2131
    :pswitch_6
    const-string v0, "end"

    return-object v0

    .line 2129
    :pswitch_9
    const-string v0, "start"

    return-object v0

    .line 2127
    :pswitch_c
    const-string v0, "baseline"

    return-object v0

    .line 2125
    :pswitch_f
    const-string v0, "bottom"

    return-object v0

    .line 2123
    :pswitch_12
    const-string v0, "top"

    return-object v0

    .line 2121
    :pswitch_15
    const-string v0, "right"

    return-object v0

    .line 2119
    :pswitch_18
    const-string v0, "left"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public addToHorizontalChain(III)V
    .registers 12
    .param p1, "viewId"    # I
    .param p2, "leftId"    # I
    .param p3, "rightId"    # I

    .line 1909
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-nez p2, :cond_6

    const/4 v4, 0x1

    goto :goto_7

    :cond_6
    const/4 v4, 0x2

    :goto_7
    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1910
    const/4 v2, 0x2

    if-nez p3, :cond_14

    const/4 v4, 0x2

    goto :goto_15

    :cond_14
    const/4 v4, 0x1

    :goto_15
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1911
    if-eqz p2, :cond_27

    .line 1912
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1914
    :cond_27
    if-eqz p3, :cond_32

    .line 1915
    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1917
    :cond_32
    return-void
.end method

.method public addToHorizontalChainRTL(III)V
    .registers 12
    .param p1, "viewId"    # I
    .param p2, "leftId"    # I
    .param p3, "rightId"    # I

    .line 1927
    const/4 v6, 0x6

    const/4 v7, 0x7

    if-nez p2, :cond_6

    const/4 v4, 0x6

    goto :goto_7

    :cond_6
    const/4 v4, 0x7

    :goto_7
    const/4 v5, 0x0

    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1928
    const/4 v2, 0x7

    if-nez p3, :cond_14

    const/4 v4, 0x7

    goto :goto_15

    :cond_14
    const/4 v4, 0x6

    :goto_15
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1929
    if-eqz p2, :cond_27

    .line 1930
    const/4 v2, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1932
    :cond_27
    if-eqz p3, :cond_32

    .line 1933
    const/4 v2, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1935
    :cond_32
    return-void
.end method

.method public addToVerticalChain(III)V
    .registers 18
    .param p1, "viewId"    # I
    .param p2, "topId"    # I
    .param p3, "bottomId"    # I

    .line 1945
    const/4 v6, 0x3

    const/4 v7, 0x4

    if-nez p2, :cond_6

    const/4 v4, 0x3

    goto :goto_7

    :cond_6
    const/4 v4, 0x4

    :goto_7
    const/4 v5, 0x0

    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1946
    const/4 v10, 0x4

    if-nez p3, :cond_15

    const/4 v12, 0x4

    goto :goto_16

    :cond_15
    const/4 v12, 0x3

    :goto_16
    const/4 v13, 0x0

    move-object v8, p0

    move v9, p1

    move/from16 v11, p3

    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1947
    if-eqz p2, :cond_2a

    .line 1948
    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1950
    :cond_2a
    if-eqz p2, :cond_36

    .line 1951
    const/4 v2, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1953
    :cond_36
    return-void
.end method

.method public applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3
    .param p1, "constraintLayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 789
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 790
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 791
    return-void
.end method

.method applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 11
    .param p1, "constraintLayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 797
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 798
    .local v0, "count":I
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 800
    .local v1, "used":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    const/4 v3, -0x1

    if-ge v2, v0, :cond_f2

    .line 801
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 802
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 803
    .local v5, "id":I
    if-eq v5, v3, :cond_ea

    .line 806
    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e6

    .line 807
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 808
    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 809
    .local v6, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    instance-of v7, v4, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v7, :cond_43

    .line 810
    const/4 v7, 0x1

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    .line 812
    :cond_43
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    if-eq v7, v3, :cond_78

    .line 813
    iget v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    packed-switch v3, :pswitch_data_172

    goto :goto_78

    .line 815
    :pswitch_4d
    move-object v3, v4

    check-cast v3, Landroidx/constraintlayout/widget/Barrier;

    .line 816
    .local v3, "barrier":Landroidx/constraintlayout/widget/Barrier;
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/widget/Barrier;->setId(I)V

    .line 817
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 818
    iget-boolean v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    .line 819
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    if-eqz v7, :cond_67

    .line 820
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    goto :goto_78

    .line 821
    :cond_67
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    if-eqz v7, :cond_78

    .line 822
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    invoke-direct {p0, v3, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 824
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    .line 829
    .end local v3    # "barrier":Landroidx/constraintlayout/widget/Barrier;
    :cond_78
    :goto_78
    nop

    .line 830
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 831
    .local v3, "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 832
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 834
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_e6

    .line 835
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 836
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setRotation(F)V

    .line 837
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setRotationX(F)V

    .line 838
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setRotationY(F)V

    .line 839
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleX(F)V

    .line 840
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleY(F)V

    .line 841
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_bb

    .line 842
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setPivotX(F)V

    .line 844
    :cond_bb
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_c8

    .line 845
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setPivotY(F)V

    .line 847
    :cond_c8
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 848
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 849
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_e6

    .line 850
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationZ(F)V

    .line 851
    iget-boolean v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v7, :cond_e6

    .line 852
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setElevation(F)V

    .line 800
    .end local v3    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "id":I
    .end local v6    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_e6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 804
    .restart local v4    # "view":Landroid/view/View;
    .restart local v5    # "id":I
    :cond_ea
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 858
    .end local v2    # "i":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "id":I
    :cond_f2
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_171

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 859
    .local v4, "id":Ljava/lang/Integer;
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 860
    .local v5, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    if-eq v6, v3, :cond_152

    .line 861
    iget v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    packed-switch v6, :pswitch_data_178

    goto :goto_152

    .line 863
    :pswitch_114
    new-instance v6, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    .line 864
    .local v6, "barrier":Landroidx/constraintlayout/widget/Barrier;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/Barrier;->setId(I)V

    .line 865
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    if-eqz v7, :cond_12e

    .line 866
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    goto :goto_13f

    .line 867
    :cond_12e
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    if-eqz v7, :cond_13f

    .line 868
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIdString:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 870
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    .line 872
    :cond_13f
    :goto_13f
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 873
    nop

    .line 874
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v7

    .line 875
    .local v7, "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->validateParams()V

    .line 876
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 877
    invoke-virtual {p1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    .end local v6    # "barrier":Landroidx/constraintlayout/widget/Barrier;
    .end local v7    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_152
    :goto_152
    iget-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    if-eqz v6, :cond_170

    .line 882
    new-instance v6, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    .line 883
    .local v6, "g":Landroidx/constraintlayout/widget/Guideline;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/Guideline;->setId(I)V

    .line 884
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v7

    .line 885
    .restart local v7    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 886
    invoke-virtual {p1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    .end local v4    # "id":Ljava/lang/Integer;
    .end local v5    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v6    # "g":Landroidx/constraintlayout/widget/Guideline;
    .end local v7    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_170
    goto :goto_f6

    .line 889
    :cond_171
    return-void

    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_4d
    .end packed-switch

    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_114
    .end packed-switch
.end method

.method public center(IIIIIIIF)V
    .registers 18
    .param p1, "centerID"    # I
    .param p2, "firstID"    # I
    .param p3, "firstSide"    # I
    .param p4, "firstMargin"    # I
    .param p5, "secondId"    # I
    .param p6, "secondSide"    # I
    .param p7, "secondMargin"    # I
    .param p8, "bias"    # F

    .line 909
    move-object v6, p0

    move v7, p3

    move/from16 v8, p8

    const-string v0, "margin must be > 0"

    if-ltz p4, :cond_92

    .line 912
    if-ltz p7, :cond_8c

    .line 915
    const/4 v0, 0x0

    cmpg-float v0, v8, v0

    if-lez v0, :cond_84

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v8, v0

    if-gtz v0, :cond_84

    .line 919
    const/4 v0, 0x1

    if-eq v7, v0, :cond_63

    const/4 v0, 0x2

    if-ne v7, v0, :cond_1c

    goto :goto_63

    .line 924
    :cond_1c
    const/4 v0, 0x6

    if-eq v7, v0, :cond_43

    const/4 v0, 0x7

    if-ne v7, v0, :cond_23

    goto :goto_43

    .line 930
    :cond_23
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 931
    const/4 v2, 0x4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 932
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 933
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    goto :goto_83

    .line 925
    .end local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_43
    :goto_43
    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 926
    const/4 v2, 0x7

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 927
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 928
    .restart local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 929
    .end local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    goto :goto_83

    .line 920
    :cond_63
    :goto_63
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 921
    const/4 v2, 0x2

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 922
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 923
    .restart local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 924
    .end local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    nop

    .line 935
    :goto_83
    return-void

    .line 916
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bias must be between 0 and 1 inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_8c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 910
    :cond_92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public centerHorizontally(II)V
    .registers 12
    .param p1, "viewId"    # I
    .param p2, "toView"    # I

    .line 1319
    if-nez p2, :cond_10

    .line 1320
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_1d

    .line 1322
    :cond_10
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    .line 1324
    :goto_1d
    return-void
.end method

.method public centerHorizontally(IIIIIIIF)V
    .registers 18
    .param p1, "centerID"    # I
    .param p2, "leftId"    # I
    .param p3, "leftSide"    # I
    .param p4, "leftMargin"    # I
    .param p5, "rightId"    # I
    .param p6, "rightSide"    # I
    .param p7, "rightMargin"    # I
    .param p8, "bias"    # F

    .line 951
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 952
    const/4 v5, 0x2

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 953
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 954
    .local v1, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move/from16 v2, p8

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 955
    return-void
.end method

.method public centerHorizontallyRtl(II)V
    .registers 12
    .param p1, "viewId"    # I
    .param p2, "toView"    # I

    .line 1333
    if-nez p2, :cond_10

    .line 1334
    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_1d

    .line 1336
    :cond_10
    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    .line 1338
    :goto_1d
    return-void
.end method

.method public centerHorizontallyRtl(IIIIIIIF)V
    .registers 18
    .param p1, "centerID"    # I
    .param p2, "startId"    # I
    .param p3, "startSide"    # I
    .param p4, "startMargin"    # I
    .param p5, "endId"    # I
    .param p6, "endSide"    # I
    .param p7, "endMargin"    # I
    .param p8, "bias"    # F

    .line 971
    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 972
    const/4 v5, 0x7

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 973
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 974
    .local v1, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move/from16 v2, p8

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 975
    return-void
.end method

.method public centerVertically(II)V
    .registers 12
    .param p1, "viewId"    # I
    .param p2, "toView"    # I

    .line 1348
    if-nez p2, :cond_10

    .line 1349
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_1d

    .line 1351
    :cond_10
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    .line 1353
    :goto_1d
    return-void
.end method

.method public centerVertically(IIIIIIIF)V
    .registers 18
    .param p1, "centerID"    # I
    .param p2, "topId"    # I
    .param p3, "topSide"    # I
    .param p4, "topMargin"    # I
    .param p5, "bottomId"    # I
    .param p6, "bottomSide"    # I
    .param p7, "bottomMargin"    # I
    .param p8, "bias"    # F

    .line 991
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 992
    const/4 v5, 0x4

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 993
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 994
    .local v1, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    move/from16 v2, p8

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    .line 995
    return-void
.end method

.method public clear(I)V
    .registers 4
    .param p1, "viewId"    # I

    .line 1361
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    return-void
.end method

.method public clear(II)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "anchor"    # I

    .line 1371
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1372
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1373
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    const/4 v1, -0x1

    packed-switch p2, :pswitch_data_5e

    .line 1415
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown constraint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1409
    :pswitch_24
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 1410
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    .line 1411
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    .line 1412
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    .line 1413
    goto :goto_5c

    .line 1403
    :pswitch_2d
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 1404
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    .line 1405
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    .line 1406
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    .line 1407
    goto :goto_5c

    .line 1400
    :pswitch_36
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1401
    goto :goto_5c

    .line 1393
    :pswitch_39
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1394
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1395
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    .line 1396
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 1397
    goto :goto_5c

    .line 1387
    :pswitch_42
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 1388
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1389
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    .line 1390
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    .line 1391
    goto :goto_5c

    .line 1381
    :pswitch_4b
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    .line 1382
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 1383
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    .line 1384
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    .line 1385
    goto :goto_5c

    .line 1375
    :pswitch_54
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 1376
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 1377
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    .line 1378
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 1418
    .end local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_5c
    :goto_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4b
        :pswitch_42
        :pswitch_39
        :pswitch_36
        :pswitch_2d
        :pswitch_24
    .end packed-switch
.end method

.method public clone(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constraintLayoutId"    # I

    .line 684
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 685
    return-void
.end method

.method public clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 15
    .param p1, "constraintLayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 705
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 706
    .local v0, "count":I
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 707
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_d6

    .line 708
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 709
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 711
    .local v3, "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 712
    .local v4, "id":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_ce

    .line 715
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 716
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_38
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 719
    .local v5, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$100(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 720
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    .line 721
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_b1

    .line 722
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    .line 723
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    .line 724
    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    .line 725
    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    .line 726
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    .line 727
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    .line 729
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v6

    .line 730
    .local v6, "pivotX":F
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v7

    .line 732
    .local v7, "pivotY":F
    float-to-double v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    if-nez v12, :cond_8b

    float-to-double v8, v7

    cmpl-double v12, v8, v10

    if-eqz v12, :cond_8f

    .line 733
    :cond_8b
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    .line 734
    iput v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    .line 737
    :cond_8f
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v8

    iput v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    .line 738
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    iput v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    .line 739
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_b1

    .line 740
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v8

    iput v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    .line 741
    iget-boolean v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v8, :cond_b1

    .line 742
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v8

    iput v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    .line 746
    .end local v6    # "pivotX":F
    .end local v7    # "pivotY":F
    :cond_b1
    instance-of v6, v2, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v6, :cond_ca

    .line 747
    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    .line 748
    .local v6, "barrier":Landroidx/constraintlayout/widget/Barrier;
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->allowsGoneWidget()Z

    move-result v7

    iput-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    .line 749
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getReferencedIds()[I

    move-result-object v7

    iput-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 750
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v7

    iput v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    .line 707
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v4    # "id":I
    .end local v5    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v6    # "barrier":Landroidx/constraintlayout/widget/Barrier;
    :cond_ca
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 713
    .restart local v2    # "view":Landroid/view/View;
    .restart local v3    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .restart local v4    # "id":I
    :cond_ce
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 753
    .end local v1    # "i":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v4    # "id":I
    :cond_d6
    return-void
.end method

.method public clone(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 6
    .param p1, "set"    # Landroidx/constraintlayout/widget/ConstraintSet;

    .line 693
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 694
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 695
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    .end local v1    # "key":Ljava/lang/Integer;
    goto :goto_f

    .line 697
    :cond_2d
    return-void
.end method

.method public clone(Landroidx/constraintlayout/widget/Constraints;)V
    .registers 11
    .param p1, "constraints"    # Landroidx/constraintlayout/widget/Constraints;

    .line 761
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Constraints;->getChildCount()I

    move-result v0

    .line 762
    .local v0, "count":I
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 763
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_5c

    .line 764
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Constraints;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 765
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 767
    .local v3, "param":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 768
    .local v4, "id":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_54

    .line 771
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 772
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_38
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 775
    .local v5, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    instance-of v6, v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v6, :cond_4e

    .line 776
    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 777
    .local v6, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    invoke-static {v5, v6, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$200(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    .line 779
    .end local v6    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    :cond_4e
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$300(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    .line 763
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "param":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    .end local v4    # "id":I
    .end local v5    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 769
    .restart local v2    # "view":Landroid/view/View;
    .restart local v3    # "param":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    .restart local v4    # "id":I
    :cond_54
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 781
    .end local v1    # "i":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "param":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    .end local v4    # "id":I
    :cond_5c
    return-void
.end method

.method public connect(IIII)V
    .registers 15
    .param p1, "startID"    # I
    .param p2, "startSide"    # I
    .param p3, "endID"    # I
    .param p4, "endSide"    # I

    .line 1219
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1220
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    :cond_1b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1223
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const-string v7, "right to "

    const-string v8, " undefined"

    const/4 v9, -0x1

    packed-switch p2, :pswitch_data_1ac

    .line 1307
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1308
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1296
    :pswitch_60
    if-ne p4, v2, :cond_68

    .line 1297
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    .line 1298
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    goto/16 :goto_18a

    .line 1299
    :cond_68
    if-ne p4, v3, :cond_70

    .line 1300
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 1301
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    goto/16 :goto_18a

    .line 1303
    :cond_70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1285
    :pswitch_8f
    if-ne p4, v3, :cond_97

    .line 1286
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    .line 1287
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    goto/16 :goto_18a

    .line 1288
    :cond_97
    if-ne p4, v2, :cond_9f

    .line 1289
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 1290
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    goto/16 :goto_18a

    .line 1292
    :cond_9f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1274
    :pswitch_be
    const/4 v1, 0x5

    if-ne p4, v1, :cond_cd

    .line 1275
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1276
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1277
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1278
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1279
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_18a

    .line 1281
    :cond_cd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1261
    :pswitch_ec
    if-ne p4, v4, :cond_f6

    .line 1262
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1263
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1264
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_18a

    .line 1265
    :cond_f6
    if-ne p4, v5, :cond_100

    .line 1266
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1267
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1268
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_18a

    .line 1270
    :cond_100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1248
    :pswitch_11f
    if-ne p4, v5, :cond_128

    .line 1249
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1250
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 1251
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_18a

    .line 1252
    :cond_128
    if-ne p4, v4, :cond_131

    .line 1253
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 1254
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1255
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_18a

    .line 1257
    :cond_131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1236
    :pswitch_150
    if-ne p4, v6, :cond_157

    .line 1237
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 1238
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    goto :goto_18a

    .line 1240
    :cond_157
    if-ne p4, v1, :cond_15e

    .line 1241
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    .line 1242
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    goto :goto_18a

    .line 1244
    :cond_15e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1225
    :pswitch_17d
    if-ne p4, v6, :cond_184

    .line 1226
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 1227
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    goto :goto_18a

    .line 1228
    :cond_184
    if-ne p4, v1, :cond_18b

    .line 1229
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 1230
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 1310
    :goto_18a
    return-void

    .line 1232
    :cond_18b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "left to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_1ac
    .packed-switch 0x1
        :pswitch_17d
        :pswitch_150
        :pswitch_11f
        :pswitch_ec
        :pswitch_be
        :pswitch_8f
        :pswitch_60
    .end packed-switch
.end method

.method public connect(IIIII)V
    .registers 16
    .param p1, "startID"    # I
    .param p2, "startSide"    # I
    .param p3, "endID"    # I
    .param p4, "endSide"    # I
    .param p5, "margin"    # I

    .line 1106
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1107
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    :cond_1b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1110
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const-string v7, "right to "

    const-string v8, " undefined"

    const/4 v9, -0x1

    packed-switch p2, :pswitch_data_1b6

    .line 1205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1206
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1193
    :pswitch_60
    if-ne p4, v2, :cond_67

    .line 1194
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    .line 1195
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    goto :goto_6d

    .line 1196
    :cond_67
    if-ne p4, v3, :cond_71

    .line 1197
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 1198
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    .line 1202
    :goto_6d
    iput p5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    .line 1203
    goto/16 :goto_194

    .line 1200
    :cond_71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1181
    :pswitch_90
    if-ne p4, v3, :cond_97

    .line 1182
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    .line 1183
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    goto :goto_9d

    .line 1184
    :cond_97
    if-ne p4, v2, :cond_a1

    .line 1185
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 1186
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    .line 1190
    :goto_9d
    iput p5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    .line 1191
    goto/16 :goto_194

    .line 1188
    :cond_a1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1170
    :pswitch_c0
    const/4 v1, 0x5

    if-ne p4, v1, :cond_cf

    .line 1171
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1172
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1173
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1174
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1175
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_194

    .line 1177
    :cond_cf
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1154
    :pswitch_ee
    if-ne p4, v4, :cond_f7

    .line 1155
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1156
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1157
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_ff

    .line 1159
    :cond_f7
    if-ne p4, v5, :cond_103

    .line 1160
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1161
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1162
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1167
    :goto_ff
    iput p5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    .line 1168
    goto/16 :goto_194

    .line 1165
    :cond_103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1139
    :pswitch_122
    if-ne p4, v5, :cond_12b

    .line 1140
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1141
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 1142
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_133

    .line 1143
    :cond_12b
    if-ne p4, v4, :cond_136

    .line 1144
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 1145
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 1146
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1151
    :goto_133
    iput p5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    .line 1152
    goto :goto_194

    .line 1149
    :cond_136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1125
    :pswitch_155
    if-ne p4, v6, :cond_15c

    .line 1126
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 1127
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    goto :goto_162

    .line 1129
    :cond_15c
    if-ne p4, v1, :cond_165

    .line 1130
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    .line 1131
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 1136
    :goto_162
    iput p5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    .line 1137
    goto :goto_194

    .line 1134
    :cond_165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1112
    :pswitch_184
    if-ne p4, v6, :cond_18b

    .line 1113
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 1114
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    goto :goto_191

    .line 1115
    :cond_18b
    if-ne p4, v1, :cond_195

    .line 1116
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 1117
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 1122
    :goto_191
    iput p5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    .line 1123
    nop

    .line 1208
    :goto_194
    return-void

    .line 1120
    :cond_195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Left to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_184
        :pswitch_155
        :pswitch_122
        :pswitch_ee
        :pswitch_c0
        :pswitch_90
        :pswitch_60
    .end packed-switch
.end method

.method public constrainCircle(IIIF)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "id"    # I
    .param p3, "radius"    # I
    .param p4, "angle"    # F

    .line 1741
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 1742
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    .line 1743
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    .line 1744
    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    .line 1745
    return-void
.end method

.method public constrainDefaultHeight(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .line 1831
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightDefault:I

    .line 1832
    return-void
.end method

.method public constrainDefaultWidth(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .line 1844
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthDefault:I

    .line 1845
    return-void
.end method

.method public constrainHeight(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .line 1714
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    .line 1715
    return-void
.end method

.method public constrainMaxHeight(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .line 1757
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMax:I

    .line 1758
    return-void
.end method

.method public constrainMaxWidth(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .line 1770
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMax:I

    .line 1771
    return-void
.end method

.method public constrainMinHeight(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .line 1783
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMin:I

    .line 1784
    return-void
.end method

.method public constrainMinWidth(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .line 1796
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMin:I

    .line 1797
    return-void
.end method

.method public constrainPercentHeight(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "percent"    # F

    .line 1818
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    .line 1819
    return-void
.end method

.method public constrainPercentWidth(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "percent"    # F

    .line 1807
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    .line 1808
    return-void
.end method

.method public constrainWidth(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .line 1727
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    .line 1728
    return-void
.end method

.method public create(II)V
    .registers 5
    .param p1, "guidelineID"    # I
    .param p2, "orientation"    # I

    .line 2047
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 2048
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 2049
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    .line 2050
    return-void
.end method

.method public varargs createBarrier(II[I)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "direction"    # I
    .param p3, "referenced"    # [I

    .line 2062
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 2063
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    const/4 v1, 0x1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    .line 2064
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    .line 2065
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 2066
    iput-object p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 2067
    return-void
.end method

.method public createHorizontalChain(IIII[I[FI)V
    .registers 18
    .param p1, "leftId"    # I
    .param p2, "leftSide"    # I
    .param p3, "rightId"    # I
    .param p4, "rightSide"    # I
    .param p5, "chainIds"    # [I
    .param p6, "weights"    # [F
    .param p7, "style"    # I

    .line 1048
    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    .line 1049
    return-void
.end method

.method public createHorizontalChainRtl(IIII[I[FI)V
    .registers 18
    .param p1, "startId"    # I
    .param p2, "startSide"    # I
    .param p3, "endId"    # I
    .param p4, "endSide"    # I
    .param p5, "chainIds"    # [I
    .param p6, "weights"    # [F
    .param p7, "style"    # I

    .line 1065
    const/4 v8, 0x6

    const/4 v9, 0x7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    .line 1066
    return-void
.end method

.method public createVerticalChain(IIII[I[FI)V
    .registers 20
    .param p1, "topId"    # I
    .param p2, "topSide"    # I
    .param p3, "bottomId"    # I
    .param p4, "bottomSide"    # I
    .param p5, "chainIds"    # [I
    .param p6, "weights"    # [F
    .param p7, "style"    # I

    .line 1011
    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    array-length v0, v7

    const-string v1, "must have 2 or more widgets in a chain"

    const/4 v2, 0x2

    if-lt v0, v2, :cond_77

    .line 1014
    if-eqz v8, :cond_18

    array-length v0, v8

    array-length v2, v7

    if-ne v0, v2, :cond_12

    goto :goto_18

    .line 1015
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_18
    :goto_18
    const/4 v0, 0x0

    if-eqz v8, :cond_25

    .line 1018
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    aget v2, v8, v0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    .line 1020
    :cond_25
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    move/from16 v9, p7

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 1022
    aget v1, v7, v0

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1023
    const/4 v0, 0x1

    move v10, v0

    .local v10, "i":I
    :goto_3b
    array-length v0, v7

    if-ge v10, v0, :cond_68

    .line 1024
    aget v11, v7, v10

    .line 1025
    .local v11, "chainId":I
    aget v1, v7, v10

    const/4 v2, 0x3

    add-int/lit8 v0, v10, -0x1

    aget v3, v7, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1026
    add-int/lit8 v0, v10, -0x1

    aget v1, v7, v0

    const/4 v2, 0x4

    aget v3, v7, v10

    const/4 v4, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1027
    if-eqz v8, :cond_65

    .line 1028
    aget v0, v7, v10

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    aget v1, v8, v10

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    .line 1023
    .end local v11    # "chainId":I
    :cond_65
    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    .line 1031
    .end local v10    # "i":I
    :cond_68
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget v1, v7, v0

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1032
    return-void

    .line 1012
    :cond_77
    move/from16 v9, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_80

    :goto_7f
    throw v0

    :goto_80
    goto :goto_7f
.end method

.method public getApplyElevation(I)Z
    .registers 3
    .param p1, "viewId"    # I

    .line 1547
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    return v0
.end method

.method public getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .registers 3
    .param p1, "mId"    # I

    .line 355
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/content/Context;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 2145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2146
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 2147
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 2148
    .local v2, "document":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2151
    .local v3, "tagName":Ljava/lang/String;
    :try_start_a
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 2152
    .local v4, "eventType":I
    :goto_e
    const/4 v5, 0x1

    if-eq v4, v5, :cond_46

    .line 2154
    packed-switch v4, :pswitch_data_52

    :pswitch_14
    goto :goto_40

    .line 2167
    :pswitch_15
    const/4 v3, 0x0

    .line 2168
    goto :goto_40

    .line 2159
    :pswitch_17
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 2160
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v6

    .line 2161
    .local v6, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    const-string v7, "Guideline"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 2162
    iput-boolean v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 2164
    :cond_2e
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2165
    goto :goto_40

    .line 2156
    .end local v6    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :pswitch_3a
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 2157
    nop

    .line 2153
    :goto_40
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_44
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_44} :catch_4c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_44} :catch_47

    move v4, v5

    goto :goto_e

    .line 2152
    .end local v4    # "eventType":I
    :cond_46
    goto :goto_50

    .line 2175
    :catch_47
    move-exception v4

    .line 2176
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 2173
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4c
    move-exception v4

    .line 2174
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 2177
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_50
    nop

    .line 2178
    :goto_51
    return-void

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_14
        :pswitch_17
        :pswitch_15
    .end packed-switch
.end method

.method public removeFromHorizontalChain(I)V
    .registers 13
    .param p1, "viewId"    # I

    .line 1995
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 1996
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1997
    .local v6, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 1998
    .local v7, "leftId":I
    iget v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 1999
    .local v8, "rightId":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_6a

    if-eq v8, v0, :cond_23

    goto :goto_6a

    .line 2017
    :cond_23
    iget v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 2018
    .local v9, "startId":I
    iget v10, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 2019
    .local v10, "endId":I
    if-ne v9, v0, :cond_2b

    if-eq v10, v0, :cond_61

    .line 2020
    :cond_2b
    if-eq v9, v0, :cond_40

    if-eq v10, v0, :cond_40

    .line 2022
    const/4 v2, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v9

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2023
    const/4 v2, 0x6

    const/4 v4, 0x7

    move v1, v10

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_61

    .line 2024
    :cond_40
    if-ne v7, v0, :cond_44

    if-eq v10, v0, :cond_61

    .line 2025
    :cond_44
    iget v1, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    if-eq v1, v0, :cond_53

    .line 2027
    const/4 v2, 0x7

    iget v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_61

    .line 2028
    :cond_53
    iget v1, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    if-eq v1, v0, :cond_61

    .line 2030
    const/4 v2, 0x6

    iget v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2034
    :cond_61
    :goto_61
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 2035
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    goto :goto_a8

    .line 2000
    .end local v9    # "startId":I
    .end local v10    # "endId":I
    :cond_6a
    :goto_6a
    if-eq v7, v0, :cond_7f

    if-eq v8, v0, :cond_7f

    .line 2002
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2003
    const/4 v2, 0x1

    const/4 v4, 0x2

    move v1, v8

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_a0

    .line 2004
    :cond_7f
    if-ne v7, v0, :cond_83

    if-eq v8, v0, :cond_a0

    .line 2005
    :cond_83
    iget v1, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    if-eq v1, v0, :cond_92

    .line 2007
    const/4 v2, 0x2

    iget v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_a0

    .line 2008
    :cond_92
    iget v1, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    if-eq v1, v0, :cond_a0

    .line 2010
    const/4 v2, 0x1

    iget v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2013
    :cond_a0
    :goto_a0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 2014
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 2038
    .end local v6    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v7    # "leftId":I
    .end local v8    # "rightId":I
    :cond_a8
    :goto_a8
    return-void
.end method

.method public removeFromVerticalChain(I)V
    .registers 11
    .param p1, "viewId"    # I

    .line 1963
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1964
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1965
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 1966
    .local v7, "topId":I
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 1967
    .local v8, "bottomId":I
    const/4 v1, -0x1

    if-ne v7, v1, :cond_21

    if-eq v8, v1, :cond_57

    .line 1968
    :cond_21
    if-eq v7, v1, :cond_36

    if-eq v8, v1, :cond_36

    .line 1970
    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v7

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1971
    const/4 v3, 0x3

    const/4 v5, 0x4

    move v2, v8

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_57

    .line 1972
    :cond_36
    if-ne v7, v1, :cond_3a

    if-eq v8, v1, :cond_57

    .line 1973
    :cond_3a
    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    if-eq v2, v1, :cond_49

    .line 1975
    const/4 v3, 0x4

    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_57

    .line 1976
    :cond_49
    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    if-eq v2, v1, :cond_57

    .line 1978
    const/4 v3, 0x3

    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1983
    .end local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v7    # "topId":I
    .end local v8    # "bottomId":I
    :cond_57
    :goto_57
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 1984
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 1985
    return-void
.end method

.method public setAlpha(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "alpha"    # F

    .line 1538
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    .line 1539
    return-void
.end method

.method public setApplyElevation(IZ)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "apply"    # Z

    .line 1558
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput-boolean p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    .line 1559
    return-void
.end method

.method public setBarrierType(II)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 2108
    return-void
.end method

.method public setDimensionRatio(ILjava/lang/String;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "ratio"    # Ljava/lang/String;

    .line 1518
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput-object p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 1519
    return-void
.end method

.method public setElevation(IF)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "elevation"    # F

    .line 1568
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    .line 1569
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    .line 1570
    return-void
.end method

.method public setGoneMargin(III)V
    .registers 7
    .param p1, "viewId"    # I
    .param p2, "anchor"    # I
    .param p3, "value"    # I

    .line 1463
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 1464
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    packed-switch p2, :pswitch_data_2a

    .line 1486
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown constraint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1483
    :pswitch_f
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    .line 1484
    goto :goto_29

    .line 1480
    :pswitch_12
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    .line 1481
    goto :goto_29

    .line 1478
    :pswitch_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "baseline does not support margins"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1475
    :pswitch_1d
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 1476
    goto :goto_29

    .line 1472
    :pswitch_20
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    .line 1473
    goto :goto_29

    .line 1469
    :pswitch_23
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    .line 1470
    goto :goto_29

    .line 1466
    :pswitch_26
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 1467
    nop

    .line 1488
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public setGuidelineBegin(II)V
    .registers 5
    .param p1, "guidelineID"    # I
    .param p2, "margin"    # I

    .line 2076
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    .line 2077
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    .line 2078
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    .line 2080
    return-void
.end method

.method public setGuidelineEnd(II)V
    .registers 5
    .param p1, "guidelineID"    # I
    .param p2, "margin"    # I

    .line 2089
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    .line 2090
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    .line 2091
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    .line 2092
    return-void
.end method

.method public setGuidelinePercent(IF)V
    .registers 5
    .param p1, "guidelineID"    # I
    .param p2, "ratio"    # F

    .line 2101
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    .line 2102
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    .line 2103
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    .line 2104
    return-void
.end method

.method public setHorizontalBias(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "bias"    # F

    .line 1497
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 1498
    return-void
.end method

.method public setHorizontalChainStyle(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "chainStyle"    # I

    .line 1882
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 1883
    return-void
.end method

.method public setHorizontalWeight(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "weight"    # F

    .line 1856
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    .line 1857
    return-void
.end method

.method public setMargin(III)V
    .registers 7
    .param p1, "viewId"    # I
    .param p2, "anchor"    # I
    .param p3, "value"    # I

    .line 1428
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 1429
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    packed-switch p2, :pswitch_data_2a

    .line 1451
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown constraint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1448
    :pswitch_f
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    .line 1449
    goto :goto_29

    .line 1445
    :pswitch_12
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    .line 1446
    goto :goto_29

    .line 1443
    :pswitch_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "baseline does not support margins"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1440
    :pswitch_1d
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    .line 1441
    goto :goto_29

    .line 1437
    :pswitch_20
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    .line 1438
    goto :goto_29

    .line 1434
    :pswitch_23
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    .line 1435
    goto :goto_29

    .line 1431
    :pswitch_26
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    .line 1432
    nop

    .line 1453
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public setRotation(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "rotation"    # F

    .line 1579
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    .line 1580
    return-void
.end method

.method public setRotationX(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "rotationX"    # F

    .line 1589
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    .line 1590
    return-void
.end method

.method public setRotationY(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "rotationY"    # F

    .line 1599
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    .line 1600
    return-void
.end method

.method public setScaleX(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "scaleX"    # F

    .line 1609
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    .line 1610
    return-void
.end method

.method public setScaleY(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "scaleY"    # F

    .line 1619
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    .line 1620
    return-void
.end method

.method public setTransformPivot(IFF)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "transformPivotX"    # F
    .param p3, "transformPivotY"    # F

    .line 1656
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 1657
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    .line 1658
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    .line 1659
    return-void
.end method

.method public setTransformPivotX(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "transformPivotX"    # F

    .line 1631
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    .line 1632
    return-void
.end method

.method public setTransformPivotY(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "transformPivotY"    # F

    .line 1643
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    .line 1644
    return-void
.end method

.method public setTranslation(IFF)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F

    .line 1689
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 1690
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    .line 1691
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    .line 1692
    return-void
.end method

.method public setTranslationX(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "translationX"    # F

    .line 1668
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    .line 1669
    return-void
.end method

.method public setTranslationY(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "translationY"    # F

    .line 1678
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    .line 1679
    return-void
.end method

.method public setTranslationZ(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "translationZ"    # F

    .line 1701
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    .line 1702
    return-void
.end method

.method public setVerticalBias(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "bias"    # F

    .line 1507
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    .line 1508
    return-void
.end method

.method public setVerticalChainStyle(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "chainStyle"    # I

    .line 1898
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 1899
    return-void
.end method

.method public setVerticalWeight(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "weight"    # F

    .line 1867
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    .line 1868
    return-void
.end method

.method public setVisibility(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .line 1528
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    .line 1529
    return-void
.end method
