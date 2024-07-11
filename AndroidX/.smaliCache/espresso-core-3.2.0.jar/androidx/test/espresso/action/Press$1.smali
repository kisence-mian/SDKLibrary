.class final enum Landroidx/test/espresso/action/Press$1;
.super Landroidx/test/espresso/action/Press;
.source "Press.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/Press;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/action/Press;-><init>(Ljava/lang/String;ILandroidx/test/espresso/action/Press$1;)V

    return-void
.end method


# virtual methods
.method public describePrecision()[F
    .registers 2

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    .line 25
    return-object v0

    nop

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
