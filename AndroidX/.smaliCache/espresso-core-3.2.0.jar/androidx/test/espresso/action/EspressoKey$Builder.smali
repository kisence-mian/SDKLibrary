.class public Landroidx/test/espresso/action/EspressoKey$Builder;
.super Ljava/lang/Object;
.source "EspressoKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/EspressoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private builderKeyCode:I

.field private isAltPressed:Z

.field private isCtrlPressed:Z

.field private isShiftPressed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->builderKeyCode:I

    return-void
.end method

.method static synthetic access$000(Landroidx/test/espresso/action/EspressoKey$Builder;)I
    .registers 1

    .line 59
    iget p0, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->builderKeyCode:I

    return p0
.end method

.method static synthetic access$100(Landroidx/test/espresso/action/EspressoKey$Builder;)I
    .registers 1

    .line 59
    invoke-direct {p0}, Landroidx/test/espresso/action/EspressoKey$Builder;->getMetaState()I

    move-result p0

    return p0
.end method

.method private getMetaState()I
    .registers 4

    .line 92
    nop

    .line 93
    iget-boolean v0, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->isShiftPressed:Z

    if-eqz v0, :cond_7

    .line 94
    const/4 v0, 0x1

    goto :goto_8

    .line 93
    :cond_7
    const/4 v0, 0x0

    .line 97
    :goto_8
    iget-boolean v1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->isAltPressed:Z

    if-eqz v1, :cond_e

    .line 98
    or-int/lit8 v0, v0, 0x2

    .line 101
    :cond_e
    iget-boolean v1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->isCtrlPressed:Z

    if-eqz v1, :cond_1a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1a

    .line 102
    or-int/lit16 v0, v0, 0x1000

    .line 105
    :cond_1a
    return v0
.end method


# virtual methods
.method public build()Landroidx/test/espresso/action/EspressoKey;
    .registers 4

    .line 109
    iget v0, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->builderKeyCode:I

    if-lez v0, :cond_c

    .line 110
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget v1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->builderKeyCode:I

    .line 109
    const-string v2, "Invalid key code: %s"

    invoke-static {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 113
    new-instance v0, Landroidx/test/espresso/action/EspressoKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/action/EspressoKey;-><init>(Landroidx/test/espresso/action/EspressoKey$Builder;Landroidx/test/espresso/action/EspressoKey$1;)V

    return-object v0
.end method

.method public withAltPressed(Z)Landroidx/test/espresso/action/EspressoKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "altPressed"
        }
    .end annotation

    .line 87
    iput-boolean p1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->isAltPressed:Z

    .line 88
    return-object p0
.end method

.method public withCtrlPressed(Z)Landroidx/test/espresso/action/EspressoKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctrlPressed"
        }
    .end annotation

    .line 81
    iput-boolean p1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->isCtrlPressed:Z

    .line 82
    return-object p0
.end method

.method public withKeyCode(I)Landroidx/test/espresso/action/EspressoKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    .line 66
    iput p1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->builderKeyCode:I

    .line 67
    return-object p0
.end method

.method public withShiftPressed(Z)Landroidx/test/espresso/action/EspressoKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shiftPressed"
        }
    .end annotation

    .line 72
    iput-boolean p1, p0, Landroidx/test/espresso/action/EspressoKey$Builder;->isShiftPressed:Z

    .line 73
    return-object p0
.end method
