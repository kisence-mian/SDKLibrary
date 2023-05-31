.class public Lcom/tapsdk/moment/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "layout"
.end annotation


# static fields
.field public static tds_common_permission_forward_setting:I

.field public static tds_common_view_alert:I

.field public static tds_common_view_preloading:I

.field public static tds_common_view_refresh_area:I

.field public static tds_common_view_toast:I

.field public static tds_common_view_toast_message:I

.field public static ttos_moment_activity_container:I

.field public static ttos_moment_dialog_alert:I

.field public static ttos_moment_dialog_bottom_sheet:I

.field public static ttos_moment_fragment_moment:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 97
    const/4 v0, 0x0

    sput v0, Lcom/tapsdk/moment/R$layout;->tds_common_permission_forward_setting:I

    .line 98
    sput v0, Lcom/tapsdk/moment/R$layout;->tds_common_view_alert:I

    .line 99
    sput v0, Lcom/tapsdk/moment/R$layout;->tds_common_view_preloading:I

    .line 100
    sput v0, Lcom/tapsdk/moment/R$layout;->tds_common_view_refresh_area:I

    .line 101
    sput v0, Lcom/tapsdk/moment/R$layout;->tds_common_view_toast:I

    .line 102
    sput v0, Lcom/tapsdk/moment/R$layout;->tds_common_view_toast_message:I

    .line 103
    sput v0, Lcom/tapsdk/moment/R$layout;->ttos_moment_activity_container:I

    .line 104
    sput v0, Lcom/tapsdk/moment/R$layout;->ttos_moment_dialog_alert:I

    .line 105
    sput v0, Lcom/tapsdk/moment/R$layout;->ttos_moment_dialog_bottom_sheet:I

    .line 106
    sput v0, Lcom/tapsdk/moment/R$layout;->ttos_moment_fragment_moment:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
