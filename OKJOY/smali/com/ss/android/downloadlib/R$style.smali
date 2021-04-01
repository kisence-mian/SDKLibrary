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
.field public static appdownloader_style_detail_download_progress_bar:I

.field public static appdownloader_style_notification_text:I

.field public static appdownloader_style_notification_title:I

.field public static appdownloader_style_progress_bar:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->appdownloader_style_detail_download_progress_bar:I

    sput v0, Lcom/ss/android/downloadlib/R$style;->appdownloader_style_detail_download_progress_bar:I

    .line 86
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->appdownloader_style_notification_text:I

    sput v0, Lcom/ss/android/downloadlib/R$style;->appdownloader_style_notification_text:I

    .line 87
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->appdownloader_style_notification_title:I

    sput v0, Lcom/ss/android/downloadlib/R$style;->appdownloader_style_notification_title:I

    .line 88
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->appdownloader_style_progress_bar:I

    sput v0, Lcom/ss/android/downloadlib/R$style;->appdownloader_style_progress_bar:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
