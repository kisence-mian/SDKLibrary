.class public Landroidx/test/espresso/action/MotionEvents$DownResultHolder;
.super Ljava/lang/Object;
.source "MotionEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/MotionEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownResultHolder"
.end annotation


# instance fields
.field public final down:Landroid/view/MotionEvent;

.field public final longPress:Z


# direct methods
.method constructor <init>(Landroid/view/MotionEvent;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "down",
            "longPress"
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p1, p0, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;->down:Landroid/view/MotionEvent;

    .line 393
    iput-boolean p2, p0, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;->longPress:Z

    .line 394
    return-void
.end method
