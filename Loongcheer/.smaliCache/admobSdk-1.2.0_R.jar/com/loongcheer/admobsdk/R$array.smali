.class public Lcom/loongcheer/admobsdk/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "array"
.end annotation


# static fields
.field public static cast_expanded_controller_default_control_buttons:I

.field public static cast_mini_controller_default_control_buttons:I

.field public static exo_playback_speeds:I

.field public static exo_speed_multiplied_by_100:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/loongcheer/admobsdk/R$array;->cast_expanded_controller_default_control_buttons:I

    .line 45
    sput v0, Lcom/loongcheer/admobsdk/R$array;->cast_mini_controller_default_control_buttons:I

    .line 46
    sput v0, Lcom/loongcheer/admobsdk/R$array;->exo_playback_speeds:I

    .line 47
    sput v0, Lcom/loongcheer/admobsdk/R$array;->exo_speed_multiplied_by_100:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
