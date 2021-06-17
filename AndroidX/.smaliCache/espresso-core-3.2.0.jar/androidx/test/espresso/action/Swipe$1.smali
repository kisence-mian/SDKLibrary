.class final enum Landroidx/test/espresso/action/Swipe$1;
.super Landroidx/test/espresso/action/Swipe;
.source "Swipe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/Swipe;
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

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/action/Swipe;-><init>(Ljava/lang/String;ILandroidx/test/espresso/action/Swipe$1;)V

    return-void
.end method


# virtual methods
.method public sendSwipe(Landroidx/test/espresso/UiController;[F[F[F)Landroidx/test/espresso/action/Swiper$Status;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uiController",
            "startCoordinates",
            "endCoordinates",
            "precision"
        }
    .end annotation

    .line 38
    const/16 v0, 0x96

    # invokes: Landroidx/test/espresso/action/Swipe;->sendLinearSwipe(Landroidx/test/espresso/UiController;[F[F[FI)Landroidx/test/espresso/action/Swiper$Status;
    invoke-static {p1, p2, p3, p4, v0}, Landroidx/test/espresso/action/Swipe;->access$100(Landroidx/test/espresso/UiController;[F[F[FI)Landroidx/test/espresso/action/Swiper$Status;

    move-result-object p1

    return-object p1
.end method
