.class public Lcom/taptap/sdk/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "layout"
.end annotation


# static fields
.field public static fragment_login:I

.field public static fragment_webview_login:I

.field public static sdk_activity_container:I

.field public static tds_common_permission_forward_setting:I

.field public static tds_common_view_alert:I

.field public static tds_common_view_preloading:I

.field public static tds_common_view_refresh_area:I

.field public static tds_common_view_toast:I

.field public static tds_common_view_toast_message:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const/4 v0, 0x0

    sput v0, Lcom/taptap/sdk/R$layout;->fragment_login:I

    .line 65
    sput v0, Lcom/taptap/sdk/R$layout;->fragment_webview_login:I

    .line 66
    sput v0, Lcom/taptap/sdk/R$layout;->sdk_activity_container:I

    .line 67
    sput v0, Lcom/taptap/sdk/R$layout;->tds_common_permission_forward_setting:I

    .line 68
    sput v0, Lcom/taptap/sdk/R$layout;->tds_common_view_alert:I

    .line 69
    sput v0, Lcom/taptap/sdk/R$layout;->tds_common_view_preloading:I

    .line 70
    sput v0, Lcom/taptap/sdk/R$layout;->tds_common_view_refresh_area:I

    .line 71
    sput v0, Lcom/taptap/sdk/R$layout;->tds_common_view_toast:I

    .line 72
    sput v0, Lcom/taptap/sdk/R$layout;->tds_common_view_toast_message:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
