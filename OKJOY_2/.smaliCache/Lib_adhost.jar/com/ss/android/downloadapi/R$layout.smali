.class public final Lcom/ss/android/downloadapi/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadapi/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static tt_appdownloader_notification_layout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$layout;->tt_appdownloader_notification_layout:I

    sput v0, Lcom/ss/android/downloadapi/R$layout;->tt_appdownloader_notification_layout:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
