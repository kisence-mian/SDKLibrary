.class final Lcom/tapsdk/moment/TapMoment$5;
.super Ljava/lang/Object;
.source "TapMoment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/TapMoment;->closeMoment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 439
    invoke-static {}, Lcom/tapsdk/moment/view/BottomSheet;->dismissWhenShow()V

    .line 440
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->closeMomentDialog()V

    .line 441
    return-void
.end method
