.class public Lcom/taptap/sdk/TapTapSdk$Config;
.super Ljava/lang/Object;
.source "TapTapSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/TapTapSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public appid:Ljava/lang/String;

.field public locale:Ljava/util/Locale;

.field public orientation:I

.field public site:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/taptap/sdk/TapTapSdk$Config;->appid:Ljava/lang/String;

    .line 97
    sget v0, Lcom/taptap/sdk/TapTapSdk;->ORIENTATION_LANDSCAPE:I

    iput v0, p0, Lcom/taptap/sdk/TapTapSdk$Config;->orientation:I

    .line 98
    iput-object v1, p0, Lcom/taptap/sdk/TapTapSdk$Config;->uri:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/taptap/sdk/TapTapSdk$Config;->locale:Ljava/util/Locale;

    .line 100
    const-string v0, "cn"

    iput-object v0, p0, Lcom/taptap/sdk/TapTapSdk$Config;->site:Ljava/lang/String;

    return-void
.end method
