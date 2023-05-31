.class final Lcom/taptap/pay/sdk/library/TapTapLicense$4;
.super Ljava/lang/Object;
.source "TapTapLicense.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/TapTapLicense;->notifyLicenseSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 146
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    # getter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->licenseCallback:Lcom/taptap/pay/sdk/library/TapLicenseCallback;
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$400(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/TapLicenseCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/taptap/pay/sdk/library/TapLicenseCallback;->onLicenseSuccess()V

    .line 147
    return-void
.end method
