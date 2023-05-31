.class public final Lcom/ss/android/downloadad/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadad/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static appdownloader_action_bg:I

.field public static appdownloader_ad_detail_download_progress:I

.field public static appdownloader_detail_download_progress_bar_horizontal:I

.field public static appdownloader_detail_download_success_bg:I

.field public static appdownloader_download_progress_bar_horizontal:I

.field public static appdownloader_download_progress_bar_horizontal_night:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$drawable;->appdownloader_action_bg:I

    sput v0, Lcom/ss/android/downloadad/R$drawable;->appdownloader_action_bg:I

    .line 21
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$drawable;->appdownloader_ad_detail_download_progress:I

    sput v0, Lcom/ss/android/downloadad/R$drawable;->appdownloader_ad_detail_download_progress:I

    .line 22
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$drawable;->appdownloader_detail_download_progress_bar_horizontal:I

    sput v0, Lcom/ss/android/downloadad/R$drawable;->appdownloader_detail_download_progress_bar_horizontal:I

    .line 23
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$drawable;->appdownloader_detail_download_success_bg:I

    sput v0, Lcom/ss/android/downloadad/R$drawable;->appdownloader_detail_download_success_bg:I

    .line 24
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$drawable;->appdownloader_download_progress_bar_horizontal:I

    sput v0, Lcom/ss/android/downloadad/R$drawable;->appdownloader_download_progress_bar_horizontal:I

    .line 25
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$drawable;->appdownloader_download_progress_bar_horizontal_night:I

    sput v0, Lcom/ss/android/downloadad/R$drawable;->appdownloader_download_progress_bar_horizontal_night:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
