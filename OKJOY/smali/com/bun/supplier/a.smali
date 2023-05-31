.class public Lcom/bun/supplier/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/InnerIdSupplier;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native a(Lcom/bun/supplier/SupplierListener;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getAAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getOAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getUDID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getVAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native isSupported()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native shutDown()V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
