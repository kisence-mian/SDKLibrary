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
.field public static appdownloader_notification_layout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$layout;->appdownloader_notification_layout:I

    sput v0, Lcom/ss/android/downloadlib/R$layout;->appdownloader_notification_layout:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
