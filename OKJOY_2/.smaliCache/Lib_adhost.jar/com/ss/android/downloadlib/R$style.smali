.class public final Lcom/ss/android/downloadlib/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/R;
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

.field public static ttdownloader_translucent_dialog:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 129
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->tt_appdownloader_style_detail_download_progress_bar:I

    sput v0, Lcom/ss/android/downloadlib/R$style;->tt_appdownloader_style_detail_download_progress_bar:I

    .line 130
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->tt_appdownloader_style_notification_text:I

    sput v0, Lcom/ss/android/downloadlib/R$style;->tt_appdownloader_style_notification_text:I

    .line 131
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->tt_appdownloader_style_notification_title:I

    sput v0, Lcom/ss/android/downloadlib/R$style;->tt_appdownloader_style_notification_title:I

    .line 132
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->tt_appdownloader_style_progress_bar:I

    sput v0, Lcom/ss/android/downloadlib/R$style;->tt_appdownloader_style_progress_bar:I

    .line 133
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->tt_appdownloader_style_progress_bar_new:I

    sput v0, Lcom/ss/android/downloadlib/R$style;->tt_appdownloader_style_progress_bar_new:I

    .line 134
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->ttdownloader_translucent_dialog:I

    sput v0, Lcom/ss/android/downloadlib/R$style;->ttdownloader_translucent_dialog:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
