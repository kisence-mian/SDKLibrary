.class public Lcom/bun/supplier/DefaultSupplier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/IdSupplier;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAAID()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getOAID()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getVAID()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public isSupported()Z
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
