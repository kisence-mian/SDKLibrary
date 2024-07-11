.class public final Lcom/kwad/sdk/api/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static final ksad_default_app_icon:I

.field public static final ksad_notification_default_icon:I

.field public static final ksad_notification_install_bg:I

.field public static final ksad_notification_progress:I

.field public static final ksad_notification_small_icon:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5
    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_default_app_icon:I

    sput v0, Lcom/kwad/sdk/api/R$drawable;->ksad_default_app_icon:I

    .line 6
    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_notification_default_icon:I

    sput v0, Lcom/kwad/sdk/api/R$drawable;->ksad_notification_default_icon:I

    .line 7
    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_notification_install_bg:I

    sput v0, Lcom/kwad/sdk/api/R$drawable;->ksad_notification_install_bg:I

    .line 8
    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_notification_progress:I

    sput v0, Lcom/kwad/sdk/api/R$drawable;->ksad_notification_progress:I

    .line 9
    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_notification_small_icon:I

    sput v0, Lcom/kwad/sdk/api/R$drawable;->ksad_notification_small_icon:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
