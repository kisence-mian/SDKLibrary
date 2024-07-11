.class final enum Landroidx/test/espresso/action/GeneralLocation$5;
.super Landroidx/test/espresso/action/GeneralLocation;
.source "GeneralLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/GeneralLocation;
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

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/action/GeneralLocation;-><init>(Ljava/lang/String;ILandroidx/test/espresso/action/GeneralLocation$1;)V

    return-void
.end method


# virtual methods
.method public calculateCoordinates(Landroid/view/View;)[F
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 51
    sget-object v0, Landroidx/test/espresso/action/GeneralLocation$Position;->MIDDLE:Landroidx/test/espresso/action/GeneralLocation$Position;

    sget-object v1, Landroidx/test/espresso/action/GeneralLocation$Position;->MIDDLE:Landroidx/test/espresso/action/GeneralLocation$Position;

    # invokes: Landroidx/test/espresso/action/GeneralLocation;->getCoordinates(Landroid/view/View;Landroidx/test/espresso/action/GeneralLocation$Position;Landroidx/test/espresso/action/GeneralLocation$Position;)[F
    invoke-static {p1, v0, v1}, Landroidx/test/espresso/action/GeneralLocation;->access$100(Landroid/view/View;Landroidx/test/espresso/action/GeneralLocation$Position;Landroidx/test/espresso/action/GeneralLocation$Position;)[F

    move-result-object p1

    return-object p1
.end method
