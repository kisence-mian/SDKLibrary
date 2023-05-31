.class public Lcom/tds/common/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/R;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/tds/common/R$layout;->tds_common_permission_forward_setting:I

    .line 56
    sput v0, Lcom/tds/common/R$layout;->tds_common_view_alert:I

    .line 57
    sput v0, Lcom/tds/common/R$layout;->tds_common_view_preloading:I

    .line 58
    sput v0, Lcom/tds/common/R$layout;->tds_common_view_refresh_area:I

    .line 59
    sput v0, Lcom/tds/common/R$layout;->tds_common_view_toast:I

    .line 60
    sput v0, Lcom/tds/common/R$layout;->tds_common_view_toast_message:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
