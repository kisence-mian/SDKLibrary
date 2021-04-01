.class public Lcom/bun/miitmdid/core/MdidSdk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/SupplierListener;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private _InnerListener:Lcom/bun/supplier/IIdentifierListener;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private _setting:Lcom/bun/miitmdid/a/b;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Lcom/bun/lib/a;->a(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "mdidsdk"

    const-string v2, "extractor exception!"

    invoke-static {v1, v2, v0}, Lcom/bun/lib/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public constructor <init>(Z)V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-static {p1}, Lcom/bun/lib/a;->a(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    const-string v1, "mdidsdk"

    const-string v2, "extractor exception!"

    invoke-static {v1, v2, v0}, Lcom/bun/lib/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private native _InnerFailed(ILcom/bun/supplier/IdSupplier;)I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native InitSdk(Landroid/content/Context;Lcom/bun/supplier/IIdentifierListener;)I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native OnSupport(ZLcom/bun/supplier/IdSupplier;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native UnInitSdk()V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
