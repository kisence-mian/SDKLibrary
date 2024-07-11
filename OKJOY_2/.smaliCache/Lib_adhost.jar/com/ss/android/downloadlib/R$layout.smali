.class public final Lcom/ss/android/downloadlib/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static tt_appdownloader_notification_layout:I

.field public static ttdownloader_activity_app_detail_info:I

.field public static ttdownloader_activity_app_privacy_policy:I

.field public static ttdownloader_dialog_appinfo:I

.field public static ttdownloader_dialog_select_operation:I

.field public static ttdownloader_item_permission:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$layout;->tt_appdownloader_notification_layout:I

    sput v0, Lcom/ss/android/downloadlib/R$layout;->tt_appdownloader_notification_layout:I

    .line 71
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$layout;->ttdownloader_activity_app_detail_info:I

    sput v0, Lcom/ss/android/downloadlib/R$layout;->ttdownloader_activity_app_detail_info:I

    .line 72
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$layout;->ttdownloader_activity_app_privacy_policy:I

    sput v0, Lcom/ss/android/downloadlib/R$layout;->ttdownloader_activity_app_privacy_policy:I

    .line 73
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$layout;->ttdownloader_dialog_appinfo:I

    sput v0, Lcom/ss/android/downloadlib/R$layout;->ttdownloader_dialog_appinfo:I

    .line 74
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$layout;->ttdownloader_dialog_select_operation:I

    sput v0, Lcom/ss/android/downloadlib/R$layout;->ttdownloader_dialog_select_operation:I

    .line 75
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$layout;->ttdownloader_item_permission:I

    sput v0, Lcom/ss/android/downloadlib/R$layout;->ttdownloader_item_permission:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
