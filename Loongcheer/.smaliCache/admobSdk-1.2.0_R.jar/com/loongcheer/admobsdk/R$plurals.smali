.class public Lcom/loongcheer/admobsdk/R$plurals;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "plurals"
.end annotation


# static fields
.field public static exo_controls_fastforward_by_amount_description:I

.field public static exo_controls_rewind_by_amount_description:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2418
    const/4 v0, 0x0

    sput v0, Lcom/loongcheer/admobsdk/R$plurals;->exo_controls_fastforward_by_amount_description:I

    .line 2419
    sput v0, Lcom/loongcheer/admobsdk/R$plurals;->exo_controls_rewind_by_amount_description:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
