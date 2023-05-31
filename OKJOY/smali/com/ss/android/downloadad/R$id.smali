.class public final Lcom/ss/android/downloadad/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadad/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static appdownloader_action:I

.field public static appdownloader_desc:I

.field public static appdownloader_download_progress:I

.field public static appdownloader_download_size:I

.field public static appdownloader_download_status:I

.field public static appdownloader_download_success:I

.field public static appdownloader_download_success_size:I

.field public static appdownloader_download_success_status:I

.field public static appdownloader_download_text:I

.field public static appdownloader_icon:I

.field public static appdownloader_root:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->appdownloader_action:I

    sput v0, Lcom/ss/android/downloadad/R$id;->appdownloader_action:I

    .line 29
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->appdownloader_desc:I

    sput v0, Lcom/ss/android/downloadad/R$id;->appdownloader_desc:I

    .line 30
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->appdownloader_download_progress:I

    sput v0, Lcom/ss/android/downloadad/R$id;->appdownloader_download_progress:I

    .line 31
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->appdownloader_download_size:I

    sput v0, Lcom/ss/android/downloadad/R$id;->appdownloader_download_size:I

    .line 32
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->appdownloader_download_status:I

    sput v0, Lcom/ss/android/downloadad/R$id;->appdownloader_download_status:I

    .line 33
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->appdownloader_download_success:I

    sput v0, Lcom/ss/android/downloadad/R$id;->appdownloader_download_success:I

    .line 34
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->appdownloader_download_success_size:I

    sput v0, Lcom/ss/android/downloadad/R$id;->appdownloader_download_success_size:I

    .line 35
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->appdownloader_download_success_status:I

    sput v0, Lcom/ss/android/downloadad/R$id;->appdownloader_download_success_status:I

    .line 36
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->appdownloader_download_text:I

    sput v0, Lcom/ss/android/downloadad/R$id;->appdownloader_download_text:I

    .line 37
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->appdownloader_icon:I

    sput v0, Lcom/ss/android/downloadad/R$id;->appdownloader_icon:I

    .line 38
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->appdownloader_root:I

    sput v0, Lcom/ss/android/downloadad/R$id;->appdownloader_root:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
