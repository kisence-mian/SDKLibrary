.class public interface abstract Landroidx/test/espresso/action/Tapper;
.super Ljava/lang/Object;
.source "Tapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/action/Tapper$Status;
    }
.end annotation


# virtual methods
.method public abstract sendTap(Landroidx/test/espresso/UiController;[F[F)Landroidx/test/espresso/action/Tapper$Status;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uiController",
            "coordinates",
            "precision"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendTap(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/Tapper$Status;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uiController",
            "coordinates",
            "precision",
            "inputDevice",
            "buttonState"
        }
    .end annotation
.end method
