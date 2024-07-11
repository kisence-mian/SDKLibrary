.class public Landroidx/appcompat/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "integer"
.end annotation


# static fields
.field public static abc_config_activityDefaultDur:I

.field public static abc_config_activityShortDur:I

.field public static cancel_button_image_alpha:I

.field public static config_tooltipAnimTime:I

.field public static status_bar_notification_info_maxnum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 723
    const v0, 0x7f0d0001

    sput v0, Landroidx/appcompat/R$integer;->abc_config_activityDefaultDur:I

    .line 724
    const v0, 0x7f0d0002

    sput v0, Landroidx/appcompat/R$integer;->abc_config_activityShortDur:I

    .line 725
    const v0, 0x7f0d0003

    sput v0, Landroidx/appcompat/R$integer;->cancel_button_image_alpha:I

    .line 726
    const v0, 0x7f0d0004

    sput v0, Landroidx/appcompat/R$integer;->config_tooltipAnimTime:I

    .line 727
    const v0, 0x7f0d0005

    sput v0, Landroidx/appcompat/R$integer;->status_bar_notification_info_maxnum:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
