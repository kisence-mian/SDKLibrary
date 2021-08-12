.class public final Lcom/kwad/sdk/api/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final ksad_notification_download_completed:I

.field public static final ksad_notification_download_progress:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    sget v0, Lcom/kwad/sdk/R$layout;->ksad_notification_download_completed:I

    sput v0, Lcom/kwad/sdk/api/R$layout;->ksad_notification_download_completed:I

    .line 22
    sget v0, Lcom/kwad/sdk/R$layout;->ksad_notification_download_progress:I

    sput v0, Lcom/kwad/sdk/api/R$layout;->ksad_notification_download_progress:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
