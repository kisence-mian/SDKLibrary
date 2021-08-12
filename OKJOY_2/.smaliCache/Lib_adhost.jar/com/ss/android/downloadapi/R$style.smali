.class public final Lcom/ss/android/downloadapi/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadapi/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static tt_appdownloader_style_detail_download_progress_bar:I

.field public static tt_appdownloader_style_notification_text:I

.field public static tt_appdownloader_style_notification_title:I

.field public static tt_appdownloader_style_progress_bar:I

.field public static tt_appdownloader_style_progress_bar_new:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->tt_appdownloader_style_detail_download_progress_bar:I

    sput v0, Lcom/ss/android/downloadapi/R$style;->tt_appdownloader_style_detail_download_progress_bar:I

    .line 92
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->tt_appdownloader_style_notification_text:I

    sput v0, Lcom/ss/android/downloadapi/R$style;->tt_appdownloader_style_notification_text:I

    .line 93
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->tt_appdownloader_style_notification_title:I

    sput v0, Lcom/ss/android/downloadapi/R$style;->tt_appdownloader_style_notification_title:I

    .line 94
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->tt_appdownloader_style_progress_bar:I

    sput v0, Lcom/ss/android/downloadapi/R$style;->tt_appdownloader_style_progress_bar:I

    .line 95
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->tt_appdownloader_style_progress_bar_new:I

    sput v0, Lcom/ss/android/downloadapi/R$style;->tt_appdownloader_style_progress_bar_new:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
