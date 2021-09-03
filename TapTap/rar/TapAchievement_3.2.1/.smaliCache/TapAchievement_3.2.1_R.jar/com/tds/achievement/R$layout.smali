.class public Lcom/tds/achievement/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/achievement/R;
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

    .line 83
    const/4 v0, 0x0

    sput v0, Lcom/tds/achievement/R$layout;->tds_common_permission_forward_setting:I

    .line 84
    sput v0, Lcom/tds/achievement/R$layout;->tds_common_view_alert:I

    .line 85
    sput v0, Lcom/tds/achievement/R$layout;->tds_common_view_preloading:I

    .line 86
    sput v0, Lcom/tds/achievement/R$layout;->tds_common_view_refresh_area:I

    .line 87
    sput v0, Lcom/tds/achievement/R$layout;->tds_common_view_toast:I

    .line 88
    sput v0, Lcom/tds/achievement/R$layout;->tds_common_view_toast_message:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
