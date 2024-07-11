.class public Lcom/loongcheer/admobsdk/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bool"
.end annotation


# static fields
.field public static abc_action_bar_embed_tabs:I

.field public static abc_allow_stacked_button_bar:I

.field public static abc_config_actionMenuItemAllCaps:I

.field public static config_materialPreferenceIconSpaceReserved:I

.field public static enable_system_alarm_service_default:I

.field public static enable_system_job_service_default:I

.field public static workmanager_test_configuration:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 567
    const/4 v0, 0x0

    sput v0, Lcom/loongcheer/admobsdk/R$bool;->abc_action_bar_embed_tabs:I

    .line 568
    sput v0, Lcom/loongcheer/admobsdk/R$bool;->abc_allow_stacked_button_bar:I

    .line 569
    sput v0, Lcom/loongcheer/admobsdk/R$bool;->abc_config_actionMenuItemAllCaps:I

    .line 570
    sput v0, Lcom/loongcheer/admobsdk/R$bool;->config_materialPreferenceIconSpaceReserved:I

    .line 571
    sput v0, Lcom/loongcheer/admobsdk/R$bool;->enable_system_alarm_service_default:I

    .line 572
    sput v0, Lcom/loongcheer/admobsdk/R$bool;->enable_system_job_service_default:I

    .line 573
    sput v0, Lcom/loongcheer/admobsdk/R$bool;->workmanager_test_configuration:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
