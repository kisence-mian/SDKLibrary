.class public Lcom/tapsdk/moment/TapMoment$Config;
.super Ljava/lang/Object;
.source "TapMoment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/TapMoment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public orientation:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    sget v0, Lcom/tapsdk/moment/TapMoment;->ORIENTATION_DEFAULT:I

    iput v0, p0, Lcom/tapsdk/moment/TapMoment$Config;->orientation:I

    return-void
.end method


# virtual methods
.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 493
    iput p1, p0, Lcom/tapsdk/moment/TapMoment$Config;->orientation:I

    .line 494
    return-void
.end method
