.class public final Lcom/kwad/sdk/api/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final ksad_download_icon:I

.field public static final ksad_download_install:I

.field public static final ksad_download_name:I

.field public static final ksad_download_percent_num:I

.field public static final ksad_download_progress:I

.field public static final ksad_download_size:I

.field public static final ksad_download_status:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    sget v0, Lcom/kwad/sdk/R$id;->ksad_download_icon:I

    sput v0, Lcom/kwad/sdk/api/R$id;->ksad_download_icon:I

    .line 13
    sget v0, Lcom/kwad/sdk/R$id;->ksad_download_install:I

    sput v0, Lcom/kwad/sdk/api/R$id;->ksad_download_install:I

    .line 14
    sget v0, Lcom/kwad/sdk/R$id;->ksad_download_name:I

    sput v0, Lcom/kwad/sdk/api/R$id;->ksad_download_name:I

    .line 15
    sget v0, Lcom/kwad/sdk/R$id;->ksad_download_percent_num:I

    sput v0, Lcom/kwad/sdk/api/R$id;->ksad_download_percent_num:I

    .line 16
    sget v0, Lcom/kwad/sdk/R$id;->ksad_download_progress:I

    sput v0, Lcom/kwad/sdk/api/R$id;->ksad_download_progress:I

    .line 17
    sget v0, Lcom/kwad/sdk/R$id;->ksad_download_size:I

    sput v0, Lcom/kwad/sdk/api/R$id;->ksad_download_size:I

    .line 18
    sget v0, Lcom/kwad/sdk/R$id;->ksad_download_status:I

    sput v0, Lcom/kwad/sdk/api/R$id;->ksad_download_status:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
