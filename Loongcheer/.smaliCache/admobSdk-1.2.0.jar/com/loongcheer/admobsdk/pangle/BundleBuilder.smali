.class public final Lcom/loongcheer/admobsdk/pangle/BundleBuilder;
.super Ljava/lang/Object;
.source "BundleBuilder.java"


# static fields
.field public static final AD_GDPR:Ljava/lang/String; = "gdpr"

.field public static final AD_HEIGHT:Ljava/lang/String; = "ad_height"

.field public static final AD_WIDTH:Ljava/lang/String; = "ad_width"

.field public static final KEY_AD_PLACEMENT_ID:Ljava/lang/String; = "ad_placement_id"


# instance fields
.field private codeId:Ljava/lang/String;

.field private gdpr:I

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/loongcheer/admobsdk/pangle/BundleBuilder;->gdpr:I

    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .registers 4

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Lcom/loongcheer/admobsdk/pangle/BundleBuilder;->gdpr:I

    const-string v2, "gdpr"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    iget v1, p0, Lcom/loongcheer/admobsdk/pangle/BundleBuilder;->height:I

    const-string v2, "ad_height"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    iget v1, p0, Lcom/loongcheer/admobsdk/pangle/BundleBuilder;->width:I

    const-string v2, "ad_width"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    iget-object v1, p0, Lcom/loongcheer/admobsdk/pangle/BundleBuilder;->codeId:Ljava/lang/String;

    const-string v2, "ad_placement_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-object v0
.end method

.method public setCodeId(Ljava/lang/String;)Lcom/loongcheer/admobsdk/pangle/BundleBuilder;
    .registers 2
    .param p1, "codeId"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/BundleBuilder;->codeId:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public setGdpr(I)Lcom/loongcheer/admobsdk/pangle/BundleBuilder;
    .registers 2
    .param p1, "gdpr"    # I

    .line 40
    iput p1, p0, Lcom/loongcheer/admobsdk/pangle/BundleBuilder;->gdpr:I

    .line 41
    return-object p0
.end method

.method public setHeight(I)Lcom/loongcheer/admobsdk/pangle/BundleBuilder;
    .registers 2
    .param p1, "height"    # I

    .line 30
    iput p1, p0, Lcom/loongcheer/admobsdk/pangle/BundleBuilder;->height:I

    .line 31
    return-object p0
.end method

.method public setWidth(I)Lcom/loongcheer/admobsdk/pangle/BundleBuilder;
    .registers 2
    .param p1, "width"    # I

    .line 25
    iput p1, p0, Lcom/loongcheer/admobsdk/pangle/BundleBuilder;->width:I

    .line 26
    return-object p0
.end method
