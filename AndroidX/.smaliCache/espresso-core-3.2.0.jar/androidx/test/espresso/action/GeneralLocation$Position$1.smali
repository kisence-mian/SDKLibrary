.class final enum Landroidx/test/espresso/action/GeneralLocation$Position$1;
.super Landroidx/test/espresso/action/GeneralLocation$Position;
.source "GeneralLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/GeneralLocation$Position;
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

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/action/GeneralLocation$Position;-><init>(Ljava/lang/String;ILandroidx/test/espresso/action/GeneralLocation$1;)V

    return-void
.end method


# virtual methods
.method public getPosition(II)F
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewPos",
            "viewLength"
        }
    .end annotation

    .line 119
    int-to-float p1, p1

    return p1
.end method
