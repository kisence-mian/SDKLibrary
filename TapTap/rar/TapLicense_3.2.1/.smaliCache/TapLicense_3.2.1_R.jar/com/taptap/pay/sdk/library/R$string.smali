.class public Lcom/taptap/pay/sdk/library/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/pay/sdk/library/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "string"
.end annotation


# static fields
.field public static dialog_choose_tap_cn:I

.field public static dialog_choose_tap_global:I

.field public static dialog_choose_title:I

.field public static taptap_alert_download_taptap:I

.field public static taptap_alert_license_no:I

.field public static taptap_string_checking_license:I

.field public static taptap_string_download_taptap:I

.field public static taptap_string_open_taptap:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/taptap/pay/sdk/library/R$string;->dialog_choose_tap_cn:I

    .line 92
    sput v0, Lcom/taptap/pay/sdk/library/R$string;->dialog_choose_tap_global:I

    .line 93
    sput v0, Lcom/taptap/pay/sdk/library/R$string;->dialog_choose_title:I

    .line 94
    sput v0, Lcom/taptap/pay/sdk/library/R$string;->taptap_alert_download_taptap:I

    .line 95
    sput v0, Lcom/taptap/pay/sdk/library/R$string;->taptap_alert_license_no:I

    .line 96
    sput v0, Lcom/taptap/pay/sdk/library/R$string;->taptap_string_checking_license:I

    .line 97
    sput v0, Lcom/taptap/pay/sdk/library/R$string;->taptap_string_download_taptap:I

    .line 98
    sput v0, Lcom/taptap/pay/sdk/library/R$string;->taptap_string_open_taptap:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
