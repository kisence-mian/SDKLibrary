.class public Lcom/anythink/nativead/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/nativead/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "layout"
.end annotation


# static fields
.field public static anythink_plugin_banner_320x50:I

.field public static anythink_plugin_banner_640x150:I

.field public static anythink_plugin_banner_auto:I

.field public static anythink_plugin_splash_ad_layout:I

.field public static anythink_plugin_splash_view_layout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const v0, 0x7f0e0001

    sput v0, Lcom/anythink/nativead/R$layout;->anythink_plugin_banner_320x50:I

    .line 59
    const v0, 0x7f0e0002

    sput v0, Lcom/anythink/nativead/R$layout;->anythink_plugin_banner_640x150:I

    .line 60
    const v0, 0x7f0e0003

    sput v0, Lcom/anythink/nativead/R$layout;->anythink_plugin_banner_auto:I

    .line 61
    const v0, 0x7f0e0004

    sput v0, Lcom/anythink/nativead/R$layout;->anythink_plugin_splash_ad_layout:I

    .line 62
    const v0, 0x7f0e0005

    sput v0, Lcom/anythink/nativead/R$layout;->anythink_plugin_splash_view_layout:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
