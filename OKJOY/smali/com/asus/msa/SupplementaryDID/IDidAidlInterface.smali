.class public interface abstract Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/msa/SupplementaryDID/IDidAidlInterface$Stub;,
        Lcom/asus/msa/SupplementaryDID/IDidAidlInterface$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract a()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public abstract getAAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public abstract getOAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public abstract getUDID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public abstract getVAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
