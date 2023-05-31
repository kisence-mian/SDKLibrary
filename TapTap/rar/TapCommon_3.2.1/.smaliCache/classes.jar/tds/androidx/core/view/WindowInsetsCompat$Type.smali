.class public final Ltds/androidx/core/view/WindowInsetsCompat$Type;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/core/view/WindowInsetsCompat$Type$InsetsType;
    }
.end annotation


# static fields
.field static final CAPTION_BAR:I = 0x4

.field static final DISPLAY_CUTOUT:I = 0x80

.field static final FIRST:I = 0x1

.field static final IME:I = 0x8

.field static final LAST:I = 0x100

.field static final MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final NAVIGATION_BARS:I = 0x2

.field static final SIZE:I = 0x9

.field static final STATUS_BARS:I = 0x1

.field static final SYSTEM_GESTURES:I = 0x10

.field static final TAPPABLE_ELEMENT:I = 0x40

.field static final WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static all()I
    .registers 1

    .line 1960
    const/4 v0, -0x1

    return v0
.end method

.method public static captionBar()I
    .registers 1

    .line 1879
    const/4 v0, 0x4

    return v0
.end method

.method public static displayCutout()I
    .registers 1

    .line 1940
    const/16 v0, 0x80

    return v0
.end method

.method public static ime()I
    .registers 1

    .line 1887
    const/16 v0, 0x8

    return v0
.end method

.method static indexOf(I)I
    .registers 4
    .param p0, "type"    # I

    .line 1964
    sparse-switch p0, :sswitch_data_30

    .line 1984
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1982
    :sswitch_1c
    const/16 v0, 0x8

    return v0

    .line 1980
    :sswitch_1f
    const/4 v0, 0x7

    return v0

    .line 1978
    :sswitch_21
    const/4 v0, 0x6

    return v0

    .line 1976
    :sswitch_23
    const/4 v0, 0x5

    return v0

    .line 1974
    :sswitch_25
    const/4 v0, 0x4

    return v0

    .line 1972
    :sswitch_27
    const/4 v0, 0x3

    return v0

    .line 1970
    :sswitch_29
    const/4 v0, 0x2

    return v0

    .line 1968
    :sswitch_2b
    const/4 v0, 0x1

    return v0

    .line 1966
    :sswitch_2d
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_2d
        0x2 -> :sswitch_2b
        0x4 -> :sswitch_29
        0x8 -> :sswitch_27
        0x10 -> :sswitch_25
        0x20 -> :sswitch_23
        0x40 -> :sswitch_21
        0x80 -> :sswitch_1f
        0x100 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static mandatorySystemGestures()I
    .registers 1

    .line 1917
    const/16 v0, 0x20

    return v0
.end method

.method public static navigationBars()I
    .registers 1

    .line 1871
    const/4 v0, 0x2

    return v0
.end method

.method public static statusBars()I
    .registers 1

    .line 1863
    const/4 v0, 0x1

    return v0
.end method

.method public static systemBars()I
    .registers 1

    .line 1949
    const/4 v0, 0x7

    return v0
.end method

.method public static systemGestures()I
    .registers 1

    .line 1909
    const/16 v0, 0x10

    return v0
.end method

.method public static tappableElement()I
    .registers 1

    .line 1925
    const/16 v0, 0x40

    return v0
.end method
