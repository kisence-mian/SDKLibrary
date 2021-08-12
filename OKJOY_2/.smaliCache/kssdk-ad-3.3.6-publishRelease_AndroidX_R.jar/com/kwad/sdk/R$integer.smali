.class public Lcom/kwad/sdk/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/R;
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

    .line 1020
    const v0, 0x7f0c0001

    sput v0, Lcom/kwad/sdk/R$integer;->abc_config_activityDefaultDur:I

    .line 1021
    const v0, 0x7f0c0002

    sput v0, Lcom/kwad/sdk/R$integer;->abc_config_activityShortDur:I

    .line 1022
    const v0, 0x7f0c0003

    sput v0, Lcom/kwad/sdk/R$integer;->cancel_button_image_alpha:I

    .line 1023
    const v0, 0x7f0c0004

    sput v0, Lcom/kwad/sdk/R$integer;->config_tooltipAnimTime:I

    .line 1024
    const v0, 0x7f0c0005

    sput v0, Lcom/kwad/sdk/R$integer;->status_bar_notification_info_maxnum:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
